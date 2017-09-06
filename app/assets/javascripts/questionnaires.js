// Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

// CYCLE IMAGE 1 FUNCTION
$(document).ready(function()
{
  $imageArrayLeft = ["/cat.png", "/beach.png", "/movies.png", "/restaurant.png", "/video_games.png", "/android.png", "/art.png", "/paris.png", "/bar.png", "/escalators.png"];
  $arrayIndexLeft = 1;
  $imageArrayRight = ["/dog.png", "/park.png", "/books.png", "/cafe.png", "/board_games.png", "/iphone.png", "/sport.png", "/bali.png", "/club.png", "/elevators.png"];
  $arrayIndexRight = 1;
  
  $("#image1").on({
    mouseenter: function()
    {
      $(this).css({"border": "1px solid red", "border-radius": "200px"});
    }, 
    mouseleave: function()
    {
      $(this).css("border", "");
    }, 
    click: function()
    {
      $(this).delay(400).fadeOut(200, function(){
        $(this).attr("src", $imageArrayLeft[$arrayIndexLeft]).fadeIn(200);
        ++$arrayIndexLeft;
      });
      $("#image2").delay(400).fadeOut(200, function(){
        $(this).attr("src", $imageArrayRight[$arrayIndexRight]).fadeIn(200);
        ++$arrayIndexRight;
      });
    }
  });

// CYCLE IMAGE 2 FUNCTION
  $("#image2").on({
    mouseenter: function()
    {
      $(this).css({"border": "1px solid red", "border-radius": "200px"});
    }, 
    mouseleave: function()
    {
      $(this).css("border", "");
    }, 
    click: function()
    {
      $(this).delay(400).fadeOut(200, function(){
        $(this).attr("src", $imageArrayRight[$arrayIndexRight]).fadeIn(200);
        ++$arrayIndexRight;
      });
      $("#image1").delay(400).fadeOut(200, function(){
        $(this).attr("src", $imageArrayLeft[$arrayIndexLeft]).fadeIn(200);
        ++$arrayIndexLeft;
      });
    }
  });
});