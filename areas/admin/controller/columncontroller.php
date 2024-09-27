<?php

use Dfer\Tools\Files;
class ColumnController {


	// ********************** 栏目管理 START **********************

	static $db_hc = 'home_column';
	function homeColumn($param) {
		global $m;
		$output = showList(self::$db_hc, [],'asc');
		include  viewBack();
	}

	function homeColumnAdd($param) {
		global $m;
		$output = showFirst(self::$db_hc, $param);
		include  viewBack();
	}

	function homeColumnUpdate() {
		global $m;
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_hc, $dt, $id, ("admin/column/" . self::$db_hc));
	}

	/**
		* 删除
		* @param {Object} $id
		*/
	function homeColumnDel($id) {
		$myValue = del(self::$db_hc, $id, "admin/column/" . self::$db_hc);
	}

	/**
		* 富文本上传组件
		* @param {Object} $name
		*/
	function homeColumnEditUp($name) {
		global $files,$common;
		$common->showJsonBase($files->uploadFile(Files::UPLOAD_UMEDITOR_EDITOR));
	}

	/**
		* 单文件上传组件
		* @param {Object} $name
		*/
	function homeColumnUp($name) {
		global $files,$common;
		$common->showJsonBase($files->uploadFile(Files::UPLOAD_WEB_UPLOADER));
	}

	// **********************  栏目管理 END  **********************

	// ********************** 留言管理 START **********************

	static $db_mes = 'message';
	public function message($param) {
		global $m;
		$output = showList(self::$db_mes,[], ["time"=>'desc']);
		include  viewBack();
	}

	/**
		* 预览
		* @param {Object} $param
		*/
	function messageView($param) {

		$output = showFirst(self::$db_mes, $param);
		update(self::$db_mes, ["status"=>true],$param);
		include  viewBack();
	}

	// **********************  留言管理 END  **********************


	// ********************** 链接管理 START **********************

	static $db_hl = 'home_link';
	public function homeLink($param) {
		global $m;
		$output = showList(self::$db_hl);

		include  viewBack();
	}

	function homeLinkAdd($param) {
		global $m;
		$output = showFirst(self::$db_hl, $param);
		include  viewBack();
	}

	function homeLinkUpdate() {

		global $m;
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_hl, $dt, $id, ("admin/column/" . self::$db_hl));
	}

	/**
		* 删除
		* @param {Object} $id
		*/
	function homeLinkDel($id) {
		global $m;
		$myValue = del(self::$db_hl, $id, "admin/column/" . self::$db_hl);
	}

	// **********************  链接管理 END  **********************


	// ********************** 音乐管理 START **********************

	static $db_hm = 'home_music';
	public function homeMusic($param) {

		global $m;
		$output = showList(self::$db_hm);
		include  viewBack();
	}

	function homeMusicAdd($param) {
		global $m;

		$output = $param != 0 ? showFirst(self::$db_hm, $param) : "";
		include  viewBack();
	}

	function homeMusicUpdate() {

		global $m;
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_hm, $dt, $id, ("admin/column/" . self::$db_hm));
	}

	/**
		* 删除
		* @param {Object} $id
		*/
	function homeMusicDel($id) {
		global $m;
		$myValue = del(self::$db_hm, $id, "admin/column/" . self::$db_hm);
	}

	/**
		* 上传组件
		* @param {Object} $name
		*/
	function homeMusicUp($name) {
		global $files,$common;
		$common->showJsonBase($files->uploadFile(Files::UPLOAD_WEB_UPLOADER));
	}

	// **********************  音乐管理 END  **********************


	// ********************** 布局 START **********************

	static $db_hlo = 'home_layout';
	static $db_hli = 'home_layout_img';
	function homeLayout($param = 1) {
		$output = showFirst(self::$db_hlo, $param);
		$img = showList(self::$db_hli);
		//var_dump($img);
		include  viewBack();
	}

	function homeLayoutUpdate() {
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_hlo, $dt, $id, sprintf("admin/column/%s/1", self::$db_hlo));
	}

	/**
		* 主页背景图
		* @param {Object} $name
		*/
	function homeLayoutPicUp($name) {
		global $files,$common;
		$dt['img'] = $files->uploadFile(Files::UPLOAD_WEB_UPLOADER);
		insert(self::$db_hli, $dt);
		//不限制尺寸
		$common->showJsonBase($dt['img']);
	}

	function homeLayoutUp($name) {
		global $common;
		$common->showJsonBase($files->uploadFile(Files::UPLOAD_WEB_UPLOADER));
	}

	/**
		* 图片删除
		* @param {Object} $name
		*/
	function homeLayoutPicDel($name) {
		global $_gp, $files,$common;
		$id = $_gp['id'];
		$img = showFirst(self::$db_hli, $id);
		$rt = del(self::$db_hli, $id) . ',';
		$rt .= $files -> delFile($img['img']);
		$common->showJson(1, $rt);
	}

	// **********************  布局 END  **********************

}
?>
