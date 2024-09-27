<?php
require "web.config.php";
class homeController {
	//------------------------------前端
	//-----------------主页
	//首页
	function index($param) {
		global $m;
		$home_layout = show("home_layout", 1);
		$home_column = show("home_column", -1, "id", "asc");
		$home_link = show("home_link");
		$home_music = show("home_music");

		//var_dump($home_layout);die();
		//访问量
		sql("update dt set val=val+1 where `key`='hits'");
		$m -> col_user_info();

		//           var_dump(json_decode(cache_r("home_layout")['value'])); //  die();

		include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'homeShare');
		//加载视图
	}

	function ly($param) {
		global $m;
		$home_column = show("home_column", 3, "id");
		include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'homeShare');
		//加载视图
	}

	static $db_hli = 'home_layout_img';
	function pic($param) {
		global $m;
		$img = show(self::$db_hli);
		include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'homeShare');
		//加载视图
	}

	function note($param) {
		global $m;
		$home_column = show("home_column", 2, "id");
		include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'homeShare');
		//加载视图
	}

	function music($param) {
		global $m;
		$home_column = show("home_column", 4, "id");
		$home_music = show("home_music");

		include   view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'homeShare');
		//加载视图
	}

	function link($param) {
		global $m;
		$home_column = show("home_column", 5, "id");
		$home_link = show("home_link");
		include   view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'homeShare');
		//加载视图
	}

	function js($param) {
		global $m;
		$home_column = show("home_column", 1, "id");
		include   view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'homeShare');
		//加载视图
	}

	function test() {
		echo '123123';
		begin('test');
		$r = query('select * from test');
		var_dump($r);
		$rt = query(sprintf("inasert into test (title) values ('%s')", 'dfdf'));
		affair($rt);
		commit();
		echo '<br>';
		$r = query('select * from test');
		var_dump($r);
		die();
	}

	//------------------------------------------------------留言

	static $db_mes = 'message';
	function Post_Msg() {
		$dt = $_POST['data'];
		//var_dump($dt);
		$dt["time"] = date("Y-m-d H:i:s");
		$id = 0;
		//add
		//var_dump($id);die();

		$myValue = update(self::$db_mes, $dt, $id);

		show_json($myValue, ($myValue > 0 ? '留言成功' : '留言失败'));

	}

	//删除
	function delPost_Msg($id) {

		$myValue = del(self::$db_mes, $id, "homepage/column/" . self::$db_mes);
	}

}
?>