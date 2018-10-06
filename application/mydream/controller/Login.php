<?php
namespace app\mydream\controller;

use think\Controller;
use think\captcha\Captcha;
use think\facade\Request;//导入请求对象的静态代理
use think\facade\Session;//导入缓存对象的静态代理
use app\mydream\model\Admin as AdminModel;

class Login extends Controller
{
    public function index()
    {
        //访问地址：http://jwjzhiyazai.com/mydream.php/mydream/Login/index
        return $this->fetch('index',['title'=>'登录页面']);
    }

    //登陆处理
    public function loginHandle()
    {
        if(Request::isAjax()){
            $nowtime = time();
            $param = Request::param();
            //验证器检测
            $rule = 'app\common\validate\Admin.login';//自定义的验证场景规则
            $res = $this->validate($param,$rule);//
            if($res !== true){
                return ['status'=>-1,'message'=>$res];
            }else{
                //检测输入的验证码是否正确
                $captcha = new Captcha();
                if( !$captcha->check($param['captcode']))
                {
                    // 验证失败
                    return ['status'=>-1,'message'=>'验证码错误'];
                }

                //检测账号和密码是否正确
                $account = trim($param['account']);
                $pwd = trim($param['pwd']);
                $result = AdminModel::where('account',$account)->find();

                if(null == $result){
                    return ['status'=>-1,'message'=>'该用户不存在'];
                }else{
                    if(md5($pwd.$result->salt) != $result->pwd){
                        return ['status'=>-1,'message'=>'密码不正确'];
                    }
                }

                if(AdminModel::where('id',$result->id)
                    ->update(['login_time' => $nowtime])){

                    Session::set('admin_id',$result->id);
                    Session::set('admin_name',$result->name);
                    Session::set('admin_account',$result->account);
                    return ['status'=>1,'message'=>'恭喜，登录成功'];
                }else{
                    return ['status'=>-1,'message'=>'更新用户状态失败'];
                }

            }


        }else{
            return ['status'=>-1,'message'=>'请求类型错误'];
        }

    }

    //TODO 未实现
    public function register()
    {
        $param = Request::instance()->param();
        $param['pwdsalt'] = substr(md5(uniqid('weteam')), 0, 8);
        $param['password'] = md5($param['password'].$param['pwdsalt']);
        $param['create_time'] = time();
        $param['status'] = 1;
        if (Db::name('user')->insert($param)) {
            $this->success('注册成功！', config('default_login'), '', 2);
        } else {
            $this->error('注册失败');
        }
    }

    //获取验证码
    public function getcaptcha(){
        $captcha = new Captcha(config('captcha.'));
        return $captcha->entry();
    }
}
