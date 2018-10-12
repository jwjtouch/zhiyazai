<?php
namespace app\mydream\controller;

use think\Controller;
use app\mydream\controller\Base;
use think\facade\Request;//导入请求对象的静态代理
use app\mydream\model\Admin as AdminModel;

class Admin extends Base
{	

    //列表页
    public function index()
    {

        return $this->fetch();
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
                    return ['status'=>1,'message'=>'添加成功'];
                }else{
                    return ['status'=>-1,'message'=>'添加失败'];
                }

            }


        }else{
            return ['status'=>-1,'message'=>'请求类型错误'];
        }
    }


}
