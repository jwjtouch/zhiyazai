<?php
namespace app\mydream\controller;

use think\Controller;
use app\mydream\controller\Base;
use think\facade\Request;//导入请求对象的静态代理
use app\common\model\Category as CategoryModel;
use app\facade\StatisticsLogic;//统计代理类

class Category extends Base
{	

    //列表页
    public function index()
    {

        return $this->fetch();
    }

    //获取列表页数据
    public function getDatas()
    {
        if(Request::isAjax()){
        $where = [];

        $category = CategoryModel::where($where)
        ->field('id,title,pid,rank,status')
        ->order('rank asc,id desc')
        ->select();

        //获取计数统计
        $statistics = StatisticsLogic::distribute(Request::controller(true),'get');
        $count = $statistics['status'] == 1 ? $statistics['message']['quantity'] : 0;

        return ['code'=>0,'msg'=>'','count'=>$count,'is'=>true,'tip'=>'操作成功','data'=>$category];

        }else{
            return ['code'=>-1,'msg'=>'请求类型错误'];
        }


    }



    //添加管理员
    public function add()
    {
        $param = Request::param();

        if(isset($param['id'])){
            $category = CategoryModel::get($param['id']);
            $this->assign('category',$category);
        }
        return $this->fetch();
    }

    //添加管理员处理程序
    public function addHandle()
    {
        if(Request::isAjax()){
            $param = Request::param();

            //验证器检测
            $rule = 'app\common\validate\Category';//自定义的验证场景规则
            $res = $this->validate($param,$rule);//
            if($res !== true){
                return ['status'=>-1,'message'=>$res];
            }else{

                $categorymes = CategoryModel::create($param);
                if($categorymes->id > 0){
                    //更新计数统计
                    StatisticsLogic::distribute(Request::controller(true),'inc');

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

        $category = CategoryModel::get($param['id']);

        $this->assign('category',$category);
        return $this->fetch();
    }

    //编辑管理员处理程序
    public function editHandle()
    {
        if(Request::isAjax()){
            $param = Request::param();

            //验证器检测
            $rule = 'app\common\validate\Category';//自定义的验证场景规则
            $res = $this->validate($param,$rule);//
            if($res !== true){
                return ['status'=>-1,'message'=>$res];
            }else{
                if(!isset($param['status'])){
                    $param['status'] = 0;
                }
                $category = CategoryModel::update($param);
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

            $category = CategoryModel::get($param['id']);
            if($category->id>0){
                //TODO 有下级栏目则不允许删除
                if(CategoryModel::where('pid',$param['id'])->find()){
                    return ['status'=>-1,'message'=>'存在下级节点，不允许删除'];
                }else{
                    //TODO 该栏目下有文章则不允许删除

                    if($category->delete()>0){
                        //更新计数统计
                        StatisticsLogic::distribute(Request::controller(true),'dec');
                        return ['status'=>1,'message'=>'删除成功'];
                    }else{
                        return ['status'=>-1,'message'=>'删除失败'];
                    }
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
