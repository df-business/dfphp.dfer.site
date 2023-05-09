<?php
defined('INIT') or exit('Access Denied');
//设置时区
date_default_timezone_set("PRC");
//编码为utf-8
header("Content-Type:text/html; charset=utf-8");

//------------------------------------------------------------data
#开发模式开关（调试完之后关闭此开关，否则有泄露网站结构的风险）
$dev = 0;
#显示每次访问的地址
$server = "localhost";
$acc = "dfphp_dfer_site";
$pwd = "mMHBCAimbKKjPP67";
$database = "dfphp_dfer_site";
//email模块的开关
$email_enable = false;
//当前框架需要的最低php版本
$dfPHP_ver = "7";
//PC页面、手机页面分离开关
$wap_page_enable = true;
//seo优化模式
$seo = true;

//------------------------------------------------------------other

/*错误信息的控制
 * http://www.w3school.com.cn/php/php_error.asp
 */
$show_err = $dev ? 1 : 2;
if ($show_err == 1) {
	//显示所有错误
	ini_set('display_errors', '1');
	error_reporting(E_ALL);
} else if ($show_err == 2) {
	//屏蔽提示和警告信息
	ini_set('display_errors', '1');
	error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
} else if ($show_err == 0) {
	//屏蔽所有错误信息,主要用于美化界面，治标不治本
	error_reporting(0);
}
