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

    wang.config.uploadImgUrl = '/mydream.php/mydream/index/richPic';//上传路径
    wang.config.uploadImgFileName = 'rich'; //上传文件名
    wang.create();
	exports('app',null);
});