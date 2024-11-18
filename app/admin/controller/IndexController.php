<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-present http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 小夏 < 449134904@qq.com>
// +----------------------------------------------------------------------
namespace app\admin\controller;

use dfer\controller\AdminBaseController;
use think\facade\Db;
use app\admin\model\AdminMenuModel;
use app\admin\service\AdminMenuService;

class IndexController extends AdminBaseController
{

    public function initialize()
    {
        $adminSettings = dfer_get_option('admin_settings');

        if (
            empty($adminSettings['admin_password'])
            || ($adminSettings['admin_password'] == str_replace('.html', '', $this->request->pathinfo()))
        ) {
            $adminId = dfer_get_current_admin_id();
            if (empty($adminId)) {
                //设置后台登录加密码
                session("__LOGIN_BY_CMF_ADMIN_PW__", 1);
            }
        }

        parent::initialize();
    }

    /**
     * 后台首页
     */
    public function index()
    {
        return $this->fetch();
    }
}
