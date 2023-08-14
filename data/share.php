<?php
// 所有文件的主入口
define('INIT', 'df');

//-----------------------------------基础配置
//使html内容可以擦除
ob_start();
//开启缓存
Session_Start();
//设置时区
date_default_timezone_set("PRC");
//编码为utf-8
header("Content-Type:text/html; charset=utf-8");
//解除跨域限制
header("Access-Control-Allow-Origin: *");


//-----------------------------------调用基础对象
require "config.php";
require_once ROOT . 'modules/functions.php';
require ROOT."vendor/autoload.php";
/*-----------------------------------错误信息的控制
 * http://www.w3school.com.cn/php/php_error.asp
 */
$show_err = DEV ? 1 : 2;
if ($show_err == 1) {
    //显示所有错误
    ini_set('display_errors', '1');
    error_reporting(E_ALL);
} elseif ($show_err == 2) {
    //屏蔽提示和警告信息
    ini_set('display_errors', '1');
    error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
} elseif ($show_err == 0) {
    //屏蔽所有错误信息,主要用于美化界面，治标不治本
    error_reporting(0);
}
//-----------------------------------模块
//调用公共模块
$m = m('model');
$m->php_ver_notice();
//mail
if (EMAIL_ENABLE)
	$mail = m('PHPMailer');

//-----------------------------------数据库
$db_status=0;
//连接服务器
if (!isset($db)) {
    $con = mysqli_connect(SERVER, ACC, PWD);
    if (!$con) {
        echo "server [{$server}] connect fail";
        echo "<br>";
        die();
    }
				$database=DATABASE;
    //判断数据库是否存在
    var_dump(mysqli_select_db($con, $database));
    if (mysqli_select_db($con, $database)) {
        @$db = new MySQLi(SERVER, ACC, PWD, $database);
        //连接数据库，忽略错误
        //当bool1为false就会执行bool2，当数据库出错就会输出字符并终止程序
        !mysqli_connect_error() or die("database [{$database}] error");
        //防止乱码
        $db -> query('set names utf8');
								$db_status=1;
								//-----------------------------------基础参数
								if($db_status==1)
								{
								// //合并数组
								// $_GP = array_merge($_GET, $_POST);
								// $_gp = $m -> ihtmlspecialchars($_GP);

								// //公用参数
								// $_df=[
								// 	'logo'=> DF . "favicon.png",
								// 	'author'=> "谷雨陈",
								// 	'qq'=> "3504725309",
								// 	'time'=> getTime(TIMESTAMP),
								// 	'admin'=>boolval(show_first('dt', ['key'=>'admin'])['val'])
								// ];
								}
    } else {
        //数据库不存在会执行到这里（创建库之后自动刷新不会执行到这里）
        echo("database [{$database}] not exist <br> <a href='/data/create.php'>创建数据库</a>");
        //只有create状态下能够继续执行
        !empty($create) or die();
    }
}


