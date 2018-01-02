(function($) {


    $("#menutoggle").click(function() {
        $("#mainmenu").slideToggle("medium", function() {
            // Animation complete.
        });
    });



    $("#colegiomenu").mouseenter(function() {
        $("#menucolegio").show("medium", function() {
            // Animation complete.
        });

        $("#menuprofessores").hide("medium", function() {
            // Animation complete.
        });

        $("#menualunos").hide("medium", function() {
            // Animation complete.
        });

        $("#menuenem").hide("medium", function() {
            // Animation complete.
        });

        $("#menunoticias").hide("medium", function() {
            // Animation complete.
        });


    });


    $("#professoresmenu").mouseenter(function() {


        $("#menuprofessores").show("medium", function() {
            // Animation complete.
        });

        $("#menualunos").hide("medium", function() {
            // Animation complete.
        });

        $("#menuenem").hide("medium", function() {
            // Animation complete.
        });

        $("#menunoticias").hide("medium", function() {
            // Animation complete.
        });
    });


    $("#alunosmenu").mouseenter(function() {
        $("#menucolegio").hide("medium", function() {
            // Animation complete.
        });

        $("#menuprofessores").hide("medium", function() {
            // Animation complete.
        });

        $("#menualunos").show("medium", function() {
            // Animation complete.
        });

        $("#menuenem").hide("medium", function() {
            // Animation complete.
        });

        $("#menunoticias").hide("medium", function() {
            // Animation complete.
        });
    });


    $("#enemmenu").mouseenter(function() {
        $("#menucolegio").hide("medium", function() {
            // Animation complete.
        });

        $("#menuprofessores").hide("medium", function() {
            // Animation complete.
        });


        $("#menuenem").show("medium", function() {
            // Animation complete.
        });

        $("#menunoticias").hide("medium", function() {
            // Animation complete.
        });
    });



    $(".secleveler").mouseenter(function() {
        $(".third-level").hide("medium", function() {
            // Animation complete.
        });

    });


    $(".topbar").mousemove(function() {
        $(".third-level").hide("medium", function() {
            // Animation complete.
        });
        $(".second-level").hide("medium", function() {
            // Animation complete.
        });

    });




    $("#noticiasmenu").mouseenter(function() {
        $("#menucolegio").hide("medium", function() {
            // Animation complete.
        });

        $("#menuprofessores").hide("medium", function() {
            // Animation complete.
        });

        $("#menualunos").hide("medium", function() {
            // Animation complete.
        });

        $("#menuenem").hide("medium", function() {
            // Animation complete.
        });

        $("#menunoticias").show("medium", function() {
            // Animation complete.
        });
    });


    var timed;

    $(".second-level").mouseleave(function() {
        // alert(JSON.stringify($(this)));
        timed = setTimeout(bang($(this)), 1000);
    });




    $(".third-level").mouseleave(function() {
        // alert(JSON.stringify($(this)));
        timed = setTimeout(bang($(this)), 1000);
    });

    function bang(calee) {
        calee.hide("medium", function() {
            // Animation complete.
        });

    }


    $('.badgeparagraph').circleType({ radius: 600 });

})(jQuery);