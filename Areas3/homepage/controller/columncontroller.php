<?php

require "web.config.php";

class columnController {

	//----------------后台
	//--------------------------------栏目
	static $db_hc = 'home_column';
	function home_column($param) {
		global $m;
		$output = show_list(self::$db_hc, [],'asc');
		include  view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	function home_columnadd($param) {
		global $m;
		$output = show_first(self::$db_hc, $param);
		include  view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	function home_columnupdate() {
		global $m;
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_hc, $dt, $id, ("homepage/column/" . self::$db_hc));
	}

	//删除
	function home_columndel($id) {
		global $m;
		$myValue = del(self::$db_hc, $id, "homepage/column/" . self::$db_hc);
	}

	//富文本上传组件
	function home_columnEditUp($name) {
		global $m;
		$myValue = upload_file($name, 0, 1);
	}

	//单文件上传组件
	function home_columnUp($name) {
		global $m;
		$myValue = upload_file($name);
	}

	//--------------------------------留言板
	static $db_mes = 'message';
	public function message($param) {
		global $m;
		$output = show_list(self::$db_mes,[], ["time"=>'desc']);
		include  view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	//预览
	function messageview($param) {

		$output = show_first(self::$db_mes, $param);
		update(self::$db_mes, ["status"=>true],$param);
		include  view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	//--------------------------------链接
	static $db_hl = 'home_link';
	public function home_link($param) {
		global $m;
		$output = show_list(self::$db_hl);

		include  view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	function home_linkadd($param) {
		global $m;
		$output = show_first(self::$db_hl, $param);
		include  view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
	}

	function home_linkupdate() {

		global $m;
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_hl, $dt, $id, ("homepage/column/" . self::$db_hl));
	}

	//删除
	function home_linkdel($id) {
		global $m;
		$myValue = del(self::$db_hl, $id, "homepage/column/" . self::$db_hl);
	}

	//--------------------------------音乐
	static $db_hm = 'home_music';
	public function home_music($param) {

		global $m;
		$output = show_list(self::$db_hm);
		include  view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	function home_musicadd($param) {
		global $m;

		$output = $param != 0 ? show_first(self::$db_hm, $param) : "";
		include  view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	function home_musicupdate() {

		global $m;
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_hm, $dt, $id, ("homepage/column/" . self::$db_hm));
	}

	//删除
	function home_musicdel($id) {
		global $m;
		$myValue = del(self::$db_hm, $id, "homepage/column/" . self::$db_hm);
	}

	//上传组件
	function home_musicUp($name) {
		global $m;
		$myValue = upload_file($name);
	}

	//--------------------------------布局
	static $db_hlo = 'home_layout';
	static $db_hli = 'home_layout_img';
	function home_layout($param = 1) {
		global $m;
		$output = show_first(self::$db_hlo, $param);
		$img = show_list(self::$db_hli);
		//var_dump($img);
		include  view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	function home_layoutupdate() {

		global $m;
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_hlo, $dt, $id, sprintf("homepage/column/%s/1", self::$db_hlo));
	}

	//上传组件
	//主页背景图
	function home_layoutPicUp($name) {
		global $m;
		//$myValue =upload_file($name,"1920*1280");
		//不限制尺寸
		$myValue = upload_file($name);
		$dt['img'] = $myValue;
		insert(self::$db_hli, $dt);

	}

	function home_layoutUp($name) {
		global $m;
		$myValue = upload_file($name);

	}

	//图片删除
	function home_layoutPicDel($name) {
		global $_gp, $m;
		$id = $_gp['id'];
		$img = show_first(self::$db_hli, $id);
		$rt = del(self::$db_hli, $id) . ',';
		$rt .= $m -> delfile($img['img']);
		show_json(1, $rt);
	}

}
?>