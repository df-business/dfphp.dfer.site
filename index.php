<?php
define('VERSION', '2.1.2');

require "vendor/dfer/df-php-core/src/data/share.php";
if(is_file("data/share.php")){
require "data/share.php";
}
try{
df();
if(isset($_GET['f'])){
	AddF($_GET['f']);
}

//初始页面
$src =isset($_GET['s'])?$_GET['s']:(SEO?"index":THEME_HOMEPAGE);
debug(sprintf("当前页面原始路径：%s",$src));
$src=explode('/',$src);

//seo不影响后台
if(SEO&&$src[0]!="df"&&count($src)<=2)
{
$area_name=THEME_HOMEPAGE;
$ctrl_name = 'home'.'controller';
$ctrl_path ='areas/'.$area_name.'/controller/'.$ctrl_name.'.php';

$action_name=empty($src[0])?'':$src[0];//方法
if(substr($action_name,-5)==".html")
$action_name=str_replace(".html","",$action_name);
$param = isset($src[1])?$src[1]:'0';//默认参数
if(substr($param,-5)==".html")
$param=str_replace(".html","",$param);
}
else{
$area_name=$src[0];//区域
$controller=empty($src[1])?'home':$src[1];//控制器
$action_name=empty($src[2])?'index':$src[2];//方法
if(substr($action_name,-5)==".html")
$action_name=str_replace(".html","",$action_name);
$param = isset($src[3])?$src[3]:'Df';//默认参数
if(substr($param,-5)==".html")
$param=str_replace(".html","",$param);
//后台重定向
$area_name=strtolower($area_name)=='df'?THEME_ADMIN:$area_name;
$ctrl_name = $controller.'controller';
$ctrl_path ='areas/'.$area_name.'/controller/'.$ctrl_name.'.php';
}

	$_df['area']=$area_name;
	$_df['ctrl']=str_replace('controller',"",$ctrl_name);
	$_df['action']=$action_name;

 //开发模式
 if(DEV)
 file_exists($ctrl_path) or die('控制器文件不存在:'.$ctrl_path);
 else
 file_exists($ctrl_path) or header("Location: /404.html");
 require($ctrl_path);
 $controller = new $ctrl_name;
 //开发模式
 if(DEV)
 method_exists($controller,$action_name) or die(sprintf('文件:%s<br>控制器、方法定义出错:%s %s',$ctrl_path,json_encode($_GET),json_encode($src)));
 else
 method_exists($controller,$action_name) or header("Location: /404.html");
 $controller->$action_name(empty($param)?0:$param);
 }catch(Exception $e){
 	 header("Location: /404.html");
 }
?>
