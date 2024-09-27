<?php

use Dfer\Tools\Files;

class HomeController
{

	/**
		* 首页
		* @param {Object} $param
		*/
	public function index($param)
	{
		global $m, $common;
		$id = $m->verifyLogin(1);
		if (!empty($_POST['top-search'])) {
			$common->showJson(true, null, $_POST['top-search']);
		}
		//验证登录
		$output = showFirst("df", ['Id' => $id]);
		$hits = showFirst("dt", ['key' => 'hits'])['val'];

		//留言
		$message = showList("message", ['status' => 0]);
		$notepad = showList(self::$db_n);
		if ($output['nm'] == 'df') {
			$where = '1';
			$output['role'] = "超级管理员";
		} else {
			$roles = showFirst("roles", $output['role']);
			$output['role'] = $roles['nm'];
			$roles = $roles['roles'];
			$roles = explode('|', $roles);

			foreach ($roles as $v) {
				$role[] = array('id', $v);
			}
			$w = sqlWhere($role, 'or');
			$where = "{$w}";
		}
		$sql = "select * from menu where parent=0 and ({$where}) order by orderNum asc";
		$menu = show($sql);
		include viewBack('iconShare');
	}

	/**
		* 退出登陆
		* @param {Object} $param
		*/
	public function ext($param)
	{
		setcookie(session_name(), session_id(), time() - 1, '/');
		delSession($model->data["ses"], "admin/login/index");
	}

	/**
		* 起始页
		* @param {Object} $param
		*/
	public function desktop($param)
	{
		include viewBack();
		}

	/**
		* 框架信息
		* @param {Object} $param
		*/
	public function info($param)
	{
		global $m;
		$id = $m->verifyLogin(1);
		$PHP_VERSION = PHP_VERSION;
		$VERSION = VERSION;
		$DF_PHP_VER = DF_PHP_VER;
		$df = <<<EOT
				<!-- ********************** layui START ********************** -->
				<link href="//unpkg.com/layui@2.8.15/dist/css/layui.css" rel="stylesheet">
				<script src="//unpkg.com/layui@2.8.15/dist/layui.js"></script>
				<!-- **********************  layui END  ********************** -->
				<table class="layui-table" style="width: 50%;">
							<colgroup>
									<col width="35%">
									<col width="65%">
							</colgroup>
							<thead>
									<tr>
											<th colspan="2">配置信息</th>
									</tr>
							</thead>
							<tbody>
									<tr>
											<td>php 当前版本</td>
											<td>{$PHP_VERSION}</td>
									</tr>
									<tr>
											<td>php 最低版本</td>
											<td>{$DF_PHP_VER}</td>
									</tr>
									<tr>
											<td>DfPHP 当前版本</td>
											<td>{$VERSION}</td>
									</tr>

							</tbody>
				</table>
				EOT;
		die($df);
	}

	// ********************** 记事本 START **********************

	public static $db_n = 'notepad';
	public function notepad($param)
	{
		global $m;
		$output = showList(self::$db_n, [], ['time', 'desc']);
		include viewBack();
		}

	/**
		* 修改记事本
		* @param {Object} $param
		*/
	public function notepadAdd($param)
	{
		global $m;
		$output = showFirst(self::$db_n, ["Id" => $param]);
		include viewBack();
		}

	/**
		* 记事本上传组件
		* @param {Object} $name
		*/
	public function notepadEditUp($name)
	{
		global $files,$common;
		$common->showJsonBase($files->uploadFile(Files::UPLOAD_UMEDITOR_EDITOR));
	}

	/**
		* 预览记事本
		* @param {Object} $param
		*/
	public function notepadView($param)
	{
		$output = showFirst(self::$db_n, ["Id" => $param]);
		include viewBack();
		}

	/**
		* 更新数据
		*/
	public function notepadUpdate()
	{
		$dt = $_POST['data'];
		$id = $_POST['id'];
		$myValue = update(self::$db_n, $dt, ["Id" => $id], ("admin/home/" . self::$db_n));
	}

	/**
		* 删除
		* @param {Object} $id
		*/
	public function notepadDel($id)
	{
		$myValue = del(self::$db_n, $id, "admin/home/" . self::$db_n);
	}


	public function notepadSs($param)
	{
		showPage(self::$db_n, [], str("admin/home/{0}_ss",[self::$db_n]));
		include viewBack();
		}

		/**
			* 修改记事本
			* @param {Object} $param
			*/
		public function notepadSsAdd($param)
		{
			global $m;
			$output = showFirst(self::$db_n, ["Id" => $param]);
			include viewBack();
			}

			/**
				* 删除
				* @param {Object} $id
				*/
			public function notepadSsDel($id)
			{
				$myValue = del(self::$db_n, $id,  str("admin/home/{0}_ss",[self::$db_n]));
			}

			/**
				* 更新数据
				*/
			public function notepadSsUpdate()
			{
				$dt = $_POST['data'];
				$id = $_POST['id'];
				$myValue = update(self::$db_n, $dt, ["Id" => $id], str("admin/home/{0}_ss",[self::$db_n]));
			}


