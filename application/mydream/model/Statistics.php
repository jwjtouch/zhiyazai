<?php
/**
 * Created by PhpStorm.
 * User: coolong
 * Date: 2018/10/6
 * Time: 19:39
 */
namespace app\mydream\model;

use think\Model;

class Statistics extends Model
{
    protected $pk = 'id';//默认主键
    protected $table = 'zyz_statistics';//当前模型绑定的数据表

    protected $autoWriteTimestamp = true;//开启自动时间戳

    //定义时间戳字段名：默认为create_time和update_time,如果一致可省略
    //如果想关闭某个时间戳字段，将值设置为false即可：$create_time = false;
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    public function addStatistics(){

    }


    

}