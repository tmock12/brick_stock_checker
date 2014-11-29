var page = require("webpage").create();

page.settings.userAgent = "Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36";

page.open(phantom.args[0], function(status){
  if (status === "fail")
    phantom.exit();

  var html = page.evaluate(function(){
    return document.documentElement.outerHTML;
  });


  console.log("-------------------- HTML GOES HERE -------------------------\n\n\n");

  console.log(html);

  page.close();
  phantom.exit();
});
