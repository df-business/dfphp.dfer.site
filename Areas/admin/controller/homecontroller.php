<?php
/*
 * ctrl必须用include才能调用到view
 */
require "web.config.php";

class homeController {

	//-----------------后台主页
	//首页
	function index($param) {
		global $m;

		$id = $m -> VerifyLogin(1);

		if (!empty($_POST['top-search'])) {
			show_json(true, null, $_POST['top-search']);
		}

		//验证登录
		$output = show("df", $id);
		$dt = show("dt", 'hits', 'key','')['val'];

		//留言
		$message = show("message", 0, 'status',' ');	
		
		$notepad = show(self::$db_N, -1);	
//				var_dump($dt);
		//$this->FreshCache();
		if ($output['nm'] == 'df') {
			$where = '1';
			$output['role'] = "超级管理员";
		} else {
			$roles = show("roles", $output['role']);
			$output['role'] = $roles['nm'];
			$roles = $roles['roles'];
			$roles = explode('|', $roles);

			foreach ($roles as $v) {
				$role[] = array('id', $v);
			}
			$w = sqlWhere($role, 'or');
			$where = "{$w}";
		}
		//var_dump($output);
		$sql = "select * from menu where parent=0 and ({$where}) order by orderNum asc";
		//echo $sql;
		$menu = show($sql, 'sql');

		include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'iconShare');
		//加载视图

