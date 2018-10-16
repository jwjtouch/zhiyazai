<?php
/**
 * Created by PhpStorm.
 * User: coolong
 * Date: 2018/10/6
 * Time: 19:39
 */
namespace app\common\model;

use think\Model;

class Member extends Model
{
    protected $pk = 'id';//默认主键
    protected $table = 'zyz_member';//当前模型绑定的数据表

    protected $autoWriteTimestamp = true;//开启自动时间戳

    //定义时间戳字段名：默认为create_time和update_time,如果一致可省略
    //如果想关闭某个时间戳字段，将值设置为false即可：$create_time = false;
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    //通过获取器获取时间格式格式的登录时间
    public function getLoginTimeAttr($value)
    {
        return $value == ''? '' : date("Y-m-d H:i:s",$value);
    }

}