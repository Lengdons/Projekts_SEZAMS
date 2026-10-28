var category = "";
var type = "";
var search = "";
var page = 1;
var block = "";
var ids = "";

jQuery(document).ready(function () {
  load();

  $(".document_category").change(function () {
    var url = $(this).val();

    if (url) {
      // Support local file:/// browsing
      if (window.location.protocol === "file:") {
        window.location.href = new URL(
          url.replace(/^\/site/, ""),
          window.location.href,
        ).href;
      } else {
        var path = new URL(url, window.location.href).pathname;
        path = path.replace(/^(\/site)+/, "");
        path = path.replace(/\/index\.php\/?$/, "");
        path = path.replace(/\/$/, "");

        window.location.href = "/site" + path + "/index.php";
      }
    }
  });

  $(".type").change(function () {
    block = $(this).closest(".documents").data("block");
    ids = $(this).closest(".documents").data("ids");
    type = $(this).val();
    page = 1;
    ajaxRequest();
  });
  $(".contains").change(function () {
    block = $(this).closest(".documents").data("block");
    ids = $(this).closest(".documents").data("ids");
    search = $(this).val();
    page = 1;
    ajaxRequest();
  });
  // $('.dc').click(function(e){
  // 	e.preventDefault();
  // 	block=$(this).closest('.documents').data('block');
  // 	ids=$(this).closest('.documents').data('ids');
  // 	category=$(this).data('value');
  // 	page=1;
  // 	ajaxRequest();
  // });
});

function ajaxRequest() {
  var data = new FormData();
  data.append("load_documents", "load_documents");
  data.append("page", page);
  data.append("category", category);
  data.append("type", type);
  data.append("search", search);
  data.append("block", block);
  data.append("ids", ids);
  $.ajax({
    type: "POST",
    cache: false,
    contentType: false,
    processData: false,
    dataType: "json",
    data: data,
    success: function (d) {
      $('[data-block="' + block + '"] .documents-list').html(d.html);
      load();
    },
  });
}

function load() {
  $(".documents .docs-pagination").click(function (e) {
    e.preventDefault();
    block = $(this).closest(".documents").data("block");
    ids = $(this).closest(".documents").data("ids");
    page = $(this).data("page");
    ajaxRequest();
  });
}
