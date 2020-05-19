require("packs/html.sortable")
// require("jquery")
// require("jquery-ui")
// 
require("jquery/dist/jquery")
require("jquery-ui-dist/jquery-ui")


$( document ).on('turbolinks:load', function() {
  console.log("It works on each visit!");
})

$(function(){
  $('.sortable').sortable();
});