<?php

require "web.config.php";

class loginController {
	//--------------------------登陆
	function index($param) {
		global $m, $_df;
		GetWeb();
		$m -> VerifyLogin();
		//接收post
		if (isset($_POST['submit'])) {
			$user_sm = $_POST['data'];
//			var_dump($user_sm);
			
			$user = show("df", $user_sm['nm'], 'nm');
//			var_dump($user);
			if ($user != null)
				if ($user["pw"] == $user_sm["pw"] && $user["nm"] == $user_sm["nm"]) {
					update('df', array('lastlogintime' => getTime(TIMESTAMP)), $user[0]);
					setSession($m -> data["ses"], array($user[0], strToHex($user["nm"]), strToHex($user["pw"])), "admin/home/index");
				}
			runJs("<script>$('[veri-for=\"pw\"]').html('同志，请确定你的账号和密码')</script>");
		}
		include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'iconShare');
		//加载视图
	}

	static $db_d = 'df';
	//-------------------------------------------修改头像
	function changePic($param) {
		global $m;
		$output = show(self::$db_d, 1);
		include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	//上传头像
	function SetchangePic($param) {
		global $m;
		$dt = $_POST['data'];
		//logs(json_encode($dt) );
		$id = 1;
		$myValue = update(self::$db_d, $dt, $id, 'rP');
	}

	//上传组件
	function UpchangePic($name) {
		global $m;
		$myValue = upload_file($name, "500*500", 0, 'img/logo.png');
	}

	//-------------------------------------------设置密码

	function setpwd($param) {
		global $m;
		$err = $_GET['err'];
		$id = getSession($m -> data["ses"]);
		$id = $id[0];
		$output = show(self::$db_d, $id);
		//  var_dump($id);
		include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	//更新密码
	function Updatesetpwd($param) {
		global $m, $_df;
		$dt = $_POST['data'];
		$ndt["pw"] = $dt["npw"];
		$output = show(self::$db_d, $dt['Id']);
		if ($output['pw'] != $dt['pw'] || empty($dt['pw']))
			toUrl(sprintf("admin/login/setpwd"), array('err' => '原密码有误'));

		$myValue = update(self::$db_d, $ndt, $dt['Id'], "admin/login/setpwd");
	}

}