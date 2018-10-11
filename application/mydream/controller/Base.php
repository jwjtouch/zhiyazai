<?php
/**
 * Created by PhpStorm.
 * User: coolong
 * Date: 2018/9/1
 * Time: 16:29
 * Des: 基础控制器
 * 必须继承自think\Controller
 */
namespace app\mydream\controller;

use think\Controller;
use think\facade\Session;
use think\facade\Request;//导入请求对象的静态代理
use think\facade\Config;

class Base extends Controller
{
    /**
     * 初始化方法
     * 创建常量，公共方法
     * 在所有的方法之前被调用
     */
    protected function initialize()
    {

    }

    //防止重复登陆
    public function logined()
    {
    	if(Session::has('user_id')){
    		$this->error('客官，您已经登陆了','index/index');
    	}
    }

    //检查是否未登录，放在需要登录的方法的最前面，例如发布文章
    protected function isLogin()
    {
        if(!Session::has('user_id')){
            $this->error('客官，您是不是忘记登录啦','user/login');
        }
    }

    //获取栏目对应的左菜单
    public function getLeftNav()
    {
        if(Request::isAjax()) {
            $param = Request::param();
            if(Config::has('menu.'.$param['type'])){
                $leftMenu = Config::get('menu.'.$param['type']);
            }else{
                $leftMenu = array();
            }

            return json(['status'=>1,'message'=>'获取成功','data'=>$leftMenu]);
        }else{
            return json(['status'=>-1,'message'=>'请求类型错误']);
        }


    }
}