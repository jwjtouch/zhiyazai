<?php
namespace app\mydream\controller;

use think\Controller;

class Login extends Controller
{
    public function index()
    {
        //访问地址：http://jwjzhiyazai.com/mydream.php/mydream/Login/index
        return $this->fetch('index',['title'=>'登录页面']);
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
}
