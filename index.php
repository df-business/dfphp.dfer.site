<?php
require "data/share.php";
try{
df();
if(isset($_GET['f'])){
	AddF($_GET['f']);
}

//初始页面	
$src =isset($_GET['s'])?$_GET['s']:(SEO?"index":"homepage");
debug(sprintf("当前页面原始路径：%s",$src));
$src=explode('/',$src);

//seo不影响后台
if(SEO&&$src[0]!="df"&&count($src)<=2)
{
$Area='homepage';
$c_name = 'home'.'controller'; 
$c_path ='Areas/'.$Area.'/controller/'.$c_name.'.php';

$action=empty($src[0])?'':$src[0];//方法
if(substr($action,-5)==".html")
$action=str_replace(".html","",$action);
$param = isset($src[1])?$src[1]:'0';//默认参数
if(substr($param,-5)==".html")
$param=str_replace(".html","",$param);
}
else{


$Area=$src[0];//区域
$controller=empty($src[1])?'home':$src[1];//控制器
$action=empty($src[2])?'index':$src[2];//方法
if(substr($action,-5)==".html")
$action=str_replace(".html","",$action);
$param = isset($src[3])?$src[3]:'Df';//默认参数
if(substr($param,-5)==".html")
$param=str_replace(".html","",$param);
//后台重定向
$Area=strtolower($Area)=='df'?'admin':$Area;
$c_name = $controller.'controller'; 
$c_path ='Areas/'.$Area.'/controller/'.$c_name.'.php';
}


 //开发模式
 if(DEV)
 file_exists($c_path) or die('控制器文件不存在:'.$c_path);
 else
 file_exists($c_path) or header("Location: /404.html"); 
 require($c_path); 
 $controller = new $c_name; 
 //开发模式
 if(DEV)
 method_exists($controller,$action) or die(sprintf('文件:%s<br>控制器、方法定义出错:%s %s',$c_path,json_encode($_GET),json_encode($src)));
 else
 method_exists($controller,$action) or header("Location: /404.html");
 $controller->$action(empty($param)?0:$param);
 
 }catch(Exception $e){
 	 header("Location: /404.html"); 
 }
?>