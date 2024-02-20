:: 自动生成新的版本号，然后发布
:: 65001 Unicode (UTF-8)
chcp 65001
@echo off
:: ########### 实时更新变量 ###########
setlocal enabledelayedexpansion

echo ********************** 一键发布 START **********************
echo;
set cache=version

:: ########### 获取版本号 ###########
if exist %cache% (
	:: ########### 从version文件读取最近一次版本号 ###########
	set /p ver_str=<!cache!
	for /f "tokens=1-3 delims=." %%a in ("!ver_str!") do (
		set /a a=%%a,b=%%b,c=%%c
	)
	:: ########### 生成新版本号 ###########
	set /a ver_int=!a!*100+!b!*10+!c!+1
	set aa=!ver_int:~0,1!
	set bb=!ver_int:~1,1!
	set cc=!ver_int:~2,1!
	set "ver=!aa!.!bb!.!cc!"
) else (
	:: ########### 默认版本号 ###########
	set ver_str=0.0.0
	set ver=1.0.0
)
:: ########### 保存版本号 ###########
echo !ver!>!cache!

:: ########### 提交git ###########
git add *
git commit -m !ver!
git push
git tag !ver!
git push --tag
echo;
echo *********** !ver_str! ^> %ver% ***********
echo;
echo **********************  一键发布 END  **********************

pause
exit
endlocal
