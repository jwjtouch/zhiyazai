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
            $param = Request::param();

            //分页
            $page = $param['page'];
            $limit = $param['limit'];
            $startlimit = ($page-1)*$limit;

            $admin = AdminModel::where($where)
            ->limit($startlimit,$limit)
            ->field('id,name,account,create_time,login_time')
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
            $rule = 'app\common\validate\Admin.register';//自定义的验证场景规则
            $res = $this->validate($param,$rule);//
            if($res !== true){
                return ['status'=>-1,'message'=>$res];
            }else{

                //检测账号和密码是否正确
                $account = trim($param['account']);
                $pwd = trim($param['pwd']);
                $result = AdminModel::where('account',$account)->find();

                if($result){
                    return ['status'=>-1,'message'=>'该用户已存在'];
                }

                $param['salt'] = substr(md5(uniqid('zhiyazai')), 0, 8);
                $param['pwd'] = md5($pwd.$param['salt']);

                $adminmes = AdminModel::create($param);
                if($adminmes->id > 0){
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

        $admin = AdminModel::get($param['id']);

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
