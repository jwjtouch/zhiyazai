<?php
namespace app\mydream\controller;

class Index
{
    public function index()
    {
        //访问地址：http://jwjzhiyazai.com/mydream.php/mydream/index/index
        return '我是mydream的index控制器';
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
}
