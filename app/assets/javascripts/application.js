// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

//START OF FILE
$(document).on('turbolinks:load', function () {


    /* ------------------------ START: APPLICATION WIDE ------------------------- */
// Login success popup
    setTimeout(function () {
        $('.alert').fadeOut();
    }, 3000);
    /* ------------------------- END: APPLICATION WIDE -------------------------- */


    /* -------------------------- START: PROFILE PAGE --------------------------- */
    $("#profileImage").click(function (e) {
        $("#imageUpload").click();
    });

    function fasterPreview(uploader) {
        if (uploader.files && uploader.files[0]) {
            $('#profileImage').attr('src',
                window.URL.createObjectURL(uploader.files[0]));
        }
    }

    $("#imageUpload").change(function () {
        fasterPreview(this);
    });
    /* --------------------------- END: PROFILE PAGE ---------------------------- */


    /* ------------------------ START: PREFERENCES PAGE ------------------------- */
    // NOTE -> This is not used anymore
    // CYCLE IMAGE 1 FUNCTION
    // $imageArrayLeft = ["/cat.png", "/beach.png", "/movies.png", "/restaurant.png", "/video_games.png", "/android.png", "/art.png", "/paris.png", "/bar.png", "/escalators.png"];
    // $arrayIndexLeft = 1;
    // $imageArrayRight = ["/dog.png", "/park.png", "/books.png", "/cafe.png", "/board_games.png", "/iphone.png", "/sport.png", "/bali.png", "/club.png", "/elevators.png"];
    // $arrayIndexRight = 1;
    //
    // $("#image1").on({
    //     mouseenter: function () {
    //         $(this).css({"border": "1px solid red", "border-radius": "200px"});
    //     },
    //     mouseleave: function () {
    //         $(this).css("border", "");
    //     },
    //     click: function () {
    //         $(this).delay(400).fadeOut(200, function () {
    //             $(this).attr("src", $imageArrayLeft[$arrayIndexLeft]).fadeIn(200);
    //             ++$arrayIndexLeft;
    //         });
    //         $("#image2").delay(400).fadeOut(200, function () {
    //             $(this).attr("src", $imageArrayRight[$arrayIndexRight]).fadeIn(200);
    //             ++$arrayIndexRight;
    //         });
    //     }
    // });
    //
    // // CYCLE IMAGE 2 FUNCTION
    // $("#image2").on({
    //     mouseenter: function () {
    //         $(this).css({"border": "1px solid red", "border-radius": "200px"});
    //     },
    //     mouseleave: function () {
    //         $(this).css("border", "");
    //     },
    //     click: function () {
    //         $(this).delay(400).fadeOut(200, function () {
    //             $(this).attr("src", $imageArrayRight[$arrayIndexRight]).fadeIn(200);
    //             ++$arrayIndexRight;
    //         });
    //         $("#image1").delay(400).fadeOut(200, function () {
    //             $(this).attr("src", $imageArrayLeft[$arrayIndexLeft]).fadeIn(200);
    //             ++$arrayIndexLeft;
    //         });
    //     }
    // });
    /* ------------------------- END: PREFERENCES PAGE -------------------------- */


    /* --------------------------- START: CHATS PAGE ---------------------------- */
    // Minimising chat window
    (function () {
        $(document).on('click', '.toggle-window', function (e) {
            e.preventDefault();
            var panel = $(this).parent().parent();
            var messages_list = panel.find('.messages-list');

            panel.find('.panel-body').toggle();
            panel.attr('class', 'panel panel-default');

            if (panel.find('.panel-body').is(':visible')) {
                var height = messages_list[0].scrollHeight;
                messages_list.scrollTop(height);
            }
        });
    })();
    /* ---------------------------- END: CHATS PAGE ----------------------------- */


// END OF FILE
});