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
        $data = array(
                'msg'=>'',
                'code'=>'0',
                'data'=>[
                    [
                        "id"=>"113", 
                        "pId"=>0,  
                        "name"=>"植物(自定义图标)",
                        "lay_icon_open"=>"/static/images/1_open.png",
                        "lay_icon_close"=>"/static/images/1_close.png"
                    ],
                    [
                        "id"=>"114", 
                        "pId"=>"113",  
                        "name"=>"大叶榕(自定义图标)",
                        "lay_icon"=>"/img/4.png"
                    ],
                    [
                        "id"=>"112", 
                        "pId"=>null,  
                        "name"=>"动物(默认单选)",
                        "lay_is_radio"=>true
                    ],
                    [
                        "id"=>"115", 
                        "pId"=>"112",  
                        "name"=>"大笨象"
                    ],
                    [
                        "id"=>"1", 
                        "pId"=>null,  
                        "name"=>"水果"
                    ],
                    [
                        "id"=>"101", 
                        "pId"=>"1",
                        "name"=>"苹果",
                        "lay_is_open"=>false
                    ],
                    [
                        "id"=>"102", 
                        "pId"=>"1", 
                        "name"=>"香蕉"
                    ],
                    [
                        "id"=>"103", 
                        "pId"=>"1", 
                        "name"=>"梨"
                    ],
                    [
                        "id"=>"104", 
                        "pId"=>"101", 
                        "name"=>"红富士苹果"
                    ],
                    [
                        "id"=>"105", 
                        "pId"=>"101", 
                        "name"=>"红星苹果"
                    ],
                    [
                        "id"=>"106", 
                        "pId"=>"101", 
                        "name"=>"嘎拉"
                    ],
                    [
                        "id"=>"107", 
                        "pId"=>"101", 
                        "name"=>"桑萨"
                    ],
                    [
                        "id"=>"108", 
                        "pId"=>"102", 
                        "name"=>"千层蕉（禁止多选）",
                        "lay_che_disabled"=>true
                    ],
                    [
                        "id"=>"109", 
                        "pId"=>"102", 
                        "name"=>"仙人蕉",
                        "lay_is_checked"=>true
                    ],
                    [
                        "id"=>"110", 
                        "pId"=>"102", 
                        "name"=>"吕宋蕉(禁止单选)",
                        "lay_is_checked"=>true,
                        "lay_rad_disabled"=>true
                    ],
                    [
                        "id"=>"111", 
                        "pId"=>"1", 
                        "name"=>"大西瓜",
                        "lay_is_open"=>false
                    ],
                    [
                        "id"=>"1000", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1000]"
                    ],
                                        [
                        "id"=>"1001", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1001]"
                    ],
                                        [
                        "id"=>"1002", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1002]"
                    ],
                                        [
                        "id"=>"1003", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1003]"
                    ],
                                        [
                        "id"=>"1000", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1000]"
                    ],
                                        [
                        "id"=>"1004", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1004]"
                    ],
                                        [
                        "id"=>"1005", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1005]"
                    ],
                                        [
                        "id"=>"1006", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1006]"
                    ],
                                        [
                        "id"=>"1007", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1007]"
                    ],
                                        [
                        "id"=>"1008", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1008]"
                    ],
                                        [
                        "id"=>"1009", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1009]"
                    ],
                                        [
                        "id"=>"1010", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1010]"
                    ],
                                        [
                        "id"=>"1011", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1011]"
                    ],
                                        [
                        "id"=>"1012", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1012]"
                    ],
                                        [
                        "id"=>"1013", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1013]"
                    ],
                                        [
                        "id"=>"1014", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1014]"
                    ],
                                        [
                        "id"=>"1015", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1015]"
                    ],
                                        [
                        "id"=>"1016", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1016]"
                    ],
                                        [
                        "id"=>"1017", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1017]"
                    ],
                                        [
                        "id"=>"1018", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1018]"
                    ],
                                        [
                        "id"=>"1019", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1019]"
                    ],
                                        [
                        "id"=>"1020", 
                        "pId"=>"111", 
                        "name"=>"大西瓜[1020]"
                    ],
                ],
                 "count"=> 37,
                "is"=>true,
                "tip"=> "操作成功！"
                
            );
return $data;
        if(Request::isAjax()){
            $where = [];
            $param = Request::param();

            //分页
            $page = $param['page'];
            $limit = $param['limit'];
            $startlimit = ($page-1)*$limit;

            $admin = CategoryModel::where($where)
            ->limit($startlimit,$limit)
            ->field('id,title,keyword,description,pid,status,create_time,update_time')
            ->order('id desc')
            ->select();

            //获取计数统计
            $statistics = StatisticsLogic::distribute(Request::controller(true),'get');
            $count = $statistics['status'] == 1 ? $statistics['message']['quantity'] : 0;

            return ['status'=>1,'message'=>'成功获取数据','count'=>$count,'data'=>$admin];

        }else{
            return ['status'=>-1,'message'=>'请求类型错误'];
        }
        
        
    }

    //添加管理员
    public function add()
    {
        return $this->fetch();
    }

    //添加管理员处理程序
    public function addHandle()
    {
        if(Request::isAjax()){
            $nowtime = time();
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

    //编辑管理员
    public function edit()
    {
        $param = Request::param();

        $admin = CategoryModel::get($param['id']);

        $this->assign('admin',$admin);
        return $this->fetch();
    }

    //编辑管理员处理程序
    public function editHandle()
    {
        if(Request::isAjax()){
            $nowtime = time();
            $param = Request::param();

            //验证器检测
            $rule = 'app\common\validate\Admin.edit';//自定义的验证场景规则
            $res = $this->validate($param,$rule);//
            if($res !== true){
                return ['status'=>-1,'message'=>$res];
            }else{

                //检测账号和密码是否正确
                $account = trim($param['account']);
                $pwd = trim($param['pwd']);
                $id = $param['id'];
                $result = AdminModel::where([
                    ['account','=',$account],
                    ['id','<>',$id]
                ])->find();

                if($result){
                    return ['status'=>-1,'message'=>'该用户已存在'];
                }

                if($pwd != ''){
                    $param['salt'] = substr(md5(uniqid('zhiyazai')), 0, 8);
                    $param['pwd'] = md5($pwd.$param['salt']);
                }else{
                    unset($param['pwd']);
                }



                $adminmes = AdminModel::update($param);
                if($adminmes->id > 0){
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

            $admin = AdminModel::get($param['id']);
            if($admin->id>0){
                if($admin->delete()>0){
                    //更新计数统计
                    StatisticsLogic::distribute(Request::controller(true),'dec');
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




}
