<?php
namespace app\mydream\controller;

use think\Controller;
use app\mydream\controller\Base;

class Index extends Base
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
