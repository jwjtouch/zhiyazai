<?php
namespace app\index\controller;

use think\Controller;
use app\index\controller\Base;
use think\facade\Request;//导入请求对象的静态代理
use app\common\model\Article as ArticleModel;

class Article extends Base
{
	//文章详情
    public function detail()
    {
        if(Request::isGet()){
            $param = Request::param();
            if(isset($param['id'])){
                $id = $param['id'];

                //左菜单，由当前栏目下的所有子栏目和栏目下的文章组成
                $article = ArticleModel::get($id);
     
            }else{
                //TODO 跳转到错误页面
    			echo "错误";
            }
    	}else{
    		//TODO 跳转到错误页面
    		echo "错误";
    	}
    	$this->assign('article',$article);
        return $this->fetch();
    }

    //下载附件
    public function downloadAttach()
    {
        if(Request::isGet()){
            $param = Request::param();
            if(isset($param['id'])){
                $id = $param['id'];
                //左菜单，由当前栏目下的所有子栏目和栏目下的文章组成
                $article = ArticleModel::get($id);
            }else{
                //TODO 跳转到错误页面
                echo "错误";
            }
        }else{
            //TODO 跳转到错误页面
            echo "错误";
        }

        //判断如果文件存在,则跳转到下载路径
        if(file_exists($article->attachment)){
           header('location:'.Request::scheme().'://'.Request::host().'/'.$article->attachment);
        }else{
            echo "错误";
        }
    }
}
