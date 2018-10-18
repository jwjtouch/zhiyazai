layui.define('wangeditor',function(exports){
	// 初始化编辑器
    var wang=layui.wangeditor('wang');
    //console.log(wang);
    // 普通的自定义菜单
    // wang.config.menus = [
    //     'source',
    //     '|',     // '|' 是菜单组的分割线
    //     'bold',
    //     'underline',
    //     'italic',
    //     'strikethrough',
    //     'eraser',
    //     'forecolor',
    //     'bgcolor'
    // ];

    wang.config.uploadImgUrl = '/upload';

    wang.create();
    wang.$txt.html('<p>用 JS 设置的内容</p>')
	exports('app',null);
});