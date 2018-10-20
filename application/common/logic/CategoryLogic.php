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
use app\common\model\Category as CategoryModel;//统计模型

/**
 * 栏目 逻辑定义
 * Class CategoryLogic
 */
class CategoryLogic extends Model
{

    /**
     * 获取栏目树
     * $pid 树的根节点的pid
     * $type 获取栏目的类型 0全部类型 1开启类型 2关闭类型
     */
    public function getCateTree($pid = 0,$type = 0,$field = 'id,title,pid,rank,status',$sort = 'rank desc,id desc')
    {
        $map = [];
        //栏目类型
        if($type != 0){
            $status = $type == 1 ? 1 : 0;
            $map[] = ['status','=',$status];
        }

        //获取所有栏目
        $category = CategoryModel::where($map)
            ->order($sort)
            ->column($field);

        //获取指定根节点的栏目树
        $items = self::unlimitedForLayer($category,$name='child',$pid);
        return $items;

    }

    /***
     * 生成目录树
     * $array数据
     * $pid 根节点pid
     */
    //组合多维数组
    public static function unlimitedForLayer($arrdata,$name='child',$pid=0)
    {
        $arr = array();
        foreach($arrdata as $k=>$v){
            if($v['pid'] == $pid){
                $v[$name] = self::unlimitedForLayer($arrdata,$name,$v['id']);
                if(empty($v[$name])){
                    $v['url'] = 'article/index';

                }else{
                    $v['url'] = '';
                }
                $arr[] = $v;
            }
        }
        return $arr;
    }


}