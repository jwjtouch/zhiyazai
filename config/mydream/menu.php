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
// | 后台菜单设置
// +----------------------------------------------------------------------

return [
    'index'  =>  [
            [
                'title'      =>  '首页',
                'url'      =>  'index/main',
                'show' => '1',
                'child'=>'',
            ],

    ],
    'user'  =>  [
            [
                'title'      =>  '会员管理',
                'url'      =>  'member/index',
                'show' => '1',
                'child'=>'',
            ],
            [
                'title'      =>  '管理员',
                'url'      =>  'admin/index',
                'show' => '0',
                'child'=>'',
            ],

    ],
    'system'    =>  [
            [
                'title'      =>  '栏目管理',
                'url'      =>  'category/index',
                'show' => '1',
                'child'=>'',
            ],
    ],

];
