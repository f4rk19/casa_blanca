$(function(){
  let tabs =$(".nav-list");

  function tabSwitch(){
    $(".active").removeClass("active");
    $(this).addClass("active");
    const index =tabs.index(this);
    $(".nav-content").removeClass("show").addClass("not-show").eq(index).addClass("show");
  }
  tabs.click(tabSwitch);
});

$(function(){
  let tabs = $(".information-list__title");
  function tabSwitch(){
    const index =tabs.index(this);
    $(".information-hidden").removeClass("show").addClass("not-show").eq(index).removeClass("not-show").addClass("show");
  }
  tabs.click(tabSwitch);

  $(".information-hidden").on("click", function(){
    $(".information-hidden").removeClass("show").addClass("not-show");
  });
});