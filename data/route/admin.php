<?php
use think\facade\Route;

Route::get('df$', 'admin/Index/index');
Route::get('login$', 'admin/Public/login');
Route::get('new_captcha', "\\dfer\\controller\\CaptchaController@index");
