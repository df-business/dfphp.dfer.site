<?php
/*
	* ctrl必须用include才能调用到view
	*/
require "web.config.php";

class homeController
{

				//-----------------后台主页
				//首页
				public function index($param)
				{
								global $m;
								$id = $m -> VerifyLogin(1);
								if (!empty($_POST['top-search'])) {
												show_json(true, null, $_POST['top-search']);
								}
								//验证登录
								$output = show_first("df", ['Id'=>$id]);
								$hits = show_first("dt", ['key'=>'hits'])['val'];

								//留言
								$message = show_list("message", ['status'=>0]);
								$notepad = show_list(self::$db_N);
								if ($output['nm'] == 'df') {
												$where = '1';
												$output['role'] = "超级管理员";
								} else {
												$roles = show_first("roles", $output['role']);
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
								include    view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'iconShare');
								//加载视图

								//首页搜索，放在view之后才能加载到js自定义函数
				}

				//退出登陆
				public function ext($param)
				{
								setcookie(session_name(), session_id(), time()-1, '/');
								delSession($model -> data["ses"], "admin/login/index");
				}

				//后台信息汇总
				public function desktop($param)
				{
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//框架信息
				public function info($param)
				{
								global $m;
								$id = $m -> VerifyLogin(1);
		$PHP_VERSION=PHP_VERSION;
		$VERSION=VERSION;
		$DF_PHP_VER=DF_PHP_VER;
							$df=<<<EOT
										<!--layui-->
											<link rel="stylesheet" href="/assets/layui/css/layui.css" media="all">
											<!--<script src="/assets/layui/layui.js" charset="utf-8"></script>-->
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

				//-------------------------------记事本
				public static $db_N = 'notepad';
				public function notepad($param)
				{
								global $m;
								$output = show_list(self::$db_N, [], ['time','desc']);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				public function notepad_ss($param)
				{
								global $m;
								show_page(self::$db_N,[],"admin/home/".self::$db_N);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//修改记事本
				public function notepadadd($param)
				{
								global $m;
								$output = show_first(self::$db_N, ["Id"=>$param]);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//记事本上传组件
				public function notepadEditup($name)
				{
								global $m;
								$myValue = upload_file($name, 0, 1);
				}

				//预览记事本
				public function notepadview($param)
				{
								$output = show_first(self::$db_N, ["Id"=>$param]);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//更新数据
				public function notepadupdate()
				{
								$dt = $_POST['data'];
								$id = $_POST['id'];
								$myValue = update(self::$db_N, $dt, ["Id"=>$id], ("admin/home/" . self::$db_N));
				}

				//删除
				public function notepaddel($id)
				{
								$myValue = del(self::$db_N, $id, "admin/home/" . self::$db_N);
				}

				//-------------------------------用户
				public static $db_d = 'df';
				public function df($param)
				{
								global $m;
								$output = show_list(self::$db_d);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				public function dfadd($param)
				{
								global $m;
								$err = $_GET['err'];
								$output =show_first(self::$db_d, $param);
								$type = show_list(self::$db_roles);
								include view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				public function dfEditup($name)
				{
								global $m;
								$myValue = upload_file($name, 0, 1);
				}

				public function dfview($param)
				{
								$output = show(self::$db_d, $param);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//更新数据
				public function dfupdate()
				{
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
				public function dfdel($id)
				{
								if ($id == 1) {
												message('不允许删除此账号', "admin/home/" . self::$db_d);
								}
								$myValue = del(self::$db_d, $id, "admin/home/" . self::$db_d);
				}

				//-------------------------------用户权限
				public static $db_roles = 'roles';
				public function roles($param)
				{
								global $m;

								$output = show_list(self::$db_roles);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				public function rolesadd($param)
				{
								global $m;
								$err = $_GET['err'];
								$output = show_first(self::$db_roles, $param);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				public function rolesview($param)
				{
								$output = show_first(self::$db_roles, $param);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//更新数据
				public function rolesupdate()
				{
								$dt = $_POST['data'];
								$id = $_POST['id'];

								update(self::$db_roles, $dt, $id, ("admin/home/" . self::$db_roles));
				}

				//删除
				public function rolesdel($id)
				{
								$myValue = del(self::$db_roles, $id, "admin/home/" . self::$db_roles);
				}

				//-------------------------------访问者信息收集
				public static $db_guests = 'home_user_info';
				public function guests($param)
				{
								global $m;

								$output = show_list(self::$db_guests, [], ['id'=>'desc']);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//-------------------------------htm列表
				public static $db_htm = 'html';
				public function html($param)
				{
								global $m;
								$output = show_list(self::$db_htm);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//修改
				public function htmladd($param)
				{
								global $m;
								$output = show_first(self::$db_htm, $param);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//预览
				public function htmlview($param)
				{
								$output = shshow_firstow(self::$db_htm, $param);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//更新
				public function htmlupdate()
				{
								$dt = $_POST['data'];
								$id = $_POST['id'];

								$myValue = update(self::$db_htm, $dt, $id, ("admin/home/" . self::$db_htm));
				}

				//删除
				public function htmldel($id)
				{
								$myValue = del(self::$db_htm, $id, "admin/home/" . self::$db_htm);
				}

				//-------------------------------menu
				public static $db_menu = 'menu';
				public function menu($param)
				{
								global $m;

								$output = show_list(self::$db_menu, ['parent'=>empty($param)?'0':$param], ['orderNum','asc']);
								// var_dump($param);

								$parent = $_GET['parent'];
								$l_parent = explode(',', $parent);
								$l_parent_id=$l_parent[count($l_parent)-1];
								array_pop($l_parent);
								$l_parent=implode(',', $l_parent);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				public function menuadd($param)
				{
								global $m;
								$type = array('主页' => 'home', '文件夹' => 'folder', '文件' => 'file', '信息' => 'info', '表格' => 'table', '笔记' => 'book', '用户' => 'user', '用户群' => 'users', '记录' => 'history', '刷新' => 'refresh', '星号' => 'asterisk', '评论' => 'comments', '游戏' => 'gamepad', '链接' => 'link', '音乐' => 'music', '电影' => 'film', '锁' => 'lock', '列表' => 'list', '资金' => 'money', '播放' => 'play', 'bug' => 'bug', '地图' => 'map', '服务' => 'server', '云朵' => 'cloud', '闪电' => 'flash', '代码' => 'code', '旗帜' => 'flag', 'safari' => 'safari', '定位' => 'location-arrow', '保存' => 'save', '男人' => 'male', '女人' => 'female', '设置' => 'gear', );
								if ($param) {
												$output = show_first(self::$db_menu, $param);
								}
								if (empty($output)) {
												$output = table_init(self::$db_menu);
								}
								//		var_dump($output);
								$output['src'] = urldecode($output['src']);

								$parent = $_GET['parent'];
								$parent_id = $_GET['parent_id'];

								//var_dump(show_first('menu',$parent));
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				//更新数据
				public function menuupdate()
				{
								$dt = $_POST['data'];
								$dt['parent']=empty($dt['parent'])?0:$dt['parent'];
								$id = $_POST['id'];
								$dt['src'] = urlencode($dt['src']);
								$parent = $_POST['parent'];
								$myValue = update(self::$db_menu, $dt, $id, sprintf("admin/home/menu/%s&parent=%s", $dt['parent'], $parent));
				}

				//删除
				public function menudel($id)
				{
								$parent_id = $_GET['parent_id'];
								$parent = $_GET['parent'];
								$myValue = del(self::$db_menu, "Id={$id} or parent={$id}", sprintf("admin/home/menu/%s&parent=%s", $parent_id, $parent));
				}

				//---------------------------关于我
				public static $db_c = 'column';
				public function column($param)
				{
								global $m;
								$output = show_first(self::$db_c, 1);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				public function columnupdate()
				{
								global $m;
								$dt = $_POST['data'];
								$id = $_POST['id'];
								$myValue = update(self::$db_c, $dt, $id, ("admin/home/" . self::$db_c));
				}

				public function columnUp($name)
				{
								global $m;
								$myValue = upload_file($name, 0, 1);
								//不改变尺寸，属于富文本上传
				}

				//使用说明
				public function readme($param)
				{
								global $m;
								$output = show_first(self::$db_c, 1);
								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				/*
					*
					* 调试记录
					*
					*/
				public function log($param)
				{
								global $m, $_gp, $_df;

								if (!empty($_POST)) {
												clear('logs');
												show_json(1, 'clear');
								}

								$output = show_list('logs');

								include                           view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}

				/*
					* 清空服务器缓存
					*
					*/
				public function FreshCache($name)
				{
								global $m;

								//清空数据库缓存
								$db_cache = del("cache");
								//清空文件缓存
								$files_cache = $m -> deldir(ROOT . "cache");
								show_json($db_cache,[],$files_cache?'清除成功':'目录不存在');
				}

				/*
					* 生成静态页面
					* 将动态页面转化为静态可以大大提升访问速度，是优化网站的好办法
					* 可以提高网站在搜索引擎的收录率
					*
					* 建议一开始就在后台生成好，保证用户每次访问的都是现成的html页面
					*/
				public function createStaticPage($param)
				{
								global $m, $_gp, $_df;
								//生成静态页面
								$path = "static_pages";
								mkdirs($path);
								$list = show_list("html");
								$str = '';
								foreach ($list as $i) {
												$path = $i['fileN'] == 'index' ? '/' : $path;
												$fileN = sprintf("%s/%s/%s.html", ROOT, $path, $i['fileN']);
												//echo $fileN;
												$out = file_get_contents(SplitUrl($i['src']));
												fileW($fileN, $out);
												$file=sprintf("%s%s.html", $path, $i['fileN']);
												$str .= sprintf("<a href='%s' target='_blank'>%s</a>：已生成<br>", $file, $file);
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


								$str .= sprintf("<a href='%s' target='_blank'>%s(用来优化字体文件)</a>：已生成<br>", $path, $path);
								include view(__ROOT__, str_replace('Controller', '', __CLASS__), __FUNCTION__, 'backShare');
								//加载视图
				}
}
