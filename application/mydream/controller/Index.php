<?php
namespace app\mydream\controller;

use think\Controller;
use app\mydream\controller\Base;
use think\facade\Request;//导入请求对象的静态代理

class Index extends Base
{	

	/**
	* 加载主框架
	* type 根据该参数获取左菜单数据
	* 访问地址：http://jwjzhiyazai.com/mydream.php/mydream/index/index/type/index
	*/

    public function index()
    {

    	$param = Request::param();
    	$leftNav = $this->leftMenu($param['type']);

    	$this->assign('leftNav',$leftNav);
        $this->assign('curTopNav',$param['type']);//当前点击的顶部菜单标识

        return $this->fetch();
    }


    //获取左侧菜单
    protected function leftMenu($type)
    {

    	return $this->getLeftNav($type);
    }


    //主页
    public function main()
    {
        return $this->fetch();
    }


    //TODO 上传富文本图片
    public function richPic()
    {
        $file = request()->file('rich');
        if(request()->richtoken == config('custom.rich.token') && request()->richuser == config('custom.rich.user')){
            // 移动到框架应用根目录/uploads/ 目录下
            $uploadPath = 'uploads/rich';
            $info = $file->move($uploadPath);
            if($info){
                exit('/'.$uploadPath.'/'.str_replace("\\","/",$info->getSaveName()));
            }else{
                exit('error|上传失败');
            }
        }else{
            exit('error|身份验证失败');
        }

    }

}
