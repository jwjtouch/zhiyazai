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
    * 添加计数统计
    * $controller 控制器名称
    * $action 方法名
    * $type 类型-默认为0
    */
    public function addStatistics($controller,$action,$type=0)
    {
    	if(Config::has('statistics.'.$controller.$action)){
    		$config = Config::get('statistics.'.$controller.$action);
    		if($config['status'] == 1){//开启统计
                //获取表名和类型
                $tablename = $config['tablename'];
                $type = $config['type'];
                if($statistics = StatisticsModel::where([
                    'tablename'=>$tablename,
                    'type'=>$type
                    ])->find()){//更新数量
                    $statistics->quantity  = ['inc', 1];
                    $statistics->save();
                }else{//添加
                    $statistics = StatisticsModel::create([
                        'tablename'  =>  'thinkphp',
                        'quantity' =>  'thinkphp@qq.com',
                        'type' =>  'thinkphp@qq.com',
                    ]);
                }
    		}else{//关闭统计

    		}
    	}else{

    	}


    }


    

}