		//首页搜索，放在view之后才能加载到js自定义函数

	}

	//退出登陆
	function ext($param) {

		delSession($model -> data["ses"], "admin/login/index");

	}

	//后台信息汇总
	function desktop($param) {
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	//框架信息
	function info($param) {
		global $m;
		$id = $m -> VerifyLogin(1);
		//验证登录
		echo phpinfo();
	}

	//-------------------------------记事本
	static $db_N = 'notepad';
	function notepad($param) {
		global $m;
		$output = show(self::$db_N, -1);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	//修改记事本
	function notepadadd($param) {
		global $m;
		$output = show(self::$db_N, $param);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	//记事本上传组件
	function notepadEditup($name) {
		global $m;
		$myValue = upload_file($name, 0, 1);
	}

	//预览记事本
	function notepadview($param) {

		$output = show(self::$db_N, $param);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	//更新数据
	function notepadupdate() {
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_N, $dt, $id, ("admin/home/" . self::$db_N));
	}

	//删除
	function notepaddel($id) {

		$myValue = del(self::$db_N, $id, "admin/home/" . self::$db_N);
	}

	//-------------------------------用户
	static $db_d = 'df';
	function df($param) {
		global $m;

		$output = show(self::$db_d, -1);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	function dfadd($param) {
		global $m;
		$err = $_GET['err'];
		$output = show(self::$db_d, $param);
		$type = show(self::$db_roles, -1);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	function dfEditup($name) {
		global $m;
		$myValue = upload_file($name, 0, 1);
	}

	function dfview($param) {

		$output = show(self::$db_d, $param);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	//更新数据
	function dfupdate() {
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$output = show("df", $dt['nm'], 'nm');

		//新增
		if ($output == null || $id > 0) {
			$dt['lastlogintime'] = getTime(TIMESTAMP);
			update(self::$db_d, $dt, $id, ("admin/home/" . self::$db_d));
		}
		//修改
		else {
			toUrl(sprintf("admin/home/%sadd", self::$db_d), array('err' => '用户已经存在'));
		}
	}

	//删除
	function dfdel($id) {
		//	var_dump($id==1)   ;
		//	die($id==1);
		if ($id == 1)
			toUrl("admin/home/" . self::$db_d);

		$myValue = del(self::$db_d, $id, "admin/home/" . self::$db_d);
	}

	//-------------------------------用户权限
	static $db_roles = 'roles';
	function roles($param) {
		global $m;

		$output = show(self::$db_roles, -1);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	function rolesadd($param) {
		global $m;
		$err = $_GET['err'];
		$output = show(self::$db_roles, $param);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	function rolesview($param) {

		$output = show(self::$db_roles, $param);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	//更新数据
	function rolesupdate() {
		$dt = $_POST['data'];
		$id = $_POST['id'];

		update(self::$db_roles, $dt, $id, ("admin/home/" . self::$db_roles));

	}

	//删除
	function rolesdel($id) {

		$myValue = del(self::$db_roles, $id, "admin/home/" . self::$db_roles);
	}

	//-------------------------------访问者信息收集
	static $db_guests = 'home_user_info';
	function guests($param) {
		global $m;

		$output = show(self::$db_guests, -1, 'id', 'desc');
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	//-------------------------------htm列表
	static $db_htm = 'html';
	function html($param) {
		global $m;
		$output = show(self::$db_htm, -1);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	//修改
	function htmladd($param) {
		global $m;
		$output = show(self::$db_htm, $param);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	//预览
	function htmlview($param) {

		$output = show(self::$db_htm, $param);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	//更新
	function htmlupdate() {
		$dt = $_POST['data'];
		$id = $_POST['id'];

		$myValue = update(self::$db_htm, $dt, $id, ("admin/home/" . self::$db_htm));
	}

	//删除
	function htmldel($id) {

		$myValue = del(self::$db_htm, $id, "admin/home/" . self::$db_htm);
	}

	//-------------------------------menu
	static $db_menu = 'menu';
	function menu($param) {
		global $m;
		$output = show(self::$db_menu, $param, 'parent', 'order by orderNum asc');
		// var_dump($param);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	function menuadd($param) {
		global $m;
		$type = array('主页' => 'home', '文件夹' => 'folder', '文件' => 'file', '信息' => 'info', '表格' => 'table', '笔记' => 'book', '用户' => 'user', '用户群' => 'users', '记录' => 'history', '刷新' => 'refresh', '星号' => 'asterisk', '评论' => 'comments', '游戏' => 'gamepad', '链接' => 'link', '音乐' => 'music', '电影' => 'film', '锁' => 'lock', '列表' => 'list', '资金' => 'money', '播放' => 'play', 'bug' => 'bug', '地图' => 'map', '服务' => 'server', '云朵' => 'cloud', '闪电' => 'flash', '代码' => 'code', '旗帜' => 'flag', 'safari' => 'safari', '定位' => 'location-arrow', '保存' => 'save', '男人' => 'male', '女人' => 'female', '设置' => 'gear', );
		$output = show(self::$db_menu, $param);
		if (empty($output)) {
			$output = table_init(self::$db_menu);
		}
//		var_dump($output);
		$output['src'] = urldecode($output['src']);
		
		$parent = $_GET['parent'];
		

		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图

	}

	//更新数据
	function menuupdate() {
		$dt = $_POST['data'];
		$id = $_POST['id'];
		$dt['src'] = urlencode($dt['src']);
		$myValue = update(self::$db_menu, $dt, $id, 'admin/home/menu/' . $dt['parent']);
	}

	//删除
	function menudel($id) {

		$myValue = del(self::$db_menu, "Id={$id} or parent={$id}", "admin/home/menu");
	}

	//---------------------------关于我
	static $db_c = 'column';
	function column($param) {
		global $m;
		$output = show(self::$db_c, 1);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	function columnupdate() {
		global $m;
		$dt = $_POST['data'];
		$id = $_POST['id'];
		$myValue = update(self::$db_c, $dt, $id, ("admin/home/" . self::$db_c));
	}

	function columnUp($name) {
		global $m;
		$myValue = upload_file($name, 0, 1);
		//不改变尺寸，属于富文本上传
	}

	//使用说明
	function readme($param) {
		global $m;
		$output = show(self::$db_c, 1);
		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	/*
	 *
	 * 调试记录
	 *
	 */
	function log($param) {
		global $m, $_gp, $_df;

		if (!empty($_POST)) {
			clear('logs');
			show_json(1, 'clear');
		}

		$output = show('logs', -1);

		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

	/*
	 * 清空服务器缓存
	 *
	 */
	function FreshCache($name) {
		global $m;

		//清空数据库缓存
		$db_cache = JsonClear("cache");
		//清空文件缓存
		$files_cache = $m -> deldir(ROOT . "cache");
		show_json($db_cache && $files_cache);
	}

	/*
	 * 生成静态页面
	 * 将动态页面转化为静态可以大大提升访问速度，是优化网站的好办法
	 * 可以提高网站在搜索引擎的收录率
	 *
	 * 建议一开始就在后台生成好，保证用户每次访问的都是现成的html页面
	 */
	function createStaticPage($param) {
		global $m, $_gp, $_df;
		//生成静态页面
		$path = "static_pages";
		mkdirs($path);
		$list = show("html");
		$str = '';
		foreach ($list as $i) {
			$path = $i['fileN'] == 'index' ? '/' : $path;
			$fileN = sprintf("%s/%s/%s.htm", ROOT, $path, $i['fileN']);
			//echo $fileN;
			$out = file_get_contents(SplitUrl($i['src']));
			fileW($fileN, $out);
			$str .= sprintf("%s%s.htm：已生成<br>", $path, $i['fileN']);

		}

		//根据主页内的文字生成html页面，用来制作字体
		$body = file_get_contents(SplitUrl('homepage/home'));
		$body = getChinese($body);

		//$fileN=sprintf("%s/module/shell/font-spider/font.html",ROOT);

		$path = '/modules/font-spider/font.html';
		$fileN = sprintf("%s%s", ROOT, $path);
		//		echo $fileN;
		$s = sprintf('<html><head><meta charset="UTF-8"><link rel="stylesheet" href="font-awesome.css"></head><body>%s</body></html>', $body);

		//echo html($s);
		fileW($fileN, $s);
		$str .= sprintf("%s(用来优化字体文件)：已生成<br>", $path);

		include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
		//加载视图
	}

}
