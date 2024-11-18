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
