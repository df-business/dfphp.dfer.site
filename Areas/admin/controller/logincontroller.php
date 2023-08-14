<?php

require "web.config.php";

class loginController
{
    //--------------------------登陆
    public function index($param)
    {
        global $m, $_df;
        GetWeb();
        $m -> VerifyLogin();
        $err="";
        //接收post
        if (isset($_POST['submit'])) {
            $user_sm = $_POST['data'];
            $user = show_first("df", ['nm'=>$user_sm['nm']]);
            if ($user != null) {
                if ($user["pw"] == $user_sm["pw"] && $user["nm"] == $user_sm["nm"]) {
                    update('df', array('lastlogintime' => getTime(TIMESTAMP)), $user[0]);
																				// 设置session在cookie的保存时间
																				setcookie(session_name(), session_id(), time() + SESSION_EXPIRES, '/');
                    setSession($m -> data["ses"], array($user[0], strToHex($user["nm"]), strToHex($user["pw"])), "admin/home/index");
                }
            }
            $err="同志，请确定你的账号和密码";
        }
        include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'iconShare');
        //加载视图
    }

    public static $db_d = 'df';
    //-------------------------------------------修改头像
    public function changePic($param)
    {
        global $m;
        $output = show_first(self::$db_d, 1);
        include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
        //加载视图
    }

    //上传头像
    public function SetchangePic($param)
    {
        global $m;
        $dt = $_POST['data'];
        //logs(json_encode($dt) );
        $id = 1;
        $myValue = update(self::$db_d, $dt, $id, Enum::reloadParent);
    }

    //上传组件
    public function UpchangePic($name)
    {
        global $m;
        $myValue = upload_file($name, "500*500", 0, 'img/logo.png');
    }

    //-------------------------------------------设置密码

    public function setpwd($param)
    {
        global $m;
        $err = $_GET['err'];
        $id = getSession($m -> data["ses"]);
        $id = $id[0];
        $output = show_first(self::$db_d, $id);
        include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
        //加载视图
    }

    //更新密码
    public function Updatesetpwd($param)
    {
        global $m, $_df;
        $dt = $_POST['data'];
        $ndt["pw"] = $dt["npw"];
        $output = show_first(self::$db_d, $dt['Id']);
        if ($output['pw'] != $dt['pw'] || empty($dt['pw'])) {
            toUrl(sprintf("admin/login/setpwd"), array('err' => '原密码有误'));
        }

        $myValue = update(self::$db_d, $ndt, $dt['Id'], "admin/login/setpwd");
    }
}
