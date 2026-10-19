# crawl_all_pages.ps1
# Crawls all LV and EN pages on liepaja-sez.lv, downloads all assets, and generates database.sql

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$BaseUrl = "https://liepaja-sez.lv"

$WebClient = New-Object System.Net.WebClient
$WebClient.Encoding = [System.Text.Encoding]::UTF8
$WebClient.Headers.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64)")

function Fetch-Html($url) {
    try {
        Write-Host "Fetching HTML: $url" -ForegroundColor Cyan
        return $WebClient.DownloadString($url)
    } catch {
        Write-Warning "Failed to fetch $url : $_"
        return $null
    }
}

function Download-Asset($relativeOrFullUrl) {
    if ([string]::IsNullOrWhiteSpace($relativeOrFullUrl)) { return }
    $cleanUrl = $relativeOrFullUrl -replace '^//liepaja-sez\.lv/', 'https://liepaja-sez.lv/'
    if ($cleanUrl.StartsWith("/")) { $cleanUrl = "$BaseUrl$cleanUrl" }
    if (-not $cleanUrl.StartsWith($BaseUrl)) { return }

    # Strip query strings like ?v=26 for local file path
    $uri = [System.Uri]$cleanUrl
    $localPath = $uri.AbsolutePath.TrimStart('/')
    if ([string]::IsNullOrWhiteSpace($localPath) -or $localPath.EndsWith("/")) { return }

    if (-not (Test-Path $localPath)) {
        $dir = Split-Path $localPath -Parent
        if ($dir -and -not (Test-Path $dir)) {
            New-Item -ItemType Directory -Force -Path $dir | Out-Null
        }
        try {
            Write-Host "  -> Downloading asset: $localPath" -ForegroundColor DarkGray
            $WebClient.DownloadFile($cleanUrl, $localPath)
        } catch {
            Write-Warning "  -> Could not download asset: $cleanUrl"
        }
    }
}

