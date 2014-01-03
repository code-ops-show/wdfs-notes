$(document).ready(function(){
  $('div.title a').click(function(e){
    e.preventDefault();
    content = $(this).parent().siblings("div.content");
    content.slideToggle();
  });
});