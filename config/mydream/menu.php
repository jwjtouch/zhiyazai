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
                'url'      =>  'index/hello',
                'child'=>'',
            ],
            [
                'title'      =>  '所有商品',
                'url'      =>  '',
                'child' => [
                    [
                        'title' => '列表一',
                        'url' => 'list/list1',
                        'child'=>'',
                    ],
                    [
                        'title' => '列表二',
                        'url' => 'list/list2',
                        'child'=>'',
                    ],
                ],

            ],
            [
                'title'      =>  '解决方案',
                'url'      =>  '',
                'child' => [
                    [
                        'title' => '方案一',
                        'url' => 'list/list3',
                        'child'=>'',
                    ],
                    [
                        'title' => '方案二',
                        'url' => 'list/list4',
                        'child'=>'',
                    ],
                ],

            ],
            [
                'title'      =>  '云市场',
                'url'      =>  'list/list5',
                'child'=>'',
            ],

    ],
    'user'  =>  [
            [
                'title'      =>  '会员管理',
                'url'      =>  'member/index',
                'child'=>'',
            ],
            [
                'title'      =>  '管理员',
                'url'      =>  'admin/index',
                'child'=>'',
            ],

    ],
    'system'    =>  [
            [
                'title'      =>  '栏目管理',
                'url'      =>  'category/index',
                'child'=>'',
            ],
    ],
    'content'   =>  [
            [
                'title'      =>  '文章管理',
                'url'      =>  'article/index',
                'child'=>'',
            ],
    ],

];
