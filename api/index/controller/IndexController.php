<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-present http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: Dean <zxxjjforever@163.com>
// +----------------------------------------------------------------------
namespace api\index\controller;

use dfer\controller\RestBaseController;

class IndexController extends RestBaseController
{
    public function index()
    {
        $this->success("恭喜您,API访问成功!", [
            'version' => '1.1.0',
            'doc'     => 'http://www.thinkcmf.com/cmf5api.html'
        ]);
    }

}