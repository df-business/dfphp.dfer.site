<?php
defined('INIT') or exit('Access Denied');
require "config.php";

//------------------------------------------------------------数据库配置文件

//连接服务器
if (!isset($db)) {
	$con = mysqli_connect($server, $acc, $pwd);
	if (!$con) {
		echo "server [{$server}] connect fail";
		echo "<br>";
		die();
	}

	//判断数据库是否存在
	//var_dump(mysqli_select_db($con, "df"));
	if (mysqli_select_db($con, $database)) {
		@$db = new MySQLi($server, $acc, $pwd, $database);
		//连接数据库，忽略错误
		//当bool1为false就会执行bool2，当数据库出错就会输出字符并终止程序
		!mysqli_connect_error() or die("database [{$database}] error");
		//防止乱码
		$db -> query('set names utf8');
	} else {
		//数据库不存在会执行到这里（创建库之后自动刷新不会执行到这里）
		echo("database [{$database}] not exist <br> <a href='/data/create.php'>创建数据库</a>");
		//只有create状态下能够继续执行
		!empty($create) or die();
	}
}
?>