<?php

namespace app\index\controller;

use dfer\controller\BaseController;
use dfer\controller\HomeBaseController;
class IndexController extends HomeBaseController
{
    public function index()
    {
     return $this->fetch();
    }

    public function hello($name = 'ThinkPHP8')
    {
        return 'hello,' . $name;
    }
}
