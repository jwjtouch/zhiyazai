<?php
/**
 * Created by PhpStorm.
 * User: coolong
 * Date: 2018/10/6
 * Time: 19:39
 */
namespace app\facade;


class CategoryLogic extends \think\Facade
{
    /**
     *代理了类app\common\logic\CategoryLogic,给要调用的类一个静态马甲
     **/
    protected static function getFacadeClass()
    {
        return 'app\common\logic\CategoryLogic';
    }
}