$(document).ready(function(){
    $("#btn_dashboard").click(function(){
        $("#DASHBOARD").show();
        $("#MyCourse").hide();
        $("#CreateCourse").hide();
        $("#Statics").hide();


    });

    $("#btn_mycourse").click(function(){
        $("#MyCourse").show();
        $("#DASHBOARD").hide();
        $("#CreateCourse").hide();
        $("#Statics").hide();


    });

    $("#btn_create").click(function(){
        $("#CreateCourse").show();
        $("#MyCourse").hide();
        $("#DASHBOARD").hide();
        $("#Statics").hide();

    });

    $("#btn_statics").click(function(){
        $("#Statics").show();
        $("#CreateCourse").hide();
        $("#MyCourse").hide();
        $("#DASHBOARD").hide();
    });


    
    $("#btn_mycourse_Sales").click(function(){
      
        $(".sales").toggle();
    });
    
  

});