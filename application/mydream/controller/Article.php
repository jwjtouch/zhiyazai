<?php
namespace app\mydream\controller;

use think\Controller;
use app\mydream\controller\Base;
use think\facade\Request;//导入请求对象的静态代理
use app\common\model\Article as ArticleModel;
use app\facade\StatisticsLogic;//统计代理类


class Article extends Base
{	

    //列表页
    public function index()
    {
        $cateid = '';
        if(Request::isGet()){
            $param = Request::param();
            if(isset($param['cate_id'])){
                $cate_id = $param['cate_id'];
            }else{
                $this->assign('empty','请求参数错误');
            }
        }else{
            $this->assign('empty','请求类型错误');
        }

        $this->assign('cate_id',$cate_id);
        return $this->fetch();
    }

    //获取列表页数据
    public function getDatas()
    {
        if(Request::isAjax()){
            $param = Request::param();

            $where[] = ['cate_id','=',$param['cate_id']];
            $page = $param['page'];
            $limit = $param['limit'];
            $startlimit = ($page-1)*$limit;

            $article = ArticleModel::where($where)
            ->field('id,title,admin_id,create_time,update_time,rank,status')
            ->order('rank desc,id desc')
            ->limit($startlimit,$limit)
            ->select();

            //获取计数统计
            $statistics = StatisticsLogic::distribute(Request::controller(true),'getcateid'.$param['cate_id'],$param['cate_id']);
            $count = $statistics['status'] == 1 ? $statistics['message']['quantity'] : 0;

            return ['status'=>1,'message'=>'成功获取数据','count'=>$count,'data'=>$article];

        }else{
            return ['status'=>-1,'message'=>'请求类型错误'];
        }


    }



    //添加文章
    public function add()
    {
        $param = Request::param();

        if(isset($param['cate_id'])){
            $this->assign('cate_id',$param['cate_id']);
        }else{
            $this->assign('empty','请求参数错误');
        }
        return $this->fetch();
    }

    //添加文章处理程序
    public function addHandle()
    {
        if(Request::isAjax()){
            $param = Request::param();

            //验证器检测
            $rule = 'app\common\validate\Article';//自定义的验证场景规则
            $res = $this->validate($param,$rule);//
            if($res !== true){
                return ['status'=>-1,'message'=>$res];
            }else{
                //TODO 管理员id
                $param['admin_id'] = session('admin_id');
                $param['title'] = trim($param['title']);
                $param['keyword'] = trim($param['keyword']);
                $param['description'] = trim($param['description']);

                $article = ArticleModel::create($param);
                if($article->id > 0){
                    //更新文章总数计数统计
                    StatisticsLogic::distribute(Request::controller(true),'inc');
                    //更新该栏目计数统计
                    StatisticsLogic::distribute(Request::controller(true),'inccateid'.$param['cate_id'],$param['cate_id']);
                    return ['status'=>1,'message'=>'添加成功'];
                }else{
                    return ['status'=>-1,'message'=>'添加失败'];
                }

            }


        }else{
            return ['status'=>-1,'message'=>'请求类型错误'];
        }
    }

    //编辑栏目
    public function edit()
    {
        $param = Request::param();
        if(isset($param['id'])){
            $article = ArticleModel::get($param['id']);
        }else{
            $this->assign('empty','请求参数错误');
        }


        $this->assign('article',$article);
        return $this->fetch();
    }

    //编辑管理员处理程序
    public function editHandle()
    {
        if(Request::isAjax()){
            $param = Request::param();

            //验证器检测
            $rule = 'app\common\validate\Article';//自定义的验证场景规则
            $res = $this->validate($param,$rule);//
            if($res !== true){
                return ['status'=>-1,'message'=>$res];
            }else{
                if(!isset($param['status'])){
                    $param['status'] = 0;
                }
                $param['title'] = trim($param['title']);
                $param['keyword'] = trim($param['keyword']);
                $param['description'] = trim($param['description']);

                $article = ArticleModel::get($param['id']);

                $category = ArticleModel::update($param);
                if($category->id > 0){
                    if($article->attachment != $param['attachment'] && $article->attachment != ''){
                        unlink($article->attachment);
                    }
                    return ['status'=>1,'message'=>'修改成功'];
                }else{
                    return ['status'=>-1,'message'=>'修改失败'];
                }

            }


        }else{
            return ['status'=>-1,'message'=>'请求类型错误'];
        }
    }

    //删除用户
    public function delete()
    {
        if(Request::isAjax()){
            $param = Request::param();

            $article = ArticleModel::get($param['id']);
            if($article->id>0){
                    if($article->delete()>0){
                        //更新文章总数计数统计
                        StatisticsLogic::distribute(Request::controller(true),'dec');
                        //更新该栏目计数统计
                        StatisticsLogic::distribute(Request::controller(true),'deccateid'.$article['cate_id'],$article['cate_id']);

                        return ['status'=>1,'message'=>'删除成功'];
                    }else{
                        return ['status'=>-1,'message'=>'删除失败'];
                    }

            }else{
                return ['status'=>-1,'message'=>'不存在该项数据'];
            }

        }else{
            return ['status'=>-1,'message'=>'请求类型错误'];
        }
    }


    //上传附件
    public function attachment()
    {
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('file');
        // 移动到框架应用根目录/uploads/ 目录下
        $uploadPath = 'uploads/attachment';
        $info = $file->move($uploadPath);

        if($info){
            return ['status'=>1,'message'=>$uploadPath.'/'.str_replace("\\","/",$info->getSaveName())];
        }else{
            return ['status'=>0,'message'=>'上传失败'];
        }
    }


}
