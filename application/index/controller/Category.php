<?php
namespace app\index\controller;

use think\Controller;
use app\index\controller\Base;
use think\facade\Request;//导入请求对象的静态代理
use app\common\model\Category as CategoryModel;
use app\facade\CategoryLogic;//栏目代理类

class Category extends Base
{
	//http://jwjzhiyazai.com/index.php/index/index
    public function index()
    {
    	//头部菜单，取所有栏目的前两层
    	$category = $this->getCate($type=1,$pid=0,$deep=2);

    	
    	if(Request::isGet()){
            $param = Request::param();
            if(isset($param['cate_id'])){
                $cate_id = $param['cate_id'];
                //顶级栏目
                $topCategory = CategoryLogic::getTopCate($cate_id);

                //左菜单，由当前栏目下的所有子栏目和栏目下的文章组成
                $curCategory = CategoryModel::get($cate_id);
                $articleList = $curCategory->article()->select();
                if(count($articleList) == 0){
	                $map[] = ['pid','=',$cate_id];
	                $curCategory['child'] = CategoryModel::where($map)
	                ->order('id asc')
	                ->select();
	                if(count($articleList) > 0){
		                foreach($curCategory['child'] as $key=>$val){
		                	$curCategory[$key]['article'] = $val->article()->select();
		                }
	                }
                }

                $curCategory['article'] = $articleList;
                
            }else{
                //TODO 跳转到错误页面
    			echo "错误";
            }
    	}else{
    		//TODO 跳转到错误页面
    		echo "错误";
    	}
        
        $this->assign('topCateId',$topCategory->id);
    	$this->assign('curCategory',$curCategory);
		$this->assign('leftMenu',$curCategory);
    	$this->assign('category',$category);
        return $this->fetch();
    }

}
