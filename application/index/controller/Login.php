<?php
namespace app\index\controller;

use think\Controller;
use think\facade\Request;//导入请求对象的静态代理
use think\facade\Session;//导入缓存对象的静态代理
use app\common\model\Member as MemberModel;

class Login extends Controller
{
    //访问地址：http://jwjzhiyazai.com/index.php/index/Login/index
    public function index()
    {
       if(Session::has('member_id')){
           $this->redirect('index/index', ['type' => 'index']);
       }else{
           return $this->fetch('index',['title'=>'登录页面']);
       }

    }

    //登陆处理
    public function loginHandle()
    {
        if(Request::isAjax()){
            $nowtime = time();
            $param = Request::param();
            //验证器检测
            $rule = 'app\common\validate\Member.login';//自定义的验证场景规则
            $res = $this->validate($param,$rule);//
            if($res !== true){
                return ['status'=>-1,'message'=>$res];
            }else{

                //检测账号和密码是否正确
                $account = trim($param['account']);
                $pwd = trim($param['pwd']);
                $result = MemberModel::where('account',$account)->find();

                if(null == $result){
                    return ['status'=>-1,'message'=>'该用户不存在'];
                }else{
                    if(md5($pwd.$result->salt) != $result->pwd){
                        return ['status'=>-1,'message'=>'密码不正确'];
                    }

                    if($result->status == 0){
                        return ['status'=>-1,'message'=>'您的账号已被锁定'];
                    }
                }

                if(MemberModel::where('id',$result->id)
                    ->update(['login_time' => $nowtime])){

                    Session::set('member_id',$result->id);
                    Session::set('member_name',$result->name);
                    Session::set('member_account',$result->account);
                    return ['status'=>1,'message'=>'恭喜，登录成功'];
                }else{
                    return ['status'=>-1,'message'=>'更新用户状态失败'];
                }

            }


        }else{
            return ['status'=>-1,'message'=>'请求类型错误'];
        }

    }

    //用户退出登陆
    public function logout()
    {

        Session::clear();

        $this->redirect('login/index');
    }


}