function Escape-Sql($str) {
    if ($null -eq $str) { return "" }
    return $str.Replace("\", "\\").Replace("'", "\'").Replace("`r", "").Replace("`0", "")
}

# 1. Discover all LV and EN URLs from the homepages
$seedUrls = @(
    "https://liepaja-sez.lv/lv/sakums/",
    "https://liepaja-sez.lv/en/",
    "https://liepaja-sez.lv/lv/sikdatnu-politika/"
)

$discoveredUrls = New-Object System.Collections.Generic.HashSet[string]
foreach ($u in $seedUrls) { [void]$discoveredUrls.Add($u) }

foreach ($seed in $seedUrls) {
    $html = Fetch-Html $seed
    if (-not $html) { continue }
    $hrefMatches = [regex]::Matches($html, 'href=["'']((?:https?:)?//liepaja-sez\.lv/(?:lv|en)/[^"'']+?)["'']')
    foreach ($m in $hrefMatches) {
        $link = $m.Groups[1].Value -replace '^//', 'https://'
        # Ignore file downloads or hashes
        if ($link -notmatch '\.(pdf|docx?|xlsx?|zip)$' -and $link -notmatch '#') {
            [void]$discoveredUrls.Add($link)
        }
    }
}

Write-Host "`nDiscovered $($discoveredUrls.Count) pages to crawl.`n" -ForegroundColor Green

# 2. Start building database.sql
$sqlBuilder = New-Object System.Text.StringBuilder
[void]$sqlBuilder.AppendLine("CREATE DATABASE IF NOT EXISTS liepaja_sez CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;")
[void]$sqlBuilder.AppendLine("USE liepaja_sez;")
[void]$sqlBuilder.AppendLine("DROP TABLE IF EXISTS pages;")
[void]$sqlBuilder.AppendLine(@"
CREATE TABLE pages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lang VARCHAR(5) NOT NULL,
    slug VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    html_class VARCHAR(50) DEFAULT 'blue',
    nav_html LONGTEXT NOT NULL,
    head_css LONGTEXT NOT NULL,
    main_html LONGTEXT NOT NULL,
    footer_html LONGTEXT NOT NULL,
    cc_html LONGTEXT NOT NULL,
    UNIQUE KEY unique_lang_slug (lang, slug)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
"@)

# 3. Crawl every discovered page
foreach ($pageUrl in $discoveredUrls) {
    $rawHtml = Fetch-Html $pageUrl
    if (-not $rawHtml) { continue }

    # Determine lang and slug from URL
    $lang = "lv"
    $slug = "sakums"
    if ($pageUrl -match 'liepaja-sez\.lv/(lv|en)(?:/([^/?#]+))?(?:/([^/?#]+))?') {
        $lang = $Matches[1]
        if ($Matches[3]) {
            $slug = "$($Matches[2])/$($Matches[3])"
        } elseif ($Matches[2]) {
            $slug = $Matches[2]
        } else {
            $slug = if ($lang -eq 'en') { 'home' } else { 'sakums' }
        }
    }

    # Extract <title>
    $title = "SEZ"
    if ($rawHtml -match '<title>(.*?)</title>') { $title = $Matches[1].Trim() }

    # Extract <head> stylesheets & download them
    $headCssBuilder = New-Object System.Text.StringBuilder
    $cssMatches = [regex]::Matches($rawHtml, '<link[^>]+rel=["'']stylesheet["''][^>]*>|<link[^>]+type=["'']text/css["''][^>]*>', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    foreach ($cm in $cssMatches) {
        $tag = $cm.Value
        if ($tag -match 'href=["'']([^"'']+)["'']') {
            Download-Asset $Matches[1]
        }
        [void]$headCssBuilder.AppendLine($tag)
    }

    # Extract <nav ...>...</nav>
    $navHtml = ""
    if ($rawHtml -match '(?s)(<nav class="navbar.*?</nav>)') {
        $navHtml = $Matches[1]
    }

    # Extract <main ...>...</main> (outerHTML)
    $mainHtml = ""
    if ($rawHtml -match '(?s)(<main[^>]*>.*?</main>)') {
        $mainHtml = $Matches[1]
    }

    # Extract <footer ...>...</footer>
    $footerHtml = ""
    if ($rawHtml -match '(?s)(<footer[^>]*>.*?</footer>)') {
        $footerHtml = $Matches[1]
    }

    # Extract Cookie Consent <div id="cc--main"...> if present
    $ccHtml = ""
    if ($rawHtml -match '(?s)(<div id="cc--main".*)$') {
        $ccHtml = $Matches[1] -replace '</body>\s*</html>\s*$', ''
    }

    # Download all images and JS scripts referenced on this page
    $assetMatches = [regex]::Matches($rawHtml, '(?:src|href)=["'']((?:https?:)?//liepaja-sez\.lv/[^"'']+\.(?:webp|png|jpg|jpeg|svg|ico|js|css)(?:\?[^"'']*)?)["'']', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    foreach ($am in $assetMatches) {
        Download-Asset $am.Groups[1].Value
    }
    $bgMatches = [regex]::Matches($rawHtml, 'url\(["'']?((?:https?:)?//liepaja-sez\.lv/[^"'')]+\.(?:webp|png|jpg|jpeg|svg))["'']?\)', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    foreach ($bm in $bgMatches) {
        Download-Asset $bm.Groups[1].Value
    }

    # Insert into SQL
    $sqlTitle  = Escape-Sql $title
    $sqlNav    = Escape-Sql $navHtml
    $sqlCss    = Escape-Sql $headCssBuilder.ToString()
    $sqlMain   = Escape-Sql $mainHtml
    $sqlFooter = Escape-Sql $footerHtml
    $sqlCc     = Escape-Sql $ccHtml

    $insertStmt = "INSERT INTO pages (lang, slug, title, nav_html, head_css, main_html, footer_html, cc_html) VALUES ('$lang', '$slug', '$sqlTitle', '$sqlNav', '$sqlCss', '$sqlMain', '$sqlFooter', '$sqlCc') ON DUPLICATE KEY UPDATE title=VALUES(title), nav_html=VALUES(nav_html), head_css=VALUES(head_css), main_html=VALUES(main_html), footer_html=VALUES(footer_html);"
    [void]$sqlBuilder.AppendLine($insertStmt)
}

# Save database.sql in UTF-8 without BOM
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText((Join-Path $PWD "database.sql"), $sqlBuilder.ToString(), $utf8NoBom)

Write-Host "`nDONE! Generated database.sql with all LV & EN pages and downloaded all assets!" -ForegroundColor Green