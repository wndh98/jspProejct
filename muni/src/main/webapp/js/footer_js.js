let f_lastScroll=0;
$(window).on("scroll",function(e){
    let currentScroll=window.scrollY;
    if($("#wrap").prop("scrollHeight")/2 <currentScroll){
        $(".top_box").css("display","block");
    }else{
        $(".top_box").css("display","none");
    }
    if(f_lastScroll >currentScroll){
        
        $("#bottom_nav").css("transform","translateY(-52px)");
    }else{
        $("#bottom_nav").css("transform","translateY(0)");
    }
    f_lastScroll=currentScroll;
});