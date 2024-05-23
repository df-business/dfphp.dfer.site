<?php

// 事件定义文件
return [
    'bind' => [
    ],

    'listen' => [
        'AppInit'    => [
            '\dfer\listener\InitHookListener'
        ],
        'ModuleInit' => [
            '\dfer\listener\ModuleInitListener',
        ],
        'HttpRun'    => [],
        'HttpEnd'    => [],
        'LogLevel'   => [],
        'LogWrite'   => [],
        'AdminInit'  => [
            '\dfer\listener\AdminInitListener',
        ],
        'HomeInit'   => [
            '\dfer\listener\HomeLangListener'
        ],
    ],

    'subscribe' => [
    ],
];
