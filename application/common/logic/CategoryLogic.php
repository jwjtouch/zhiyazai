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

    protected static $defaultShow = 1;


    /**
     * 获取栏目树
     * $pid 树的根节点的pid
     * $type 获取栏目的类型 0全部类型 1开启类型 2关闭类型
     * $deep 获取的栏目深度 0获取所有层级的栏目
     */
    public function getCateTree($pid = 0,$type = 0,$field = 'id,title,pid,rank,status',$sort = 'rank asc,id asc',$deep=0)
    {
        $map = [];
        //栏目类型
        if($type != 0){
            $status = $type == 1 ? 1 : 0;
            $map[] = ['status','=',$status];
        }

        //获取所有栏目
        if($deep == 0){
            $category = CategoryModel::where($map)
                ->field($field)
                ->order($sort)
                ->select()
                ->toArray();
        }else if($deep == 2){
            $map1[] = ['pid','=','0'];
            $map2[] = ['pid','IN',function ($query) {
                $query->table('zyz_category')->where('pid', 0)->field('id');
            }];
            $category = db('category')
                ->whereOr([$map1,$map2])
                ->where($map)
                ->select();

        }

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
                    $v[$name] = '';
                    $v['url'] = 'article/index/cate_id/'.$v['id'];
                    if(self::$defaultShow == 1)
                    {
                        $v['show'] = 1;
                        self::$defaultShow = 0;
                    }else{
                        $v['show'] = 0;
                    }
                }else{
                    $v['url'] = '';
                    $v['show'] = 0;
                }
                $arr[] = $v;
            }
        }
        return $arr;
    }


}