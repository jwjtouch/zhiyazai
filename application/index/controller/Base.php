<?php
/**
 * Created by PhpStorm.
 * User: coolong
 * Date: 2018/9/1
 * Time: 16:29
 * Des: 基础控制器
 * 必须继承自think\Controller
 */
namespace app\index\controller;

use think\Controller;
use think\facade\Session;
use think\facade\Request;//导入请求对象的静态代理
use think\facade\Config;
use app\facade\CategoryLogic;//栏目代理类

class Base extends Controller
{
    /**
     * 初始化方法
     * 创建常量，公共方法
     * 在所有的方法之前被调用
     */
    protected function initialize()
    {
        $this->isLogin();
    }

    //检查是否未登录，放在需要登录的方法的最前面，例如发布文章
    protected function isLogin()
    {
        if(!Session::has('member_id')){
            $this->redirect('login/index');
        }
    }

    /****
     * @param $type 0全部栏目 1开启的栏目 2 关闭的栏目
     * @param $pid 顶级栏目pid
     * @param $deep 深度，要获取的栏目层级
     * @return mixed
     */
    public function getCate($type,$pid,$deep)
    {

            $category = CategoryLogic::getCateTree($pid,$type,$field='id,title,pid',$sort = 'rank asc,id asc',$deep);

            return $category;

    }


}