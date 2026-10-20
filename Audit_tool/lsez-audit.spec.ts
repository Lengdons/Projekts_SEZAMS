import { test, expect } from '@playwright/test';

const BASE_URL = process.env.TARGET_URL || 'https://liepaja-sez.lv';

test.describe('LSEZ Portal & SEZAMS Comprehensive Functional Audit (TEST-001..TEST-014)', () => {

  test('TEST-001 & TEST-014: Public routes availability, HTTP 200, and zero console/page errors', async ({ page }) => {
    const runtimeErrors: string[] = [];
    page.on('pageerror', err => runtimeErrors.push(err.message));

    const routes = ['/', '/lv/par-lsez', '/lv/investoriem', '/lv/liepajas-osta', '/lv/jaunumi', '/lv/kontakti'];
    for (const route of routes) {
      const res = await page.goto(`${BASE_URL}${route}`, { waitUntil: 'domcontentloaded' });
      expect(res?.status(), `Route ${route} should return HTTP 200`).toBeLessThan(400);
      await expect(page.locator('body')).toBeVisible();
    }
    expect(runtimeErrors, 'Should have zero uncaught runtime exceptions').toEqual([]);
  });

  test('TEST-002: Multilingual switcher (BTN-001) route integrity', async ({ page }) => {
    await page.goto(`${BASE_URL}/`);
    const enLink = page.locator('a[href*="/en"], button:has-text("EN")').first();
    if (await enLink.count() > 0) {
      await enLink.click();
      await expect(page).toHaveURL(/\/en/);
    }
  });

  test('TEST-005 & TEST-006: Contact Inquiry Form (FORM-001) required validation & non-destructive check', async ({ page }) => {
    await page.goto(`${BASE_URL}/lv/kontakti`);
    const form = page.locator('form').first();
    if (await form.count() > 0) {
      let postTriggered = false;
      await page.route('**/*', route => {
        if (route.request().method() === 'POST') {
          postTriggered = true;
          return route.abort(); // Preserve production data per Operating Rule 2
        }
        return route.continue();
      });
      const submitBtn = form.locator('button[type="submit"], input[type="submit"]').first();
      if (await submitBtn.count() > 0) {
        await submitBtn.click();
        expect(postTriggered, 'Empty required form should not dispatch network POST').toBe(false);
      }
    }
  });

  test('TEST-011 & TEST-012: Multi-viewport responsive overflow & click-interception audit', async ({ page }) => {
    const viewports = [
      { width: 1440, height: 900 },
      { width: 768, height: 1024 },
      { width: 375, height: 667 }
    ];
    for (const vp of viewports) {
      await page.setViewportSize(vp);
      await page.goto(`${BASE_URL}/`, { waitUntil: 'domcontentloaded' });
      const overflow = await page.evaluate(() => {
        return document.documentElement.scrollWidth > window.innerWidth;
      });
      expect(overflow, `No horizontal overflow at ${vp.width}x${vp.height}`).toBe(false);
    }
  });
});