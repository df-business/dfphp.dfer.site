# DfPHP
> 轻量级PHP开发框架，独立于thinkphp在内的其余主流框架，遵循传统的mvc结构，没有像其余框架那样封装复杂的功能，一切从简，适合简单的网站应用


## 项目介绍
- [gitcode](https://gitcode.net/dofun333/dfphp.dfer.site)


### 使用
```
composer create-project dfer/df-php
```
- 会创建`df-php`文件夹，其中包含了整个项目源码


## 框架介绍
- [dfphp.dfer.site](http://dfphp.dfer.site)
- dfer学习php时，自己架构的框架，项目结构采用了作者习惯的c#的dotNetMvc，借鉴了微擎、thinkPHP，以及网上的一些零散的写法，整体框架设计和优化为df独立完成。此框架以实用为出发点，使开发者能够以最高效率完成业务需求，在前后端分离和主流框架盛行的大环境下，依然能适应小型网站、接口的快速开发。
- 由于df在做项目的过程中越来越习惯基于tp和vue的前后端分离写法，此框架将不再作为开发的首选方案，将减缓更新频率，仅作为老系统的过渡方案
- 工作QQ：3504725309
- 网站：www.dfer.site
- QQ群：76673820



## 运行环境
- php8
- 服务器最低配置：1cpu、1G、1Mbps


## 伪静态
*/www/server/panel/rewrite/nginx/DfPHP.conf*
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
location /api/ {
	index  index.php index.html index.htm;
	 #如果请求既不是一个文件，也不是一个目录，则执行一下重写规则
	 if (!-e $request_filename)
	 {
		#若是子目录则使用下面这句，将subdir改成目录名称即可。
		rewrite ^/api/(.*)$ /api.php?s=$1;
	 }
}

location ~ .*\.(gif|jpg|jpeg|png|bmp|swf)$
{
	expires      30d;
	error_log /dev/null;
	access_log /dev/null;
}

location ~ .*\.(js|css)?$
{
	expires      1h;
	error_log /dev/null;
	access_log /dev/null;
}
```
*apache*
```
RewriteEngine on
RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^(.*)$ index.php?s=$1
```


## 项目详情
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

## 命令行
```
:: 基础命令
php df
:: 将项目的基础源码同步至`df-php-root`项目
php df dev:root
:: 将项目的`df-php-core`源码同步至`df-php-core`项目
php df dev:core
```

# 关键字说明
```
<!-- 布局 -->
<df-html>
</df-html>
<df-header>
</df-header>
<df-body>
</df-body>
<df-footer>
</df-footer>

<df-html/>
<df-header/>
<df-body/>
<df-footer/>

<!-- 遍历数组，来循环显示多条数据 -->
<df-each $list>
	<df-val value="name"/>
	{::name}
</df-each>

<df-each-cache $list>
	<df-val-cache value="name"/>
	{:::name}
</df-each-cache>

<!-- 条件语句-->
<df-if $type==1>
<df-elif $type==2>
<df-else>
</df-if>

<!-- 执行php代码 -->
<df-code>
</df-code>

<!-- 打印参数 -->
<df-print value="$str" />
{:$str}
{$str}

<!-- js防止格式化 -->
/*code
code*/

```


# 数据库操作

**数据库更新**
```
http://dfphp.dfer.site/admin/login/create_db
```
**引用模型**
```
use areas\admin\model\{ConfigModel,LayoutImgModel,ArticleModel,LinkModel,MusicModel,MessageModel,NotepadModel};
```
**查询**
```

<!-- 列表 -->
$output = MusicModel::select();
$output = ArticleModel::order('asc')->select();
$output = NotepadModel::order(['time', 'desc'])->select();
$output = MusicModel::where(3)->select();
$output = MusicModel::where(["id" => 3])->select();


<!-- 读取第一条数据,不满足条件则返回空 -->
$output = ArticleModel::where(3)->find();
<!-- 始终读取第一条数据 -->
$output = NotepadModel::where(["id" => 3])->first();

<!-- 直接生成dataTable的接口数据 -->
NotepadModel::showPage(str("admin/column/{0}_ss",[NotepadModel::getName()]));

<!-- 读取第一条数据的某个值 -->
$layout = ConfigModel::where(['key' => 'layout'])->value('val');


```
**新增**
```
$ret = ConfigModel::insert(['val'=>123]);
$ret = LinkModel::update($dt);
$ret = LinkModel::where(null)->update($dt);
$ret = LinkModel::where([])->update($dt);
```

**修改**
```
$ret = LinkModel::where(3)->update($dt);
$ret = ConfigModel::where(['key' => 'layout'])->update(['val'=>$dt]);
```

**删除**
```
<!-- 根据id删除 -->
ArticleModel::where(3)->del();

<!-- 根据条件删除 -->
ArticleModel::where(['type'=>3])->del();

<!-- 清空表 -->
ArticleModel::del();

```




## 注意事项
- 页首添加多行脚本的时候不要添加注释，以免整理代码格式之后破坏php结构
- 上传到服务器之后要给所有文件添加访问权限
- 此版本保持最新状态，其余的项目都是由此延伸出去







---
©2017-2024 Dfer.Site


