<?php
// 全局中间件定义文件
return [
    // 多语言检测
    \dfer\middleware\LangDetect::class,
    // 跨域
    \dfer\middleware\AllowCrossDomain::class,
    // Session初始化
    \think\middleware\SessionInit::class
];
