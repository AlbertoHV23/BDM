$(document).ready(function(){
    $("#btn_dashboard").click(function(){
        $("#DASHBOARD").show();
        $("#MyCourse").hide();
        $("#CreateCourse").hide();

    });

    $("#btn_mycourse").click(function(){
        $("#MyCourse").show();
        $("#DASHBOARD").hide();
        $("#CreateCourse").hide();

    });

    $("#btn_create").click(function(){
        $("#CreateCourse").show();
        $("#MyCourse").hide();
        $("#DASHBOARD").hide();
    });

    $("#btn_mycourse_Sales").click(function(){
      
        $(".sales").toggle();
    });
    
  

});