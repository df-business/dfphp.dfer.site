<?php	
defined('INIT') or exit('Access Denied');
$url=explode("/",dirname(__FILE__));
if(count($url)<3)//兼容windows
$url=explode("\\",dirname(__FILE__));
define("__ROOT__",$url[count($url)-2]);  	
