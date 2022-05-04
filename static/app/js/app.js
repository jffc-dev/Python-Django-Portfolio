//Validate if element is visible in viewport
$.fn.isOnScreen = function(){
    try{
      let win = $(window);

      let viewport = {
          top : win.scrollTop(),
          left : win.scrollLeft()
      };
      viewport.right = viewport.left + win.width();
      viewport.bottom = viewport.top + win.height();

      let bounds = this.offset();
      bounds.right = bounds.left + this.outerWidth();
      bounds.bottom = bounds.top + this.outerHeight() - 150;

      return (!(viewport.right < bounds.left || viewport.left > bounds.right || viewport.bottom < bounds.top || viewport.top > bounds.bottom));
    }catch (e) {
      return false;
    }
};

(function($) {
  "use strict";
  let is_scroll = false;
  let is_resize = false;
  //Circle progress div visibility
  let skills_visible = false;
  let myscroll, myresize;

  //Run function when document ready
  $(document).ready(function() {
    skills_visible = $('#skills-div').isOnScreen();
    init_full_height();
    init_pageloader();
    init_typed();
    init_menu_toggle();
    init_inner_link();
    init_chart_circle();
    init_contact_form();
    init_portfolio_details();
  });

  //Run function when window on scroll
  $(window).on("scroll", function() {
    init_scroll();
    is_scroll = true;
    clearTimeout(myscroll);
    myscroll = setTimeout(function() {
      is_scroll = false;
      init_update_uikit();
    }, 300);

    let current_visible_skills = $('#skills-div').isOnScreen();

    if(skills_visible != current_visible_skills){
      if ($('#skills-div').isOnScreen()) {
        init_chart_circle()
    } else {
        $(".circle-progress").each(function(i, el) {
        let $el = $(el);
          $($el).circleProgress({
            value: 0,
            animationStartValue: $el.data("value"),
            animation: {
              duration: 2000
            }
          });
        });
      }
    }
    skills_visible = $('#skills-div').isOnScreen();
  });

  //Run function when window on resize
  $(window).on("resize", function() {
    is_resize = true;
    clearTimeout(myresize);
    myresize = setTimeout(function() {
      is_resize = false;
      init_full_height();
      init_scroll();
    }, 300);
  });

  //============================================
  //initial functions
  //============================================
  function init_chart_circle() {
    $(".circle-progress").each(function(i, el) {
      let $el = $(el);
      $($el).circleProgress({
        animationStartValue: 0,
        value: $el.data("value"),
        animation: {
            duration: 2000
          }
      });
    });
  }

  function init_update_uikit() {
    //sometimes sticky nav oveflow
    if (!is_scroll) {
      if ($("#resume-nav-wrapper").length) {
        UIkit.update($("#resume-nav-wrapper"), "update");
      }

      if ($("#portfolio-nav-wrapper").length) {
        UIkit.update($("#portfolio-nav-wrapper"), "update");
      }
    }
  }

  function init_menu_toggle() {
    $(".yb-menu-togggle").on("click", function() {
      $("#body-app").toggleClass("yb-menu-open");
    });

    $("#btn-menu-toggle").on("click", function() {
      $("#main-menu").toggleClass("open-menu");
      return false;
    });

    $("#menucollapse .uk-navbar-nav a").on("click", function() {
      $("#main-menu").toggleClass("open-menu");
    });
    //Al hacer click en el botón de idiomma
    $("#iconSelectedLanguage").on("click", function() {
      // // Get the modal
      // var modal = document.getElementById("myModal");
      // var span = document.getElementsByClassName("close")[0];
      // // When the user clicks on <span> (x), close the modal
      // span.onclick = function() {
      //   modal.style.display = "none";
      // }
      // modal.style.display = "block";
      // $(window).on("click", function(e) {
      //   if (e.target == modal) {
      //     modal.style.display = "none";
      //   }
      // });


    });

    $("#iconSelectedLanguage").on("click", function() {
      let modals = document.querySelectorAll("#modal_one");
      modals.forEach(function(modal)
      {
          modal.classList.add('active');
      });
      document.getElementsByTagName('html')[0].classList.add("stop-scrolling");
      return false;
    });
  }

  /* this method for close modal start */
  window.addEventListener('click', function(e){
      let status = false,
          modal  = '';

      if(e.target.classList.contains('modal_wraper')){
          status = true;
          modal  = e.target;
      }
      if(e.target.classList.contains('close') && e.target.closest('.modal_header,.modal_footer')){
          status = true;
          modal  = e.target.closest('.modal_wraper.active');
      }
      if(status)
      {
          modal.classList.add("modal_close_animation");
          let modal_container = modal.querySelector('.modal_container');
          if(modal_container)
          {
              modal_container.addEventListener('animationend', function(e){
                  if(e.animationName == 'modal_close_animation')
                  {
                      modal.classList.remove('modal_close_animation');
                      modal.classList.remove('active');
                      document.getElementsByTagName('nav')[0].style.zIndex = '100';
                      document.getElementsByTagName('html')[0].classList.remove("stop-scrolling");
                  }
              });
          }
      }

  });

  function init_scroll() {
    if (!is_resize) {
      let window_height =
        $("#main-header").height() - ($("#main-menu").height() + 1);
      let current_scroll = Math.round($(window).scrollTop());
      if (current_scroll >= window_height) {
        $("#main-menu").addClass("fixed");
      } else {
        $("#main-menu").removeClass("fixed");
      }
    }
  }

  function init_full_height() {
    if (!is_resize) {
      let vh = window.innerHeight * 0.01;
      $(":root").css("--vh", vh + "px");
    }
  }

  function init_pageloader() {
    let $pageloader = $("#pageloader");
    setTimeout(function() { 
      $pageloader.addClass("uk-transition-fade");
      setTimeout(function() {
        $pageloader.addClass("page-is-loaded");
        init_check_hash_url();
      }, 400);
    }, 300);
  }

  function init_inner_link() {
    $(".yb-inner-link").on("click", function() {
      let $el = $(this).attr("href");
      let ofsset = parseInt($(this).attr("data-offset"));
      if ($($el).length) {
        ofsset = ofsset > 0 ? ofsset : 79;
        init_scroll_to($($el), 1500, ofsset);
        return false;
      }
    });
  }

  function init_check_hash_url() {
    if (window.location.hash && window.location.hash !="" && $(window.location.hash).length) {
      let speed = window.location.hash == "#home" ? 0 : 700;
      console.log(window.location.hash)
      init_scroll_to($(window.location.hash), speed, 79);
    }
  }

  function init_scroll_to($el, speed, offset) {
    $("html, body").animate(
      {
        scrollTop: $el.offset().top - offset
      },
      {
        duration: speed,
        easing: "easeInOutExpo"
      }
    );
  }

  function init_typed() {
    let $typed = $("#typed");
    let $strings = ($typed.data("strings")).toString().split("|");
    if ($typed.length) {
      let typed = new Typed("#typed", {
        strings: $strings,
        loop: true,
        typeSpeed: 70
      });
    }
  }

  function init_contact_form() {
    let $el = $("#contact-form");
    let $alert_wrap = $("#contact-form-alert");
     
    if ($el.length && $alert_wrap.length) {
      $el.on("submit", function() {
        let $btn = $("#btn-contact-form");
        let params = $el.serialize();

        init_btn_loading($btn, true);

        
        $.post("src/php/sendmail.php", params, function(data) {
          let dt = JSON.parse(data);
          if (dt.status == "error") {
            let alert = init_alert(
              "contact-alert-err",
              dt.status_desc,
              "uk-alert-danger",
              "warning"
            );
          } else {
            let alert = init_alert(
              "contact-alert-success",
              dt.status_desc,
              "uk-alert-primary",
              "info"
            );
            $el.trigger("reset");
          }
          $.each(dt.error_msg, function(key, value) {
            if (value == "") {
              $("#" + key).removeClass("uk-form-danger");
            } else {
              $("#" + key).addClass("uk-form-danger");
            }
            $("#" + key + "_error").html(value);
          });
          $alert_wrap.html(alert);
          init_btn_loading($btn, false);
        });

        return false;
      });
    }
  }

  function init_btn_loading($btn, is_loading) {
    if (is_loading) {
      $btn.attr("disabled", "disabled");
      $btn.find(".btn-text-wrap").text("Please Wait . . .");
      $btn.find(".uk-icon").attr("hidden", "hidden");
      $btn.append("<div uk-spinner></div>");
    } else {
      $btn.removeAttr("disabled");
      $btn.find(".btn-text-wrap").text($btn.attr("data-textreset"));
      $btn.find(".uk-icon").removeAttr("hidden");
      $btn.find("div[uk-spinner]").remove();
    }
  }

  function init_alert(id, msg, classname, icon) {
    let alert =
      '<div id="' +
      id +
      '" class="' +
      classname +
      '  uk-border-rounded" data-uk-alert>' +
      '<a class="uk-alert-close" data-uk-close></a>' +
      '<div class="uk-flex uk-flex-middle">' +
      '<div><span data-uk-icon="' +
      icon +
      '" class="uk-margin-small-right"></span></div>' +
      "<div>" +
      msg +
      "</div>" +
      "</div>" +
      "</div>";
    return alert;
  }

  function init_portfolio_details() { 
    $(".show-portfolio").on("click", function() {
      let $this = $(this);
      let $el = $("#show-portofolio-details");
      let $wrap = $("#portofolio-details");
      $wrap.addClass('uk-animation-toggle');
      UIkit.modal($el).show();

      //show loading first
      $wrap.html(
        '<div class="uk-position-center  uk-text-center">' +
          "<div data-uk-spinner></div> " +
        "</div>"
      ); 
      
      $.post($this.attr("href"), function(data) {
        $wrap.html(data); 
        $wrap.removeClass('uk-animation-toggle');
      });
      return false;
    });
  }

  // $(".skill-filter-btn").on("click", function() {
  //   setTimeout(function(){
  //     console.log($(".skills-filter > div:visible"))
  //   }, 1000);
  // });

  function asd(){
    console.log(1)
  }
})(jQuery);
