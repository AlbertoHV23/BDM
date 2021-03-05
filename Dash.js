$(document).ready(function(){
    $("#btn_dashboard").click(function(){
        $("#DASHBOARD").show();
        $("#MyCourse").hide();
    });

    $("#btn_mycourse").click(function(){
        $("#MyCourse").show();
        $("#DASHBOARD").hide();
    });

    $("#btn_mycourse_Sales").click(function(){
      
        $(".sales").toggle();
    });
    
  

});