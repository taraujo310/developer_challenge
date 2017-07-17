var main = function() {
  /* Push the body and the nav over by 285px over */
  $('.menu-toggler').on('click', '.hamburger', function(e) {
    // e.preventDefault();
    $('nav .menu').animate({
      left: "0px"
    }, 200);

    $('body').animate({
      left: "200px"
    }, 200);

    $(this).addClass('is-active');
  });

  /* Then push them back */
  $('.menu-toggler').on('click', '.hamburger.is-active', function(e) {
    $('nav .menu').animate({
      left: "-200px"
    }, 200);

    $('body').animate({
      left: "0px"
    }, 200);

    $(this).removeClass('is-active');
  });
};


$(document).ready(main);