		/**
			* 预览记事本
			* @param {Object} $param
			*/
		public function notepadSsView($param)
		{
			$output = showFirst(self::$db_n, ["Id" => $param]);
			include viewBack();
			}

	// **********************  记事本 END  **********************

	// ********************** 用户 START **********************

	public static $db_d = 'df';
	public function df($param)
	{
		$output = showList(self::$db_d);
		include viewBack();
	}

	public function dfAdd($param)
	{
		$err = $_GET['err'];
		$output = showFirst(self::$db_d, $param);
		$type = showList(self::$db_roles);
		// var_dump($output);
		include viewBack();
	}

	public function dfEditUp($name)
	{
		global $files,$common;
		$common->showJsonBase($files->uploadFile(Files::UPLOAD_UMEDITOR_EDITOR));
	}

	public function dfView($param)
	{
		$output = show(self::$db_d, $param);
		include viewBack();
	}

	//更新数据
	public function dfUpdate()
	{
		global $common;
		$dt = $_POST['data'];
		$id = $_POST['id'];
		$output = showFirst("df", ['nm'=>$dt['nm']]);

		//新增
		if ($output == null || $id > 0) {
			$dt['lastlogintime'] = $common->getTime(TIMESTAMP);
			update(self::$db_d, $dt, $id, "admin/home/" . self::$db_d);
		}
		//修改
		else {
			toUrl(str("admin/home/{0}_add", [self::$db_d]), array('err' => '用户已经存在'));
		}
	}

	//删除
	public function dfDel($id)
	{
		if ($id == 1) {
			message('不允许删除此账号', "admin/home/" . self::$db_d);
		}
		$myValue = del(self::$db_d, $id, "admin/home/" . self::$db_d);
	}

	// **********************  用户 END  **********************


	// ********************** 权限 START **********************


	public static $db_roles = 'roles';
	public function roles($param)
	{

		$output = showList(self::$db_roles);
		include viewBack();
	}

	public function rolesAdd($param)
	{
		global $m;
		$err = $_GET['err'];
		$output = showFirst(self::$db_roles, $param);
		include viewBack();
	}

	public function rolesView($param)
	{
		$output = showFirst(self::$db_roles, $param);
		include viewBack();
	}

	/**
		* 更新数据
		*/
	public function rolesUpdate()
	{
		$dt = $_POST['data'];
		$id = $_POST['id'];

		update(self::$db_roles, $dt, $id, "admin/home/" . self::$db_roles);
	}

	/**
		* 删除
		* @param {Object} $id
		*/
	public function rolesDel($id)
	{
		$myValue = del(self::$db_roles, $id, "admin/home/" . self::$db_roles);
	}

	// **********************  权限 END  **********************

	// ********************** 访问信息收集 START **********************

	public static $db_guests = 'home_user_info';
	public function guests($param)
	{
		$output = showList(self::$db_guests, [], ['id' => 'desc']);
		include viewBack();
	}

	// **********************  访问信息收集 END  **********************

// ********************** 静态页面列表 START **********************

	public static $db_htm = 'html';
	public function html($param)
	{
		$output = showList(self::$db_htm);
		include viewBack();
	}

	/**
		* 修改
		* @param {Object} $param
		*/
	public function htmlAdd($param)
	{
		$output = showFirst(self::$db_htm, $param);
		include viewBack();
	}

	/**
		* 预览
		* @param {Object} $param
		*/
	public function htmlView($param)
	{
		$output = showFirstow(self::$db_htm, $param);
		include viewBack();
	}

	/**
		* 更新
		*/
	public function htmlUpdate()
	{
		$dt = $_POST['data'];
		$id = $_POST['id'];
		$myValue = update(self::$db_htm, $dt, $id, ("admin/home/" . self::$db_htm));
	}

	/**
		* 删除
		* @param {Object} $id
		*/
	public function htmlDel($id)
	{
		$myValue = del(self::$db_htm, $id, "admin/home/" . self::$db_htm);
	}

// **********************  静态页面列表 END  **********************

	// ********************** 菜单 START **********************

	public static $db_menu = 'menu';
	public function menu($param)
	{
		global $m;
		$output = showList(self::$db_menu, ['parent' => empty($param) ? '0' : $param], ['orderNum', 'asc']);
		$parent = get('parent');
		$l_parent = explode(',', $parent);
		$l_parent_id = $l_parent[count($l_parent) - 1];
		array_pop($l_parent);
		$l_parent = implode(',', $l_parent);
		include  viewBack();
	}

