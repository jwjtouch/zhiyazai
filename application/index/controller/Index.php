<?php
namespace app\index\controller;

use think\Controller;
use app\index\controller\Base;

class Index extends Base
{
	//http://jwjzhiyazai.com/index.php/index/index
    public function index()
    {
    	$category = $this->getCate($type=1,$pid=0,$deep=2);

    	$this->assign('category',$category);
        return $this->fetch();
    }

}
