$(function(){
    //隐藏左菜单中一级以外的菜单
    $(".left-menu a").each(function(){
        $(this).nextAll().hide();
    })
  //做菜单点击折叠效果
    $(".left-menu a").on("click",function(){
        _this = $(this);
        if(_this.next().length>0){
            _this.next().toggle();
            if(_this.next().is(":hidden")){
                $("span",_this).removeClass("glyphicon-triangle-bottom").addClass("glyphicon-triangle-right");
            }else{
                $("span",_this).removeClass("glyphicon-triangle-right").addClass("glyphicon-triangle-bottom");
            }

        }
    })

    //隐藏或显示左边菜单
    $("#menubtn").on("click",function(){
        var oLeftMenuWrap = $(".left-menu-wrap");
        var oArticleWrap = $("#article-wrap");
        oLeftMenuWrap.toggle();
        if(oLeftMenuWrap.is(":hidden")){
            oArticleWrap.removeClass("col-md-8").addClass("col-md-12");
        }else{
            oArticleWrap.removeClass("col-md-12").addClass("col-md-8");
        }

    })

    var jMenu = {};

    //做菜单搜索-实时检测
    $(".search-input").on("input",function(){
        
    })

})