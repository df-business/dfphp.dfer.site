<?php
require "data/share.php";
try{
df();
if(isset($_GET['f'])){
	AddF($_GET['f']);
}

//初始页面	
$src =isset($_GET['s'])?$_GET['s']:"homepage";
if($dev&&$dev_showSrc)
echo sprintf("当前页面原始路径：%s<br>",$src);
$src=explode('/',$src);

$Area=$src[0];//区域
$controller=empty($src[1])?'home':$src[1];//控制器
$action=empty($src[2])?'index':$src[2];//方法
$param = isset($src[3])?$src[3]:'Df';//默认参数

//后台重定向
$Area=strtolower($Area)=='df'?'admin':$Area;
$c_name = $controller.'controller'; 
$c_path ='Areas/'.$Area.'/controller/'.$c_name.'.php';
 //开发模式
 if($dev)
 file_exists($c_path) or die('控制器文件不存在:'.$c_path);
 else
 file_exists($c_path) or header("Location: /error.html"); 
 require($c_path); 
 $controller = new $c_name; 
 //开发模式
 if($dev)
 method_exists($controller,$action) or die(sprintf('文件:%s<br>控制器、方法定义出错:[%s][%s]',$c_path,json_encode($controller),$action));
 else
 method_exists($controller,$action) or header("Location: /error.html");
 $controller->$action($param); 
 
 }catch(Exception $e){
 	 header("Location: /error.html"); 
 }
?>