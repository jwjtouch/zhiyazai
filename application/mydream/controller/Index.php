<?php
namespace app\mydream\controller;

use think\Controller;

class Index extends Controller
{
    public function index()
    {
        //访问地址：http://jwjzhiyazai.com/mydream.php/mydream/index/index
        return $this->fetch();
    }

    public function main()
    {
        return 'hello';
    }
}
