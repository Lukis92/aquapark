// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap-wysihtml5
//= require bootstrap-wysihtml5/locales
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


//alert disappear after few seconds
window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function() {
        $(this).remove();
    });
}, 10000);

$(document).ready(function() {
    var $lightbox = $('#lightbox');

    $('[data-target="#lightbox"]').on('click', function(event) {
        var $img = $(this).find('img'),
            src = $img.attr('src'),
            alt = $img.attr('alt'),
            css = {
                'maxWidth': $(window).width() - 100,
                'maxHeight': $(window).height() - 100
            };

        $lightbox.find('.close').addClass('hidden');
        $lightbox.find('img').attr('src', src);
        $lightbox.find('img').attr('alt', alt);
        $lightbox.find('img').css(css);
    });

    $lightbox.on('shown.bs.modal', function(e) {
        var $img = $lightbox.find('img');

        $lightbox.find('.modal-dialog').css({
            'width': $img.width()
        });
        $lightbox.find('.close').removeClass('hidden');
    });

    //Smooth Scrolling
    // $(function() {
    // $('a[href*="#"]:not([href="#"])').click(function() {
    //   if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
    //     var target = $(this.hash);
    //     target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
    //     if (target.length) {
    //       $('html, body').animate({
    //         scrollTop: target.offset().top
    //       }, 1000);
    //       return false;
    //     }
    //   }
    // });
    // });
});
