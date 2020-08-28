$(document).on('turbolinks:load', function(){
  $(".header__nav").on("click", function(){
    $(".header__drop-menu").removeClass("not-show");
    $(".header__drop-menu").addClass("is-show");
  });
  $(".drop-menu__btn").on("click", function(){
    $(".header__drop-menu").removeClass("is-show");
    $(".header__drop-menu").addClass("not-show");
  });
  $(window).resize(function(){
    var w = $(window).width();
    var x = 960;
    if (w > x) {
      $(".header__drop-menu").removeClass("is-show");
      $(".header__drop-menu").addClass("not-show");
    }
  });
});