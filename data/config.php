<?php	
defined('INIT') or exit('Access Denied');
//设置时区
date_default_timezone_set("PRC");
//编码为utf-8
header("Content-Type:text/html; charset=utf-8");


//------------------------------------------------------------data
$dev=FALSE;	#开发模式开关（调试完之后关闭此开关，否则有泄露网站结构的风险）
$dev_showSrc=0;#显示每次访问的地址
$server="localhost";
$acc="root";
$pwd="xxx";
$database="df_homepage";
$email_enable=false;//email模块的开关
$dfPHP_ver="7";//当前框架需要的最低php版本
//PC页面、手机页面分离开关
$wap_page_enable = true;

//------------------------------------------------------------other



/*错误信息的控制
 * http://www.w3school.com.cn/php/php_error.asp
 */
$show_err = $dev ? 1 : 2;
if ($show_err == 1) {
	//显示提示和警告信息
	ini_set('display_errors', '1');
} else if ($show_err == 2) {
	//屏蔽提示和警告信息
	error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
	ini_set('display_errors', '1');
} else if ($show_err == 0) {
	error_reporting(0);
	//屏蔽所有错误信息,主要用于美化界面，治标不治本
}
