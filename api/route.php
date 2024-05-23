<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-present http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Released under the MIT License.
// +----------------------------------------------------------------------
// | Author: Dean <zxxjjforever@163.com>
// +----------------------------------------------------------------------
$apps = dfer_scan_dir(DFER_ROOT . 'api/*', GLOB_ONLYDIR);

foreach ($apps as $app) {
    $routeFile = DFER_ROOT . 'api/' . $app . '/route.php';

    if (file_exists($routeFile)) {
        include_once $routeFile;
    }
}

$coreApps = dfer_scan_dir(DFER_ROOT . 'vendor/thinkcmf/cmf-api/src/*', GLOB_ONLYDIR);

foreach ($coreApps as $app) {
    $routeFile = DFER_ROOT . 'vendor/thinkcmf/cmf-api/src/' . $app . '/route.php';

    if (file_exists($routeFile)) {
        include_once $routeFile;
    }
}

//if (file_exists(CMF_DATA . "conf/route.php")) {
//    $runtimeRoutes = include CMF_DATA . "conf/route.php";
//} else {
//    $runtimeRoutes = [];
//}

//return $runtimeRoutes;
