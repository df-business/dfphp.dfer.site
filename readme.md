#项目介绍#
- DfPHP
- 轻量级PHP开发框架
 


#框架介绍#
- 由Df打造的php版的Mvc框架，结构简洁，使用方便
- 可以在此框架的基础上开发出各种各样的网站
- 有很好的拓展性，可以不断增加新的功能
- 为“湖北谷雨网络”提供技术支撑
- 此项目将不断完善
- 工作QQ：3504725309      
- 个人网站：df.dfer.top
- 官网：www.grain-rain.com 
- QQ群：76673820
 
 
 
 
#运行环境#
- 项目php版本为7.2
- 服务器最低配置：1cpu、1G、1Mbps

#开发模式#
**/share/config.php**
```
$dev=true;	#开发模式开关
```
#伪静态#
*nginx*
```
 location / {
            index  index.php index.html index.htm;
             #如果请求既不是一个文件，也不是一个目录，则执行一下重写规则
             if (!-e $request_filename)
             {
                #地址作为参数rewrite到index.php上
                rewrite ^/(.*)$ /index.php?s=$1;               
             }
        }
``` 
*apache*
```
RewriteEngine on
RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^(.*)$ index.php?s=$1 
```

 
#项目详情#
~~~
.
├── Areas
│   ├── admin		
│   └── homepage
├── cache
│   ├── Areas
│   └── share
├── css_js
│   ├── 404
│   ├── AdminFrame
│   ├── FontFamily
│   ├── Loaders
│   ├── SiteCloud
│   ├── dataTables
│   ├── homepage
│   ├── jqTemplate
│   ├── layui
│   ├── mui
│   ├── requireJs
│   ├── umeditor
│   ├── webuploader
│   ├── df.js
│   ├── df.png
│   ├── jquery.ext.js
│   └── jquery.min.js
├── data
│   ├── hbuilder
│   ├── sql
│   └── create.php
├── img
│   ├── bg.jpg
│   ├── loading-1.gif
│   ├── logo.ico
│   ├── logo.png
│   └── qq.png
├── module
│   ├── functions.php
│   └── model.php
├── share
│   ├── backShare.htm
│   ├── config.php
│   ├── homeShare.htm
│   ├── iconShare.htm
│   ├── message.htm
│   ├── pureShare.htm
│   ├── share.php
│   ├── share_origin.htm
│   └── share_rJs.htm
├── upload
│   └── pics
├── 403.html
├── 404.html
├── error.html
├── favicon.ico
├── favicon.png
├── faviconMix.ico
├── htaccess -> .htaccess
├── index.php
└── readme.md

28 directories, 30 files
~~~
- 需要添加目录权限    #chmod -R 777 *
- 默认开启ssl，升级https之后降级，需要重启浏览器才能生效
- 有时候网页ico不加载，只是浏览器短时间故障，重启浏览器等待一下即可
- safari浏览器很不稳定，偶尔显示不正常，chrome不存在这个情况
- 打造比TP更简洁的MVC框架
- 更高版本的php对代码审核更严格，对于不需要执行并且运行会出错的代码应该及时用die拦截，否则会报错
- 彻底实现前后端分离，常用函数可以直接调用
- 实现自定义关键字
- linux、php、ftp这种老外发明的东西对中文兼容依然不够好，尽量用英文来表示文件名
- 添加了云数据和安全机制



#关键字说明#
```
 //布局
 <df-html/>
 <df-header/>
 <df-body/>
 <df-footer/> 
 <df-header></df-header>
 <df-body></df-body>
 <df-footer></df-footer>
 
 //打印参数
 <df-print value="">
 !!$str!!
 
 
 //执行php代码
 <df-code>
 !{}!
 
 //遍历数组，来循环显示多条数据
 <df-each $0>
 <df-val value=""/>
 !``
 </df-each>
 
//这里放关键字，防止整理代码格式的时候关键字被破坏
/*d	
d*/
 
 //if语句
 <df-if $0>
 <df-elif $1>
 <df-else>
 </df-if>
 
 !{if true}
 !{elif false}
 !{else}
 !{/else}
 
```


##数据库操作
**查询**
```


//有多行就输出数组，否则返回单个list（有些情况必须返回数组，就添加order）
show('df',1,'type',' ');    
// 根据字符串进行查询
show('df','谷雨光影','subs'); 
// 按id降序输出全表  
show('df',-1,'id','desc');	
//输出type为1的特定数目的数据
show('df',1,'type','limit 0,5');	
//输出type为1的数据并进行排序
show('df',1,'type','order by id desc');
//执行sql语句	
show('select * from df',0);	
//按条件输出全表
show("menu",$param,'parent','order by oderNum desc');
//分页查询(页数,行数)
show_page(self::$db_d,$page,$rows);
```
**新增、修改**
```
//新增数据，之后不进行任何操作
update('df',$arr)		
//根据id新增、修改数据，之后进行页面跳转
update(self::$db_hc,$dt,$id,("homepage/column/".self::$db_hc));	
```

**删除**
```
//根据id进行删除
del('db',3);
//清空表
clear('db')
```

**数据库操作返回json**
```
#查询返回json数据
//根据id查询
tableToJson('df','id','desc',1);
//根据time降序排列 
tableToJson('df','time'); 
//根据time升序排列
tableToJson('df','time','asc');
//自定义sql查询
tableToJson('sql','select * from df');
#更新返回json
jsonUpdate('db',array('nm'=>'123'),3);
#清空
jsonClear('db')
```


#注意事项#
- 页首添加多行脚本的时候不要添加注释，以免整理代码格式之后破坏php结构
- 上传到服务器之后要给所有文件添加访问权限
- 此版本保持最新状态，其余的项目都是由此延伸出去







---
***(c) Copyright 2020 Df. All Rights Reserved.***   


