<?php
namespace app\mydream\controller;

use think\Controller;
use think\captcha\Captcha;

class Login extends Controller
{
    public function index()
    {
        //访问地址：http://jwjzhiyazai.com/mydream.php/mydream/Login/index
        return $this->fetch('index',['title'=>'登录页面']);
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
