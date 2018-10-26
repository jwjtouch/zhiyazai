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
        'admin' => [//控制器（小写）
            'inc' => [//增加操作
                'title' => '增加管理员总数量',
                'tablename' => 'admin',
                'type' =>  '0',
                'status' =>  '1',
            ],
            'dec' => [//减少操作
                'title' => '减少管理员总数量',
                'tablename' => 'admin',
                'type' =>  '0',
                'status' =>  '1',
            ],
            'get' => [//获取操作
                'title' => '获取管理员总数量',
                'tablename' => 'admin',
                'type' =>  '0',
                'status' =>  '1',
            ],
        ],
        'member' => [//控制器（小写）
            'inc' => [//增加操作
                'title' => '增加会员总数量',
                'tablename' => 'member',
                'type' =>  '0',
                'status' =>  '1',
            ],
            'dec' => [//减少操作
                'title' => '减少会员总数量',
                'tablename' => 'member',
                'type' =>  '0',
                'status' =>  '1',
            ],
            'get' => [//获取操作
                'title' => '获取会员总数量',
                'tablename' => 'member',
                'type' =>  '0',
                'status' =>  '1',
            ],
        ],
        'category' => [//控制器（小写）
            'inc' => [//增加操作
                'title' => '增加栏目总数量',
                'tablename' => 'category',
                'type' =>  '0',
                'status' =>  '1',
            ],
            'dec' => [//减少操作
                'title' => '减少栏目总数量',
                'tablename' => 'category',
                'type' =>  '0',
                'status' =>  '1',
            ],
            'get' => [//获取操作
                'title' => '获取栏目总数量',
                'tablename' => 'category',
                'type' =>  '0',
                'status' =>  '1',
            ],
        ],
        'article' => [//控制器（小写）
            'inc' => [//增加操作
                'title' => '增加文章总数量',
                'tablename' => 'article',
                'type' =>  '0',
                'status' =>  '1',
            ],
            'dec' => [//减少操作
                'title' => '减少文章总数量',
                'tablename' => 'article',
                'type' =>  '0',
                'status' =>  '1',
            ],
            'get' => [//获取操作
                'title' => '获取文章总数量',
                'tablename' => 'article',
                'type' =>  '0',
                'status' =>  '1',
            ]
        ],
               
];
