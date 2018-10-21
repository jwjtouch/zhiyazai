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

            $article = ArticleModel::where($where)
            ->field('id,title,admin_id,create_time,update_time,rank,status')
            ->order('rank desc,id desc')
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
                //$param['admin_id'] = '';
                $article = ArticleModel::create($param);
                if($article->id > 0){
                    //更新文章总数计数统计
                    StatisticsLogic::distribute(Request::controller(true),'inctotal');
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
                $category = ArticleModel::update($param);
                if($category->id > 0){
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
                        StatisticsLogic::distribute(Request::controller(true),'dectotal');
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


    //获取列表页数据-测试
    public function getDatasList()
    {
        $data = array(
            'msg'=>'',
            'code'=>'0',
            "count"=> 37,
            "is"=>true,
            "tip"=> "操作成功！",
            'data'=>[
                [
                    "id"=>"113",
                    "pid"=>0,
                    "name"=>"植物(自定义图标)",
                    "lay_icon_open"=>"/static/images/1_open.png",
                    "lay_icon_close"=>"/static/images/1_close.png"
                ],
                [
                    "id"=>"114",
                    "pid"=>"113",
                    "name"=>"大叶榕(自定义图标)",
                    "lay_icon"=>"/img/4.png"
                ],
                [
                    "id"=>"112",
                    "pid"=>null,
                    "name"=>"动物(默认单选)",
                    "lay_is_radio"=>true
                ],
                [
                    "id"=>"115",
                    "pid"=>"112",
                    "name"=>"大笨象"
                ],
                [
                    "id"=>"1",
                    "pid"=>null,
                    "name"=>"水果"
                ],
                [
                    "id"=>"101",
                    "pid"=>"1",
                    "name"=>"苹果",
                    "lay_is_open"=>false
                ],
                [
                    "id"=>"102",
                    "pid"=>"1",
                    "name"=>"香蕉"
                ],
                [
                    "id"=>"103",
                    "pid"=>"1",
                    "name"=>"梨"
                ],
                [
                    "id"=>"104",
                    "pid"=>"101",
                    "name"=>"红富士苹果"
                ],
                [
                    "id"=>"105",
                    "pid"=>"101",
                    "name"=>"红星苹果"
                ],
                [
                    "id"=>"106",
                    "pid"=>"101",
                    "name"=>"嘎拉"
                ],
                [
                    "id"=>"107",
                    "pid"=>"101",
                    "name"=>"桑萨"
                ],
                [
                    "id"=>"108",
                    "pid"=>"102",
                    "name"=>"千层蕉（禁止多选）",
                    "lay_che_disabled"=>true
                ],
                [
                    "id"=>"109",
                    "pid"=>"102",
                    "name"=>"仙人蕉",
                    "lay_is_checked"=>true
                ],
                [
                    "id"=>"110",
                    "pid"=>"102",
                    "name"=>"吕宋蕉(禁止单选)",
                    "lay_is_checked"=>true,
                    "lay_rad_disabled"=>true
                ],
                [
                    "id"=>"111",
                    "pid"=>"1",
                    "name"=>"大西瓜",
                    "lay_is_open"=>false
                ],
                [
                    "id"=>"1000",
                    "pid"=>"111",
                    "name"=>"大西瓜[1000]"
                ],
                [
                    "id"=>"1001",
                    "pid"=>"111",
                    "name"=>"大西瓜[1001]"
                ],
                [
                    "id"=>"1002",
                    "pid"=>"111",
                    "name"=>"大西瓜[1002]"
                ],
                [
                    "id"=>"1003",
                    "pid"=>"111",
                    "name"=>"大西瓜[1003]"
                ],
                [
                    "id"=>"1000",
                    "pid"=>"111",
                    "name"=>"大西瓜[1000]"
                ],
                [
                    "id"=>"1004",
                    "pid"=>"111",
                    "name"=>"大西瓜[1004]"
                ],
                [
                    "id"=>"1005",
                    "pid"=>"111",
                    "name"=>"大西瓜[1005]"
                ],
                [
                    "id"=>"1006",
                    "pid"=>"111",
                    "name"=>"大西瓜[1006]"
                ],
                [
                    "id"=>"1007",
                    "pid"=>"111",
                    "name"=>"大西瓜[1007]"
                ],
                [
                    "id"=>"1008",
                    "pid"=>"111",
                    "name"=>"大西瓜[1008]"
                ],
                [
                    "id"=>"1009",
                    "pid"=>"111",
                    "name"=>"大西瓜[1009]"
                ],
                [
                    "id"=>"1010",
                    "pid"=>"111",
                    "name"=>"大西瓜[1010]"
                ],
                [
                    "id"=>"1011",
                    "pid"=>"111",
                    "name"=>"大西瓜[1011]"
                ],
                [
                    "id"=>"1012",
                    "pid"=>"111",
                    "name"=>"大西瓜[1012]"
                ],
                [
                    "id"=>"1013",
                    "pid"=>"111",
                    "name"=>"大西瓜[1013]"
                ],
                [
                    "id"=>"1014",
                    "pid"=>"111",
                    "name"=>"大西瓜[1014]"
                ],
                [
                    "id"=>"1015",
                    "pid"=>"111",
                    "name"=>"大西瓜[1015]"
                ],
                [
                    "id"=>"1016",
                    "pid"=>"111",
                    "name"=>"大西瓜[1016]"
                ],
                [
                    "id"=>"1017",
                    "pid"=>"111",
                    "name"=>"大西瓜[1017]"
                ],
                [
                    "id"=>"1018",
                    "pid"=>"111",
                    "name"=>"大西瓜[1018]"
                ],
                [
                    "id"=>"1019",
                    "pid"=>"111",
                    "name"=>"大西瓜[1019]"
                ],
                [
                    "id"=>"1020",
                    "pid"=>"111",
                    "name"=>"大西瓜[1020]"
                ],
            ],
        );

        return $data;

    }

}
