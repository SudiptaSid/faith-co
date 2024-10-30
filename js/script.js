// Preloader
jQuery(window).on("load", function () {
  jQuery(".preloader").fadeOut(500);
});

// Sticky Navbar
$(window).scroll(function () {
  if ($(window).scrollTop() >= 100) {
    $(".mainHeader .navbar").addClass("sticky");
  } else {
    $(".mainHeader .navbar").removeClass("sticky");
  }
});

// Back to top
jQuery(function ($) {
  if ($("#backToTop").length) {
    var scrollTrigger = 100, // px
      backToTop = function () {
        var scrollTop = $(window).scrollTop();
        if (scrollTop > scrollTrigger) {
          $("#backToTop").addClass("show");
        } else {
          $("#backToTop").removeClass("show");
        }
      };
    backToTop();
    $(window).on("scroll", function () {
      backToTop();
    });
    $("#backToTop").on("click", function (e) {
      e.preventDefault();
      $("html,body").animate(
        {
          scrollTop: 0,
        },
        1500
      );
    });
  }
});

// Smooth Scroll
$(".scroll")
  .not('[href="#"]')
  .not('[href="#0"]')
  .click(function (event) {
    if (
      location.pathname.replace(/^\//, "") ==
        this.pathname.replace(/^\//, "") &&
      location.hostname == this.hostname
    ) {
      var target = $(this.hash);
      target = target.length ? target : $("[name=" + this.hash.slice(1) + "]");
      if (target.length) {
        event.preventDefault();
        var offset = 100;
        $("html").animate(
          {
            scrollTop: target.offset().top - offset,
          },
          5000,
          function () {
            var $target = $(target);
            $target.focus();
            if ($target.is(":focus")) {
              return false;
            } else {
              $target.attr("tabindex", "-1");
              $target.focus();
            }
          }
        );
      }
    }
  });

// Owl Sliders
$(document).ready(function () {
  // Hero SLider
  $(".heroSlider").owlCarousel({
    margin: 0,
    items: 1,
    dots: false,
    nav: true,
    navText: [
      "<span class='icon-angleLeft'></span>",
      "<span class='icon-angleRight'></span>",
    ],
    loop: true,
    animateIn: "fadeIn",
    animateOut: "fadeOut",
    smartSpeed: 1000,
    autoplayTimeout: 2000,
    autoplay: false,
    autoplayHoverPause: false,
    responsiveClass: false,
  });

  // Property Slider One
  $(".propertySliderOne").owlCarousel({
    margin: 10,
    items: 3,
    dots: false,
    nav: true,
    navText: [
      "<span class='icon-angleLeft'></span>",
      "<span class='icon-angleRight'></span>",
    ],
    loop: true,
    smartSpeed: 1000,
    autoplayTimeout: 2000,
    autoplay: true,
    autoplayHoverPause: false,
    responsive: {
      0: {
        items: 1,
        nav: false,
        dots: true,
      },
      640: {
        items: 2,
      },
      912: {
        items: 3,
      },
    },
  });

  // Property Slider Two
  $(".propertySliderTwo").owlCarousel({
    margin: 20,
    items: 1,
    dots: false,
    nav: true,
    autoHeight: true,
    navText: [
      "<span class='icon-angleLeft'></span>",
      "<span class='icon-angleRight'></span>",
    ],
    loop: true,
    smartSpeed: 1000,
    autoplayTimeout: 2000,
    autoplay: false,
    autoplayHoverPause: false,
    responsiveClass: false,
  });

  // Service Slider
  $(".serviceSliderOne").owlCarousel({
    margin: 10,
    items: 4,
    dots: true,
    nav: false,
    navText: [
      "<span class='icon-angleLeft'></span>",
      "<span class='icon-angleRight'></span>",
    ],
    loop: true,
    smartSpeed: 1000,
    autoplayTimeout: 2000,
    autoplay: true,
    autoplayHoverPause: false,
    responsive: {
      0: {
        items: 1,
      },
      575: {
        items: 2,
      },
      767: {
        items: 3,
      },
      991: {
        items: 4,
      },
    },
  });
});
