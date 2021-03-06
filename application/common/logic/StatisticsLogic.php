<?php
/**
 * Created by PhpStorm.
 * User: coolong
 * Date: 2018/10/6
 * Time: 19:39
 */
namespace app\common\logic;

use think\Model;
use think\facade\Config;
use app\mydream\model\Statistics as StatisticsModel;//统计模型

/**
 * 统计 逻辑定义
 * Class StatisticsLogic
 */
class StatisticsLogic extends Model
{
    /**
     * 分发操作
     * $controller 控制器名称
     * $operate 操作类型 inc添加 dec减少 get获取
     * $type 类型-默认为0,article的统计type为所属栏目的id
     */
    public function distribute($controller,$operate,$type=0)
    {
        if(Config::has('statistics.'.$controller)){
            $config = Config::get('statistics.'.$controller);
            if(array_key_exists($operate,$config) && $config[$operate]['status'] == 1) {
                if (strstr($operate,'inc')) {
                    $result = $this->addStatistics($config[$operate], $type);
                } elseif (strstr($operate,'dec')) {
                    $result = $this->delStatistics($config[$operate], $type);
                } elseif (strstr($operate,'get')){
                    $result = $this->getStatistics($config[$operate], $type);
                }else {
                    $result = ['status' => 0, 'message' => '不存在的操作类型'];
                }
            }else if($controller == 'article' && strstr($operate,'cateid') && $type != 0){
                //文章特殊处理
                $config =  [//增加操作
                'title' => '文章数量',
                'tablename' => 'article',
                'type' =>  $type,
                'status' =>  '1',
                ];
                if (strstr($operate,'inc')) {
                    $result = $this->addStatistics($config, $type);
                } elseif (strstr($operate,'dec')) {
                    $result = $this->delStatistics($config, $type);
                } elseif (strstr($operate,'get')){
                    $result = $this->getStatistics($config, $type);
                }else {
                    $result = ['status' => 0, 'message' => '不存在的操作类型'];
                }
            }else{
                $result = ['status'=>0,'message'=>'未开启数据统计'];
            }
        }else{
            $result = ['status'=>0,'message'=>'该控制器未开启数据统计'];
        }

        return $result;

    }

    /**
     * 获取计数统计
     * $controller 控制器名称
     * $action 方法名
     * $type 类型-默认为0
     */
    protected function getStatistics($config,$type=0)
    {

            //获取表名和类型
            $tablename = $config['tablename'];
            $type = $config['type'];
            if($statistics = StatisticsModel::where([
                'tablename'=>$tablename,
                'type'=>$type
            ])->find()){
                $result = ['status'=>1,'message'=>$statistics];
            }else{
                $result = ['status'=>0,'message'=>'该方法还没有数据统计'];
            }

            return $result;
    }


    /**
    * 增加计数统计
    * $controller 控制器名称
    * $action 方法名
    * $type 类型-默认为0
    */
    protected function addStatistics($config,$type=0)
    {
            //获取表名和类型
            $tablename = $config['tablename'];
            $type = $config['type'];

            $statistics = StatisticsModel::where([
                'tablename'=>$tablename,
                'type'=>$type
            ])->find();

            if($statistics){//更新数量

                $statistics->quantity  = ['inc', 1];
                if($statistics->save()){
                    $result = ['status'=>1,'message'=>'更新成功'];
                }else{
                    $result = ['status'=>0,'message'=>'更新失败'];
                }

            }else{//添加

                $statistics = StatisticsModel::create([
                    'tablename'  =>  $tablename,
                    'quantity' =>  '1',
                    'type' =>  $type,
                ]);
                if($statistics->id > 0){
                    $result = ['status'=>1,'message'=>'添加成功'];
                }else{
                    $result = ['status'=>0,'message'=>'添加失败'];
                }

            }

            return $result;

    }

    /**
     * 增加计数统计
     * $controller 控制器名称
     * $action 方法名
     * $type 类型-默认为0
     */
    protected function delStatistics($config,$type=0)
    {
        //获取表名和类型
        $tablename = $config['tablename'];
        $type = $config['type'];

        $statistics = StatisticsModel::where([
            'tablename'=>$tablename,
            'type'=>$type
        ])->find();

        if($statistics){//更新数量
            if($statistics->quantity > 0){
                $statistics->quantity  = ['dec', 1];
                if($statistics->save()){
                    $result = ['status'=>1,'message'=>'更新成功'];
                }else{
                    $result = ['status'=>0,'message'=>'更新失败'];
                }
            }else{
                $result = ['status'=>0,'message'=>'数据非大于0，不用更新'];
            }


        }else{//不存在
            $result = ['status'=>0,'message'=>'数据非大于0，不用更新'];
        }

        return $result;

    }
    

}