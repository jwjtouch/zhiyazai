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

}
