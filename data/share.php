<?php
//----------------------------------------------全局参数
//只有定义了这个参数才能够正常调用文件
define('INIT', 'df');
define('VERSION', '2.0');
define('DF', 'http://dfer.top/');
//当前时间
define('TIMESTAMP', time());
//网站根目录
define('ROOT', $_SERVER['DOCUMENT_ROOT'] . '/');
//访问者ip
define('IP', $_SERVER['REMOTE_ADDR']);
//开启缓存
Session_Start();
//-----------------------------------控制器共用
require ROOT . "data/db.php";
require_once ROOT . 'modules/functions.php';
require ROOT."vendor/autoload.php";

//调用模块
$m = m('model');
$m->php_ver_notice();


ob_start();   //使html内容可以擦除
//解除跨域限制
header("Access-Control-Allow-Origin: *");
/*
 * 自动将页面元素的http升级为https,默认以http方式访问网页无法获取https的数据，加入这个代码之后必须使用https的方式才能正常访问网页
 * 在https下访问http会被认为是不安全的操作，Safari会直接屏蔽该网页
 * 为了防止被屏蔽，应该让http自动升级为https
 */

define('SSL_STATE', empty($_SERVER['HTTPS']) ? false : $_SERVER['HTTPS']);
define('SSL', SSL_STATE ? 'https' : 'http');
//VAR_DUMP($_SERVER);
//VAR_DUMP(SSL_STATE);
$ssl = SSL_STATE;
if ($ssl) {
	header("Content-Security-Policy: upgrade-insecure-requests");
	define('SITE', 'https://' . $_SERVER['HTTP_HOST'] . '/');
	//当前域名
} else {
	//header("Content-Security-Policy: img-src *	");
	define('SITE', 'http://' . $_SERVER['HTTP_HOST'] . '/');
	//当前域名
}

//当前页面完整url
define('URL', htmlspecialchars_decode(SITE . 'index.php?' . htmlspecialchars($_SERVER['QUERY_STRING'])));

//mail
if ($email_enable)
	$mail = m('PHPMailer');

//常用方法文件
//全局参数df，以及获取传参的get和Post
$_df = $_GP = array();
//合并数组
$_GP = array_merge($_GET, $_POST, $_GP);
$_gp = $m -> ihtmlspecialchars($_GP);

//公用参数

$_df['logo'] = DF . "favicon.png";
$_df['author'] = '谷雨陈';
$_df['qq'] = '3504725309';
$_df['time'] = getTime(TIMESTAMP);
$_df['admin'] = show_first('dt', ['key'=>'admin']);
//配置参数，超级权限
$_df['admin'] = boolval($_df['admin']['val']);

//VAR_DUMP(SITE);
?>