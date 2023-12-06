:: 自动生成新的版本号，然后发布
:: 65001 Unicode (UTF-8)
chcp 65001
@echo off
:: ########### 实时更新变量 ###########
setlocal enabledelayedexpansion
echo ********************** 同步root START **********************
php df dev:root
../df-php-root/p.bat
echo **********************  同步root END  **********************
pause
exit
endlocal
