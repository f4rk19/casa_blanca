$(document).on('turbolinks:load', function(){
  $(".main__search-form-js").on("click", function(e){
    e.preventDefault();
    $(".main__search-form-mobile").removeClass("not-show");
    $(".main__search-form-mobile").addClass("is-show");
  });
  $(".search-mobile__close").on("click", function(){
    $(".main__search-form-mobile").removeClass("is-show");
    $(".main__search-form-mobile").addClass("not-show");
  });
});