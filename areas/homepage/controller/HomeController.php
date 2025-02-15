<?php

/**
 * +----------------------------------------------------------------------
 * | 首页控制器
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

namespace areas\homepage\controller;

use areas\admin\model\{ArticleModel, LinkModel, MusicModel, MessageModel, ConfigModel};
use Dfer\DfPhpCore\Modules\Statics\{Mysql, Lang};

class HomeController extends BaseController
{

    /**
     * 首页
     * @param {Object} $param
     */
    public function index($param)
    {
        $layout = ConfigModel::where(['key' => 'layout'])->value('val');
        $column = ArticleModel::order(["id" => "asc"])->select();
        $link = LinkModel::select();
        $music = MusicModel::select();
        // var_dump($column);
        //访问量
        Mysql::run(str("update {0} set val=val+1 where `key`='hits'", [ConfigModel::getName()]));
        $this->colUserInfo();
        $this->view(get_defined_vars());
    }

    /**
     * 使用说明
     * @param {Object} $param
     */
    public function readme($param)
    {
        $output = ArticleModel::order('asc')->select();
        $this->view(get_defined_vars());
    }

    // ********************** 留言 START **********************
    public function postMsg()
    {
        $dt = post('data');
        //var_dump($dt);
        $dt["time"] = date("Y-m-d H:i:s");
        $id = 0; //add
        //var_dump($id);die();
        $ret = MessageModel::where($id)->update($dt);
        show_json($ret, null, '留言成功', '留言失败');
    }
    // **********************  留言 END  **********************

}