	public function menuAdd($param)
	{
		$type = array('主页' => 'home', '文件夹' => 'folder', '文件' => 'file', '信息' => 'info', '表格' => 'table', '笔记' => 'book', '用户' => 'user', '用户群' => 'users', '记录' => 'history', '刷新' => 'refresh', '星号' => 'asterisk', '评论' => 'comments', '游戏' => 'gamepad', '链接' => 'link', '音乐' => 'music', '电影' => 'film', '锁' => 'lock', '列表' => 'list', '资金' => 'money', '播放' => 'play', 'bug' => 'bug', '地图' => 'map', '服务' => 'server', '云朵' => 'cloud', '闪电' => 'flash', '代码' => 'code', '旗帜' => 'flag', 'safari' => 'safari', '定位' => 'location-arrow', '保存' => 'save', '男人' => 'male', '女人' => 'female', '设置' => 'gear',);
		if ($param) {
			$output = showFirst(self::$db_menu, $param);
		}
		if (empty($output)) {
			$output = tableInit(self::$db_menu);
		}
		//		var_dump($output);
		$output['src'] = urldecode($output['src']);

		$parent = $_GET['parent'];
		$parent_id = $_GET['parent_id'];

		include viewBack();
	}

	/**
		* 更新数据
		*/
	public function menuUpdate()
	{
		$dt = $_POST['data'];
		$dt['parent'] = empty($dt['parent']) ? 0 : $dt['parent'];
		$id = $_POST['id'];
		$dt['src'] = urlencode($dt['src']);
		$parent = $_POST['parent'];
		$myValue = update(self::$db_menu, $dt, $id, sprintf("admin/home/menu/%s&parent=%s", $dt['parent'], $parent));
	}

	/**
		* 删除
		* @param {Object} $id
		*/
	public function menuDel($id)
	{
		$parent_id = $_GET['parent_id'];
		$parent = $_GET['parent'];
		$myValue = del(self::$db_menu, "Id={$id} or parent={$id}", sprintf("admin/home/menu/%s&parent=%s", $parent_id, $parent));
	}

	// **********************  菜单 END  **********************

	// ********************** 栏目 START **********************

	public static $db_c = 'column';
	public function column($param)
	{
		global $m;
		$output = showFirst(self::$db_c, 1);
		include viewBack();
	}

	public function columnUpdate()
	{
		global $m;
		$dt = $_POST['data'];
		$id = $_POST['id'];
		$myValue = update(self::$db_c, $dt, $id, ("admin/home/" . self::$db_c));
	}

	public function columnEditUp($name)
	{
		global $files,$common;
		$common->showJsonBase($files->uploadFile(Files::UPLOAD_UMEDITOR_EDITOR));
	}

	// **********************  栏目 END  **********************


	/**
		* 使用说明
		* @param {Object} $param
		*/
	public function readme($param)
	{
		global $m;
		$output = showFirst(self::$db_c, 1);
		include viewBack();
	}

/**
	* 调试记录
	* @param {Object} $param
	*/
	public function log($param)
	{
		global $common;
		if (!empty($_POST)) {
			clear('logs');
			$common->showJson(1, 'clear');
		}

		$output = showList('logs');
		include viewBack();
	}

	/**
		* 清空服务器缓存
		* @param {Object} $name
		*/
	public function freshCache($name)
	{
		global $files,$common;

		//清空数据库缓存
		$db_cache = del("cache");
		//清空文件缓存
		$files_cache = $files->deldir(ROOT . "data\cache");
		$common->showJson($db_cache, [], $files_cache ? '数据库、文件清除成功' : '目录不存在');
	}

/**
	* 生成静态页面
	* 将动态页面转化为静态可以大大提升访问速度，是优化网站的好办法
	* 可以提高网站在搜索引擎的收录率
	*
	* 建议一开始就在后台生成好，保证用户每次访问的都是现成的html页面
	* @param {Object} $param
	*/
	public function createStaticPage($param)
	{
		global $common, $_gp, $_df, $files;
		//生成静态页面
		$path = "data/static_pages";
		$files->mkdirs($path);
		$list = showList("html");
		$str = '';
		foreach ($list as $i) {
			// $path = $i['fileN'] == 'index' ? '/' : $path;
			$fileN = sprintf("%s/%s/%s.html", ROOT, $path, $i['fileN']);
			//echo $fileN;
			$out = file_get_contents(splitUrl($i['src']));
			$files->fileW($fileN, $out);
			$file = sprintf("%s%s.html", $path, $i['fileN']);
			$str .= sprintf("<a href='%s' target='_blank'>%s</a>：已生成<br>", $file, $file);
		}

		//根据主页内的文字生成html页面，用来制作字体
		$body = file_get_contents(splitUrl('homepage/home'));
		$body = $common->getChinese($body);

		//$fileN=sprintf("%s/module/shell/font-spider/font.html",ROOT);

		$path = '/data/cache/font.html';
		$fileN = sprintf("%s%s", ROOT, $path);
		//		echo $fileN;
		$s = sprintf('<html><head><meta charset="UTF-8"><link rel="stylesheet" href="font-awesome.css"></head><body>%s</body></html>', $body);

		// var_dump($fileN,$s);die;
		$files->fileW($fileN, $s);
		$str .= sprintf("<a href='%s' target='_blank'>%s(用来优化字体文件)</a>：已生成<br>", $path, $path);
		include viewBack();
	}
}
