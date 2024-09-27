<?php
define('VERSION', file_get_contents('VERSION'));

require "vendor/dfer/df-php-core/src/data/share.php";
if (is_file("data/share.php")) {
	require "data/share.php";
}

main();
