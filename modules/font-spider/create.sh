#!/bin/bash
: '

#根据页面内容和自定义字体，生成精简的字体文件（只包含了页面文字的字体文件）
这种方式可以大大降低自定义字体的加载速度

#安装
npm install font-spider -g



#单个页面
font-spider font.html
#所有html
font-spider *.html
#帮助
font-spider --help

#注意#
·会自动设置fonts中的“font.TTF”为字体源文件，生成到css目录下，以同名显示
·需要先将服务器的“font.html”更新到本地，在本地调用shell生成ttf之后，手动上传到网站
·默认只生成html中包含到的汉字（忽略js中的文字和别国语言），所以需要手动将js中包含到的汉字以注释的形式保存到index中




(c) Copyright 2019 Df. All Rights Reserved.   

'

echo 开始生成字体文件：font.TTF
font-spider font.html
echo 完成 