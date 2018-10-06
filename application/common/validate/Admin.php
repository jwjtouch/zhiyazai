<?php
/**
 * Created by PhpStorm.
 * User: coolong
 * Date: 2018/10/6
 * Time: 14:17
 */
namespace app\common\validate;

use think\Validate;

class Admin extends Validate
{
    //验证规则
    protected $rule =   [
        'account'  => 'require',
        'pwd'   => 'require',
    ];

    //自定义错误信息
    protected $message  =   [
        'account.require' => '账号不能为空',
        'pwd.require'     => '密码不能为空',
    ];

    //验证场景
    protected $scene = [
        'login'  =>  ['account','pwd'],
    ];
}