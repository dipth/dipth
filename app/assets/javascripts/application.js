// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require xregexp
//= require jquery
//= require jquery_ujs
//= require jquery-ui-1.8.16.custom.min
//= require jqFancyTransitions.1.8
//= require jquery.scrollTo
//= require shCore
//= require shBrushRuby
//= require shBrushJScript
//= require shBrushSql
//= require shBrushSass
//= require shBrushCss
//= require shBrushXml
//= require shBrushBash
//= require_tree .

jQuery(document).ready(function($) {
  $('.smooth_scroll').click(function(event){
    event.preventDefault();
    $.scrollTo($(this).attr("href"), {duration: 500, easing:'swing'});
  });
});