<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// +----------------------------------------------------------------------
// | 统计表设置
// +----------------------------------------------------------------------
/**
 * title 要统计的名称
 * tablename 要统计的表名
 * type 统计类型 0默认，根据表的具体情况设定
 * status 是否开启统计0不开启1开启
 */

return [
        [   
            'title' => '管理员总数量',
            'tablename' => 'admin',
            'type' =>  '0',
            'status' =>  '1',
        ],
       
];
