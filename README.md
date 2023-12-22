> dfer学习php时，自己架构的框架，项目结构采用了作者习惯的c#的dotNetMvc，借鉴了微擎、thinkPHP，以及网上的一些零散的写法，整体框架设计和优化为df独立完成。
此框架以实用为出发点，使开发者能够以最高效率完成业务需求，在前后端分离和主流框架盛行的大环境下，依然能适应小型网站、接口的快速开发。

# 项目介绍
- [gitcode](https://gitcode.net/dofun333/dfphp.dfer.site)


### 使用
```
composer create-project dfer/df-php
```
- 会创建`df-php`文件夹，其中包含了整个项目源码


# 框架介绍
- DfPHP
- 轻量级PHP开发框架
- [dfphp.dfer.site](http://dfphp.dfer.site)
- 由于df在做项目的过程中越来越习惯基于tp和vue的前后端分离写法，此框架将不再作为开发的首选方案，将减缓更新频率，仅作为老系统的过渡方案
- 工作QQ：3504725309
- 网站：www.dfer.site
- QQ群：76673820



# 运行环境
- php8
- 服务器最低配置：1cpu、1G、1Mbps


# 伪静态
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


# 项目详情
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

# 命令行
```
php df
```

# 关键字说明
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


# 数据库操作

**数据库更新**
```
https://api.dfer.site/admin/home/createDb
```
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




# 注意事项
- 页首添加多行脚本的时候不要添加注释，以免整理代码格式之后破坏php结构
- 上传到服务器之后要给所有文件添加访问权限
- 此版本保持最新状态，其余的项目都是由此延伸出去







---
©2017-2023 Dfer.Site


