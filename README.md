# DfPHP

> 轻量级 PHP MVC 框架，遵循传统 MVC 结构，沿袭 ASP.NET MVC 的项目风格，借鉴了微擎、ThinkPHP 的部分设计，以实用为出发点，适合小型网站与接口的快速开发。

- 作者：Dfer · [www.dfer.site](http://www.dfer.site)
- 工作 QQ：3504725309 · QQ 群：76673820
- 当前版本：**8.x**（基于 PHP 8.0）

---

## 目录

1. [框架简介](#框架简介)
2. [快速开始](#快速开始)
3. [运行环境](#运行环境)
4. [目录结构](#目录结构)
5. [模板引擎](#模板引擎)
6. [TP8 兼容模板标签](#tp8-兼容模板标签)
7. [数据库操作](#数据库操作)
   - 基础 CRUD
   - 模型属性配置（TP8 风格）
   - 新增静态方法（TP8 风格）
   - 高级查询（TP8 风格）
   - 软删除
8. [命令行工具](#命令行工具)
9. [前端技术栈](#前端技术栈)
10. [伪静态配置](#伪静态配置)
11. [注意事项](#注意事项)

---

## 框架简介

DfPHP 是 dfer 在学习 PHP 时独立设计的框架，整体架构独立于 ThinkPHP 等主流框架。核心功能通过自研 Composer 组件实现：

| 组件 | 路径 | 说明 |
|---|---|---|
| df-php-root | `/vendor/dfer/df-php-root/` | 框架基础结构同步 |
| df-php-core | `/vendor/dfer/df-php-core/` | 框架核心功能 |
| tools | `/vendor/dfer/tools/` | 常用工具类集成 |

- `/extend` — 自定义拓展类目录
- `/extend/command/` — 命令行调用类
- `/df` — 命令行入口脚本

---

## 快速开始

```bash
composer create-project dfer/df-php
```

创建 `df-php` 文件夹，包含完整项目源码。

---

## 运行环境

- PHP 8.0（已安装 Redis 扩展）
- MySQL 5.7+
- Nginx / Apache
- 服务器最低配置：1 CPU · 1 GB RAM · 1 Mbps

**指定 PHP 版本运行（Windows）**

```bat
"G:\Program Files\phpstudy_pro\Extensions\php\php8.0.2nts\php.exe"
"C:\ProgramData\ComposerSetup\bin\composer.phar" update
"G:\Program Files\phpstudy_pro\Extensions\php\php8.0.2nts\php.exe" df
```

**指定 PHP 版本运行（Linux）**

```bash
# /usr/bin/php80
/www/server/php/80/bin/php /usr/bin/composer update
/www/server/php/80/bin/php df
```

---

## 目录结构

```
/                                   ← 项目根目录（Web 根目录之外）
├── areas/                          # 模块目录（HTTP 不可直接访问）
│   ├── admin/                      # 后台模块
│   │   ├── controller/             # 控制器
│   │   ├── model/                  # 数据模型
│   │   ├── validate/               # 验证器
│   │   ├── public/                 # 布局模板（common.htm、icon_share.htm 等）
│   │   └── view/                   # 内容模板
│   │       ├── column/
│   │       ├── home/
│   │       └── login/
│   └── homepage/                   # 前台模块
│       ├── controller/
│       ├── public/                 # 布局模板
│       └── view/
│           └── home/
├── extend/                         # 自定义拓展类
│   └── command/                    # 命令行类
├── public/                         # ← Nginx document root（Web 根目录）
│   ├── index.php                   # Web 入口
│   └── view/
│       └── {area}/public/assets/  # 静态资源（CSS/JS/图片，HTTP 可访问）
├── vendor/                         # Composer 依赖
├── data/cache/                     # 模板缓存（可删除）
└── df                              # 命令行入口
```

### 视图查找规则

框架优先在 `areas/` 中查找，找不到再降级到 `public/view/`（向下兼容）：

| 类型 | 优先路径 | 降级路径 |
|---|---|---|
| 内容模板 | `areas/{area}/view/{ctrl}/{action}.htm` | `public/view/{area}/{ctrl}/{action}.htm` |
| 布局模板 | `areas/{area}/public/{layout}.htm` | `public/view/{area}/public/{layout}.htm` |
| 静态资源 | — | `public/view/{area}/public/assets/`（必须保留在 Web 根目录下） |

### 安全说明

- Nginx `document root` 指向 `public/`，`areas/` 完全在 Web 根目录之外
- 模板 `.htm` 文件**无法被 HTTP 直接访问**，杜绝源码泄露
- 静态资源保留在 `public/view/{area}/public/assets/`，HTTP 正常可访问

---

## 模板引擎

### 布局标签

```html
<!-- 注入到公共模板的 <head> 区域 -->
<df-header> ... </df-header>

<!-- 注入到公共模板的主体区域 -->
<df-body> ... </df-body>

<!-- 注入到公共模板的 </body> 前 -->
<df-footer> ... </df-footer>

<!-- 引用公共模板对应区域（在 common.htm 中使用） -->
<df-header />
<df-body />
<df-footer />
```

### 输出变量

```html
<!-- 输出 PHP 表达式（会 htmlspecialchars） -->
{:$var}
{:date('Y-m-d')}
{:json_encode($arr)}

<!-- 输出模板变量（df-each 循环内使用，已转义） -->
{$var}

<!-- 循环内原始输出（不转义，支持 HTML） -->
{::var}
```

### 条件语句

```html
<!-- expr 是裸 PHP 表达式，不加 {:...} -->
<df-if $status == 1>
    成功
<df-elif $status == 2>
    处理中
<df-else>
    失败
</df-if>
```

### 循环

```html
<df-each $list>
    <p>{::title}</p>
    <p>{::content}</p>
</df-each>
```

### 执行 PHP 代码

```html
<df-code>
    use areas\admin\model\{ArticleModel};
    $data = ArticleModel::select();
</df-code>
```

### JS 内嵌 PHP 值

```html
<script>
    // 避免 JS 格式化工具破坏 PHP 语法
    var url = /*code {:$url} code*/;
    var delay = /*code{:$delay * 1000}code*/;
</script>
```

---

## TP8 兼容模板标签

以下标签与原有 `<df-*>` 标签并存，可混合使用。

### 原样输出 `{literal}`

```html
{literal}
  这里的 {$var} 和 {:expr} 不会被解析
{/literal}
```

### 变量赋值 `{assign}`

```html
{assign name="title" value="DfPHP" /}
```

### 执行 PHP `{php}`（等同 `<df-code>`）

```html
{php}
  $list = ArticleModel::select();
{/php}
```

### 条件语句 `{if}`

```html
{if $status == 1}
  已发布
{elseif $status == 0 /}
  草稿
{else /}
  未知
{/if}
```

### 遍历 `{foreach}` / `{volist}`

```html
{foreach $list as $k => $v}
  {$v.title}
{/foreach}

<!-- volist 支持 offset / length 分片 -->
{volist name="list" id="vo" key="k" offset="0" length="5"}
  {$vo.title}
{/volist}
```

### 数值循环 `{for}`

```html
{for start="1" end="10" step="1" name="i"}
  第 {$i} 项
{/for}
```

### 空值判断 `{empty}` / `{notempty}`

```html
{empty name="list"}暂无数据{/empty}
{notempty name="list"}共 {$list|count} 条{/notempty}
```

### 比较标签（eq / neq / gt / egt / lt / elt）

```html
{eq name="status" value="1"}已启用{/eq}
{gt name="score" value="90"}优秀{/gt}
{elt name="level" value="3"}初级{/elt}
```

### IN 判断 `{in}` / `{notin}`

```html
{in name="role" value="1,2,3"}管理员{/in}
{notin name="role" value="0"}普通用户{/notin}
```

### 点语法变量输出

```html
{$user.name}
{$config.layout.title}
```

### 管道修饰符（支持多重管道，最后一个函数可带参数）

```html
{$name|htmlspecialchars}
{$content|strip_tags|substr=0,100}
{$price|number_format=2}
```

---

## 数据库操作

### 引用模型

```php
use areas\admin\model\{ConfigModel, ArticleModel, LinkModel, MusicModel, MessageModel, NotepadModel};
```

### 基础 CRUD

```php
// 查询全部
$output = ArticleModel::select();
$output = ArticleModel::order('asc')->select();
$output = NotepadModel::order(['id', 'desc'])->select();

// 按主键 / 条件查询
$output = MusicModel::where(3)->select();
$output = MusicModel::where(['id' => 3])->select();
$output = ArticleModel::where(3)->find();        // 条件不满足返回空
$output = NotepadModel::where(['id' => 3])->first(); // 始终返回第一条
$val    = ConfigModel::where(['key' => 'layout'])->value('val'); // 读取单字段

// 新增（返回新 id）
$id = ArticleModel::insert(['title' => '标题', 'content' => '内容']);

// 修改（有 where → UPDATE，无 where → INSERT）
LinkModel::where(3)->update($dt);
ConfigModel::where(['key' => 'layout'])->update(['val' => $dt]);

// 删除
ArticleModel::where(3)->del();          // 按主键
ArticleModel::where(['type' => 3])->del(); // 按条件
ArticleModel::del();                    // 清空表
```

### 模型属性配置（TP8 风格）

```php
class ArticleModel extends Model {
    protected $pk = 'id';                    // 主键字段名（默认 id）
    protected $table = 'my_article';         // 完整表名（覆盖自动推导）

    // 自动时间戳：false | true | 'datetime' | 'int'
    protected $autoWriteTimestamp = true;
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    protected $deleteTime = 'delete_time';   // 软删除字段（null 则不启用）

    protected $json = ['extra'];             // JSON 字段自动序列化
    protected $jsonAssoc = true;             // 取出时转为数组

    // 字段类型转换（读取时自动 cast）
    protected $type = [
        'status' => 'int',
        'price'  => 'float',
        'tags'   => 'json',
    ];
}
```

### 新增静态方法（TP8 风格）

```php
$id  = ArticleModel::create(['title' => '标题']);  // 新增，返回新 id
$row = ArticleModel::get(3);                       // 按主键查单条
ArticleModel::destroy(3);                          // 按主键删除
ArticleModel::destroy([1, 2, 3]);                  // 批量删除
```

### 高级查询（TP8 风格）

```php
// 新式 where
ArticleModel::where('status', 1)->select();
ArticleModel::where('id', '>', 10)->select();
ArticleModel::whereOr('type', 2)->select();

// IN / BETWEEN / NULL / LIKE
ArticleModel::whereIn('id', [1, 2, 3])->select();
ArticleModel::whereBetween('id', [5, 20])->select();
ArticleModel::whereNull('delete_time')->select();
ArticleModel::whereLike('title', '%PHP%')->select();
ArticleModel::whereRaw('status = 1 AND id > 10')->select();

// 聚合函数
ArticleModel::count();
ArticleModel::max('id');
ArticleModel::sum('views');
ArticleModel::avg('score');

// 分页（页码从 1 开始）
ArticleModel::page(2, 15)->select();

// 获取某列值数组
ArticleModel::column('title');           // ['标题A', '标题B', ...]
ArticleModel::column('title', 'id');     // [1 => '标题A', ...]

// 结构化分页（返回 data / total / page / size / pages）
$result = ArticleModel::paginate(10, 2);

// JOIN
ArticleModel::alias('a')
    ->leftJoin('roles r', 'a.role = r.id')
    ->field(['a.title', 'r.nm'])
    ->select();

// GROUP BY / HAVING / DISTINCT
ArticleModel::group('type')->having('count(*) > 1')->select();
ArticleModel::distinct()->column('type');

// 字段自增 / 自减
ArticleModel::where('id', 1)->increment('views');
ArticleModel::where('id', 1)->decrement('stock', 2);

// 批量插入
ArticleModel::insertAll([
    ['title' => 'A', 'content' => '...'],
    ['title' => 'B', 'content' => '...'],
]);

// 分批处理（大量数据）
ArticleModel::chunk(100, function($rows) {
    foreach ($rows as $row) { /* 处理 */ }
});

// 获取 SQL 字符串（不执行）
$sql = ArticleModel::where('id', 1)->fetchSql()->find();
$sql = ArticleModel::where('id', 1)->buildSql();
```

### 软删除

```php
// 模型中声明软删除字段
class ArticleModel extends Model {
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
}

ArticleModel::where('id', 3)->del();         // 软删除（写时间戳）
ArticleModel::withTrashed()->select();        // 包含软删除记录
ArticleModel::onlyTrashed()->select();        // 仅软删除记录
ArticleModel::onlyTrashed()->where('id', 3)->restore(); // 恢复
```

---

## 命令行工具

```bash
# 查看帮助
php df

# 同步基础结构到 df-php-root 项目
php df dev:root

# 同步核心代码到 df-php-core 项目
php df dev:core
```

---

## 前端技术栈（后台）

| 库 | 版本 | 用途 |
|---|---|---|
| Tailwind CSS | Play CDN | 所有样式 |
| Alpine.js | 3.13.5 | 交互（勿升级到 3.14.1） |
| Tabulator | 5.5.4 | 数据表格 |
| Font Awesome | 6.5.1 Free | 图标 |
| jQuery | 3.7.1 | Ajax / 表单 |
| umeditor | 1.2.2 | 富文本编辑器 |
| WebUploader | 0.1.5 | 文件上传 |
| layer.min.js | 本地 | 弹窗 |

### Alpine.js 已知 BUG

`/node_modules/@df_business/tools-js/extends/js.ext.js` 将 `Array.prototype.toString` 重写为换行分隔，导致 Alpine 内部解析失败。

**修复（已在 common.htm 和 icon_share.htm 中加入）：**

```html
<!-- 放在 layer.min.js 之后、Alpine defer 执行之前 -->
<script>Array.prototype.toString = function() { return Array.prototype.join.call(this, ','); };</script>
```

---

## 伪静态配置

### Nginx

```nginx
if ($http_accept ~* "^$|^\*/\*$") { set $block 1; }
if ($http_user_agent ~* "aliyun-oss|baiduspider|360spider|sogou|googlebot|bingbot") { set $block 0; }
if ($request_uri ~* "^/view/|^/node_modules/") { set $block 0; }
if ($block = 1) { return 403; }

location / {
    index index.php index.html index.htm;
    if (!-e $request_filename) {
        rewrite ^/(.*)$ /index.php?s=$1;
    }
}

location /api/ {
    index index.php index.html index.htm;
    if (!-e $request_filename) {
        rewrite ^/api/(.*)$ /api.php?s=$1;
    }
}

location ~ .*\.(gif|jpg|jpeg|png|bmp|swf)$ { expires 30d; }
location ~ .*\.(js|css)?$ { expires 1h; }
```

### Apache

```apache
RewriteEngine on
RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^(.*)$ index.php?s=$1
```

---

## 注意事项

- 上传到服务器后需给所有文件添加访问权限：`chmod -R 777 *`
- 页首 `<df-code>` 中不要添加注释，以免格式化工具破坏 PHP 结构
- 默认开启 SSL，降级到 HTTP 后需重启浏览器才能生效
- 更高版本的 PHP 代码审核更严格，无效代码分支应用 `die` 拦截
- 文件名尽量使用英文，避免 Linux 中文兼容问题
- 修改视图后需清除模板缓存：`rm -rf data/cache/*`

---

©2017–2025 Dfer.Site
