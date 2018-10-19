<?php
/**
 * Created by PhpStorm.
 * User: coolong
 * Date: 2018/10/6
 * Time: 14:17
 */
namespace app\common\validate;

use think\Validate;

class Category extends Validate
{
    //验证规则
    protected $rule =   [
        'title'  => 'require',
    ];

    //自定义错误信息
    protected $message  =   [
        'title.require' => '栏目名称不能为空',
    ];

}