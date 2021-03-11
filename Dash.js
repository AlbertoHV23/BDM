$(document).ready(function(){
    $("#btn_dashboard").click(function(){
        $("#DASHBOARD").show();
        $("#MyCourse").hide();
        $("#CreateCourse").hide();
        $("#Statics").hide();
        $("#TecaherProfile").hide();



    });

    $("#btn_mycourse").click(function(){
        $("#MyCourse").show();
        $("#DASHBOARD").hide();
        $("#CreateCourse").hide();
        $("#Statics").hide();
        $("#TecaherProfile").hide();



    });

    $("#btn_create").click(function(){
        $("#CreateCourse").show();
        $("#MyCourse").hide();
        $("#DASHBOARD").hide();
        $("#Statics").hide();
        $("#TecaherProfile").hide();


    });

    $("#btn_statistics").click(function(){
        $("#Statics").show();
        $("#CreateCourse").hide();
        $("#MyCourse").hide();
        $("#DASHBOARD").hide();
        $("#TecaherProfile").hide();

    });

    $("#btn_profile").click(function(){
        $("#TecaherProfile").show();
        $("#Statics").hide();
        $("#CreateCourse").hide();
        $("#MyCourse").hide();
        $("#DASHBOARD").hide();
    });


    
    $("#btn_mycourse_Sales").click(function(){
      
        $(".sales").toggle();
    });
    
  

});