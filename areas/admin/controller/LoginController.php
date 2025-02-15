<?php

/**
 * +----------------------------------------------------------------------
 * | 后台登录
 * +----------------------------------------------------------------------
 *                                            ...     .............
 *                                          ..   .:!o&*&&&&&ooooo&; .
 *                                        ..  .!*%*o!;.
 *                                      ..  !*%*!.      ...
 *                                     .  ;$$!.   .....
 *                          ........... .*#&   ...
 *                                     :$$: ...
 *                          .;;;;;;;:::#%      ...
 *                        . *@ooooo&&&#@***&&;.   .
 *                        . *@       .@%.::;&%$*!. . .
 *          ................!@;......$@:      :@@$.
 *                          .@!   ..!@&.:::::::*@@*.:..............
 *        . :!!!!!!!!!!ooooo&@$*%%%*#@&*&&&&&&&*@@$&&&oooooooooooo.
 *        . :!!!!!!!!;;!;;:::@#;::.;@*         *@@o
 *                           @$    &@!.....  .*@@&................
 *          ................:@* .  ##.     .o#@%;
 *                        . &@%..:;@$:;!o&*$#*;  ..
 *                        . ;@@#$$$@#**&o!;:   ..
 *                           :;:: !@;        ..
 *                               ;@*........
 *                       ....   !@* ..
 *                 ......    .!%$! ..     | AUTHOR: dfer
 *         ......        .;o*%*!  .       | EMAIL: df_business@qq.com
 *                .:;;o&***o;.   .        | QQ: 3504725309
 *        .;;!o&****&&o;:.    ..          | WEBSITE: http://www.dfer.site
 * +----------------------------------------------------------------------
 *
 */

namespace areas\admin\controller;

use areas\admin\model\{UserModel};
use areas\admin\validate\{LoginValidate};
use Dfer\DfPhpCore\Modules\Statics\{Lang, Mysql};
use Dfer\Tools\Statics\{Common};

class LoginController extends BaseController
{

    protected function initialize() {}

    // ********************** 登陆 START **********************
    public function index($param)
    {
        if ($this->user) {
            to_url('admin/home/index');
        }
        // var_dump(post());
        //接收post
        if (post()) {
            $user_sm = post('data');
            $result = LoginValidate::check($user_sm);
            // var_dump($result);die;
            if (!$result->status) {
                $this->notice($result->error);
            } else {
                $user = UserModel::where(['nm' => $user_sm['nm']])->first();
                if ($user != null) {
                    if ($user["nm"] == $user_sm["nm"] && $user["pw"] == $user_sm["pw"]) {
                        UserModel::where($user[0])->update(array('last_login_time' => Common::getTime(TIMESTAMP)));
                        // 设置session在cookie的保存时间
                        cookie_set(session_name(), session_id(), SESSION_EXPIRES);
                        session_set(\ENUM::USER_BACK, array('id' => $user[0], 'name' => Common::strToHex($user["nm"]),  'password' => Common::strToHex($user["pw"])));
                        to_url("admin/home/index");
                    }
                }
                $this->notice('同志，请确定你的账号和密码');
            }
        }
        $this->view(get_defined_vars(), 'iconShare');
    }
    // **********************  登陆 END  **********************

    /**
     * 数据库初始化
     * @param {Object} $var 变量
     **/
    public function createDb($var = null)
    {
        global $db;
        Mysql::create($db);
    }
}
