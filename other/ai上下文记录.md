# DfPHP Admin 后台重构 — AI 上下文记录

> 供 Claude Code 新会话快速恢复上下文，持续追加更新。
> 最后更新：2026-06-10

---

## 一、项目基本信息

| 项目 | 说明 |
|---|---|
| 框架 | DfPHP 8.x，PHP 8.x MVC |
| 运行环境 | Docker + BT Panel，容器名 `bt` |
| 本地路径 | `D:/dfphp.dfer.site/` |
| Docker 路径 | `/www/wwwroot/dfphp.dfer.site/` |
| 本地访问 | `http://dfphp.dfer.site.local/` |
| 当前分支 | `8.x` |
| MCP | MySQL (`mcp__mysql-nodejs__mysql_query`)、Redis 已连接 |

### Docker 同步命令（固定模式）

```bash
# 同步单个文件
cat "D:/dfphp.dfer.site/path/to/file" | docker exec -i bt bash -c "cat > /www/wwwroot/dfphp.dfer.site/path/to/file"

# 清模板缓存（改完视图必做）
docker exec bt bash -c "rm -rf /www/wwwroot/dfphp.dfer.site/data/cache/*"
```

### MySQL 操作注意

- MCP 不支持 `db.table` 点语法，用 `information_schema` 或拆分语句
- 查列：`SELECT COLUMN_NAME FROM information_schema.COLUMNS WHERE TABLE_SCHEMA='dfphp_dfer_site' AND TABLE_NAME='xxx'`

---

## 二、目录结构（2026-06-10 更新）

**重要变更**：视图 `.htm` 文件已从 `public/view/` 迁移到 `areas/` 中，与控制器同目录。

```
/                                  ← 项目根目录（Web 根目录之外）
├── areas/                         # 模块目录（HTTP 不可直接访问）
│   ├── admin/
│   │   ├── controller/
│   │   ├── model/
│   │   ├── validate/
│   │   ├── public/                # 布局模板（common.htm、icon_share.htm 等）
│   │   └── view/                  # 内容模板
│   │       ├── column/
│   │       ├── home/
│   │       └── login/
│   └── homepage/
│       ├── controller/
│       ├── public/                # 布局模板
│       └── view/
│           └── home/
├── extend/                        # 自定义拓展类
├── public/                        # ← Nginx document root
│   ├── index.php
│   └── view/{area}/public/assets/ # 静态资源（CSS/JS/图片，HTTP 可访问）
├── vendor/
├── data/cache/                    # 模板缓存（可删除）
└── df                             # 命令行入口
```

### 视图查找规则（框架自动降级）

| 类型 | 优先路径 | 降级路径 |
|---|---|---|
| 内容模板 | `areas/{area}/view/{ctrl}/{action}.htm` | `public/view/{area}/{ctrl}/{action}.htm` |
| 布局模板 | `areas/{area}/public/{layout}.htm` | `public/view/{area}/public/{layout}.htm` |
| 静态资源 | — | `public/view/{area}/public/assets/`（必须保留在 Web 根目录） |

**实现位置**：`vendor/dfer/df-php-core/src/functions.php` 的 `view()` 函数，4 个代码路径（WAP+special、WAP+normal、PC+special、PC+normal）均已更新。

### 安全说明

Nginx `document root` = `public/`，`areas/` 完全在 Web 根目录外，模板文件 HTTP 不可直接访问，比旧的 `public/view/` 结构更安全。

---

## 三、模板引擎规则（重要！）

### 原生 DfPHP 标签

| 语法 | 用途 | 注意 |
|---|---|---|
| `{:expr}` | 输出 PHP 表达式 | 不能嵌套在 `<df-if>` 属性里 |
| `{$var}` | 输出变量 | — |
| `{::var}` | 循环内输出 | `<df-each>` 内使用 |
| `<df-if expr>` | 条件，`expr` 是**裸 PHP 表达式** | **不能** 写 `<df-if {:$status}>` |
| `<df-else>` / `</df-if>` | — | — |
| `<df-each $arr>` | 循环 | — |
| `<df-code>` | 嵌入 PHP 代码块 | — |
| `<df-header>` / `<df-body>` / `<df-footer>` | 嵌入布局对应区域 | — |
| `/*code {:$expr} code*/` | JS 内嵌 PHP 表达式 | 用于 message.htm 跳转脚本 |

### TP8 兼容模板标签（已集成）

```
{literal}...{/literal}          原样输出
{assign name="var" value="..."}  赋值
{php}...{/php}                   原生 PHP

{if condition}...{elseif}...{else}...{/if}
{foreach $list as $k => $v}...{/foreach}
{volist name="list" id="v"}...{/volist}
{for start="0" end="10" step="1" name="i"}...{/for}

{empty name="var"}...{/empty}
{notempty name="var"}...{/notempty}

{eq name="a" value="b"}...{/eq}      等于
{neq} {gt} {egt} {lt} {elt}          其他比较

{in name="var" value="1,2,3"}...{/in}
{notin name="var" value="1,2,3"}...{/notin}

{$var.key.sub}         点语法取值
{$var|func|func2:arg}  管道修饰符
```

---

## 四、前端技术栈

| 库 | 版本 | 用途 |
|---|---|---|
| Tailwind CSS | Play CDN | 所有样式 |
| Alpine.js | **3.13.5**（勿升级到 3.14.1） | 交互 |
| Tabulator | 5.5.4 | 列表表格 |
| Font Awesome | 6.5.1 Free | 图标（FA6，用 `fa-solid`/`fa-regular` 前缀） |
| jQuery | 3.7.1 | Ajax/表单 |
| umeditor | 1.2.2 | 富文本编辑器 |
| WebUploader | 0.1.5 | 文件上传 |
| layer.min.js | 管理员本地 | 弹窗 |

### Alpine.js 关键 BUG 及修复

**根本原因**：`js.ext.js` 将 `Array.prototype.toString` 重写为换行分隔，导致 Alpine 解析失败。

**修复（必须放在 layer.min.js 之后、Alpine defer 之前）**：
```html
<script>Array.prototype.toString = function() { return Array.prototype.join.call(this, ','); };</script>
```

已修复的文件：
- `areas/admin/public/icon_share.htm`
- `areas/admin/public/common.htm`

### Font Awesome 6 图标注意

FA4 的 `-o`（outline）变体在 FA6 Free 中不存在，需替换：
- `file-text-o` → `newspaper`（文章管理菜单，已在 DB 更新）

---

## 五、关键文件清单

### 布局文件（已迁移到 areas/）

| 文件 | 说明 |
|---|---|
| `areas/admin/public/icon_share.htm` | 外层 Shell（iframe 容器），含 `<title>DfPHP 管理后台</title>` |
| `areas/admin/public/common.htm` | 所有 iframe 内容页的共用布局，含 `<title>` |
| `areas/admin/view/login/index.htm` | 登录页，暗色玻璃拟态，独立 Tailwind CDN |
| `areas/admin/view/home/user_view.htm` | 用户详情页 |
| `areas/admin/view/column/layout.htm` | 栏目设置表单页 |
| `areas/homepage/view/home/readme.htm` | 开发文档展示页（accordion 折叠） |

### 控制器

| 文件 | 关键方法 |
|---|---|
| `areas/admin/controller/HomeController.php` | `menuTree()` 输出侧边栏菜单 HTML |

---

## 六、登录页注意事项

文件：`areas/admin/view/login/index.htm`

```css
/* 输入框文字颜色（默认白色不可见，需强制覆盖） */
.login-input {
    background: #fff;
    color: #1e293b !important;
}
/* 浏览器自动填充文字颜色 */
.login-input:-webkit-autofill,
.login-input:-webkit-autofill:hover,
.login-input:-webkit-autofill:focus {
    -webkit-box-shadow: 0 0 0 1000px #fff inset !important;
    -webkit-text-fill-color: #1e293b !important;
}
```

---

## 七、common.htm 全局 JS 工具

```js
// 删除确认
dfDel(url, title)

// 上传（WebUploader 封装）
upload(trigger_obj, preview_obj, input_obj, upload_api)

// Tabulator 中文语言包
var TABULATOR_ZH = { zh: { pagination: { ... } } };
// 使用时：langs: TABULATOR_ZH, locale: 'zh'

// 上传 API 常量
const UPLOAD_API = {
    UEDITOR: '/admin/upload/ueditor_upload',
    WEB_UPLOADER: '/admin/upload/web_upload'
};
```

---

## 八、Tabulator 列表页模式（标准写法）

```html
<df-header>
<script>
var _data    = {:json_encode(array_values($output ?: []))};
var _editUrl = '{:split_url("admin/xxx/yyy_add")}';
var _delUrl  = '{:split_url("admin/xxx/yyy_del")}';

document.addEventListener('DOMContentLoaded', function() {
    var table = new Tabulator('#xxx-table', {
        data: _data, layout: 'fitColumns',
        pagination: 'local', paginationSize: 10,
        paginationSizeSelector: [10, 25, 50, 100],
        langs: TABULATOR_ZH, locale: 'zh',
        initialSort: [{column: 'id', dir: 'desc'}],
        columns: [
            {title: '#', field: 'id', width: 60, hozAlign: 'center', headerFilter: false},
            {title: '字段', field: 'field', minWidth: 160, headerFilter: 'input'},
            {
                title: '操作', width: 180, hozAlign: 'center', headerSort: false, headerFilter: false,
                formatter: function(cell) {
                    var d = cell.getRow().getData();
                    var t = (d.title || '').replace(/'/g, "\\'").replace(/"/g, '&quot;');
                    return '<a href="'+_editUrl+'/'+d.id+'" class="df-btn df-btn-edit"><i class="fa fa-edit"></i> 编辑</a>'
                         + '<button onclick="dfDel(\''+_delUrl+'/'+d.id+'\',\''+t+'\')" class="df-btn df-btn-del"><i class="fa fa-trash"></i> 删除</button>';
                }
            }
        ]
    });
    document.getElementById('xxx-search').addEventListener('input', function() {
        var v = this.value;
        if (v) { table.setFilter([[ {field:'title', type:'like', value:v} ]]); }
        else { table.clearFilter(); }
    });
});
</script>
</df-header>

<df-body>
<div class="space-y-4">
    <div class="flex items-center justify-between">
        <h2 class="text-base font-semibold text-slate-800 flex items-center gap-2">
            <i class="fa-solid fa-icon text-indigo-500"></i>页面标题
        </h2>
        <a href="{:split_url('...')}" class="inline-flex items-center gap-1.5 px-4 py-2 text-sm font-medium rounded-lg bg-indigo-600 text-white hover:bg-indigo-700 transition-colors shadow-sm">
            <i class="fa-solid fa-plus text-xs"></i>新增
        </a>
    </div>
    <div class="bg-white rounded-xl border border-slate-200 shadow-sm overflow-hidden">
        <div class="flex items-center gap-3 px-4 py-3 border-b border-slate-100 bg-slate-50">
            <div class="relative">
                <i class="fa-solid fa-magnifying-glass absolute left-2.5 top-1/2 -translate-y-1/2 text-slate-400 text-xs pointer-events-none"></i>
                <input id="xxx-search" type="text" placeholder="搜索..."
                       class="pl-8 pr-3 py-1.5 text-sm border border-slate-200 rounded-lg bg-white focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent w-56 transition-shadow">
            </div>
            <span class="text-xs text-slate-400 ml-auto">共 {:count($output)} 条</span>
        </div>
        <div id="xxx-table"></div>
    </div>
</div>
</df-body>
```

**操作列宽度参考**：1个按钮→120，编辑+删除→180，查看+编辑+删除→220

---

## 九、表单页模式（标准写法）

```html
<df-body>
<div class="space-y-4">
    <div class="flex items-center justify-between">
        <h2 ...>标题</h2>
        <a href="..." class="...返回按钮...">返回列表</a>
    </div>
    <div class="bg-white rounded-xl border border-slate-200 shadow-sm">
        <form method="post" action="{:split_url('...')}" id="xxx-form">
            <input name="id" value="{:$output[0]??'0'}" type="hidden">
            <div class="divide-y divide-slate-100">
                <div class="flex items-start gap-4 px-6 py-4">
                    <label class="w-20 pt-2 text-sm font-medium text-slate-600 shrink-0 text-right">
                        字段名<span class="text-red-500 ml-0.5">*</span>
                    </label>
                    <div class="flex-1">
                        <input type="text" name="data[field]" value="{:$output['field']??''}"
                               class="w-full max-w-lg px-3 py-2 text-sm border border-slate-200 rounded-lg bg-slate-50 focus:bg-white focus:outline-none focus:ring-2 focus:ring-indigo-400 focus:border-transparent transition-shadow">
                    </div>
                </div>
            </div>
            <div class="flex items-center gap-3 px-6 py-4 bg-slate-50 rounded-b-xl border-t border-slate-100">
                <button type="button" onclick="submitXxx()"
                        class="inline-flex items-center gap-2 px-6 py-2 text-sm font-medium rounded-lg bg-indigo-600 text-white hover:bg-indigo-700 transition-colors shadow-sm">
                    <i class="fa-solid fa-floppy-disk"></i>保存
                </button>
            </div>
        </form>
    </div>
</div>
</df-body>
```

---

## 十、侧边栏菜单系统

### 数据流
- PHP `HomeController::menuTree()` → 输出 HTML 到 `<nav>` 区域
- 叶节点：`<a class="df-menu-item" data-title="标题">` — 被 Alpine `adminShell()` 拦截，在标签页中打开
- 父节点：`<div class="df-submenu">` + `<button onclick="dfToggleMenu(this)">` + `<div class="df-submenu-children hidden">`

### 展开/收起逻辑
- `dfToggleMenu(btn)` — 展开/收起子菜单
- `toggleSidebar()` — 收起 sidebar 时自动关闭所有子菜单 + 清除飞出层样式

### 收起模式飞出层（Flyout）
收起状态（56px）点击父级菜单 → 飞出层定位到侧边栏右侧：
- JS 动态设 `position:fixed; left: 右边缘+6px; top: 按钮top`
- 超出底部视口时自动上移
- **关键 CSS**：`.df-flyout .nav-label { opacity: 1 !important; max-width: 200px !important; }`

---

## 十一、message.htm（提示页）特殊语法

```html
<df-if $status>成功内容<df-else>失败内容</df-if>

<script>
function jump() { /*code {:$script} code*/ }
var _timer = setInterval(jump, /*code{:$delay * 1000}code*/);
</script>
```

---

## 十二、Model 层（TP8 风格，已集成）

文件：`vendor/dfer/df-php-core/src/Modules/Model.php`

### 模型属性

```php
protected $pk = 'id';                    // 主键字段
protected $table = '';                   // 完整表名（覆盖自动推导）
protected $autoWriteTimestamp = false;   // false|true|'datetime'|'int'
protected $createTime = 'create_time';
protected $updateTime = 'update_time';
protected $deleteTime = null;            // null=不启用软删除
protected $type = [];                    // 字段类型转换，如 ['extra'=>'json']
```

### 静态方法

```php
Model::create(['field' => 'value'])  // 新增，返回新 id
Model::get(1)                        // 按主键查单条
Model::destroy(1)                    // 按主键删除（支持数组）
Model::destroy([1,2,3])
```

### 查询链式方法（TP8 风格，已集成）

```php
// 条件
->where('field', 'value')
->where('field', '>', 'value')
->whereIn('field', [1,2,3])
->whereBetween('field', [1, 10])
->whereNull('field')
->whereLike('field', '%keyword%')
->whereRaw('SQL片段')
->whereOr('field', 'value')

// 构建
->page(1, 10)
->join('table b', 'a.id=b.aid')
->leftJoin(...)  ->rightJoin(...)
->group('field')
->having('count > 1')
->distinct()
->alias('a')
->fetchSql()     // 返回 SQL 字符串而不执行
->buildSql()     // 构建子查询 SQL

// 软删除
->withTrashed()  // 包含已删除
->onlyTrashed()  // 仅已删除
->restore()      // 恢复

// 聚合
->count()  ->max('field')  ->min('field')  ->sum('field')  ->avg('field')
->column('field')           // 返回单列数组

// 分页 / 批处理
->paginate(10)
->chunk(100, function($rows) { ... })

// 批量/特殊写入
->insertAll([[...],[...]])
->increment('field', 1)
->decrement('field', 1)
```

---

## 十三、Tabulator CSS 覆盖要点（在 common.htm `<style>` 中）

```css
.tabulator-row .tabulator-cell { overflow: visible !important; white-space: nowrap !important; }
.tabulator .tabulator-footer .tabulator-page { color: #475569 !important; background: #fff !important; }
.tabulator .tabulator-footer .tabulator-page:not([disabled]):not(.active):hover {
    background: #eef2ff !important; color: #4338ca !important;
}
.tabulator .tabulator-footer .tabulator-page.active {
    background: #4f46e5 !important; color: #fff !important;
}
.df-btn { display:inline-flex; align-items:center; gap:4px; padding:3px 10px; border-radius:5px; font-size:12px; }
.df-btn-edit  { background:#eef2ff; color:#4338ca !important; }
.df-btn-del   { background:#fef2f2; color:#dc2626 !important; }
.df-btn-view  { background:#f0fdf4; color:#16a34a !important; }
.df-btn-add   { background:#eff6ff; color:#2563eb !important; }
```

---

## 十四、数据库（dfphp_dfer_site）

### menu 表关键数据

| id | 名称 | icon type 字段 |
|---|---|---|
| 4 | 文章管理 | `newspaper`（FA6，原 `file-text-o` FA4 不可用） |

### article 表（开发文档，id 1-14）

| id | title |
|---|---|
| 1 | 框架简介 |
| 2 | 快速开始 |
| 3 | 模板引擎 |
| 4 | 数据库操作 |
| 5 | 命令行工具 |
| 6 | 前端技术栈 |
| 7 | 伪静态配置 |
| 8 | 注意事项 |
| 9 | 模型属性配置 |
| 10 | 新增静态方法 |
| 11 | 高级查询方法 |
| 12 | 软删除 |
| 13 | TP8 兼容模板标签 |
| 14 | 目录结构 |

---

## 十五、错误页面复制按钮

文件：`vendor/dfer/df-php-core/src/Modules/Web.php`

在 `$errorPageHtml` heredoc 中添加了一键复制按钮，复制内容含错误类型/消息/文件行号/堆栈。

---

## 十六、已完成的页面改造清单

### 列表页（Tabulator）
- `column/article.htm` ✅
- `column/link.htm` ✅
- `column/music.htm` ✅
- `column/notepad.htm` ✅
- `column/notepad_ss.htm` ✅
- `column/message.htm` ✅
- `home/html.htm` ✅
- `home/menu.htm` ✅
- `home/roles.htm` ✅
- `home/user.htm` ✅
- `home/guests.htm` ✅

### 表单页
- `column/article_add.htm` ✅
- `column/link_add.htm` ✅
- `column/music_add.htm` ✅
- `column/notepad_add.htm` ✅
- `column/notepad_ss_add.htm` ✅
- `column/layout.htm` ✅（layui colorpicker → 原生 `<input type="color">`）
- `home/html_add.htm` ✅
- `home/menu_add.htm` ✅
- `home/roles_add.htm` ✅
- `home/user_add.htm` ✅
- `home/set_pwd.htm` ✅
- `home/change_pic.htm` ✅

### 详情页
- `column/message_view.htm` ✅
- `column/notepad_view.htm` ✅
- `column/notepad_ss_view.htm` ✅
- `home/user_view.htm` ✅（Tailwind，显示头像/账号/角色/注册时间/最后登录）

### 特殊页
- `areas/admin/view/login/index.htm` ✅（暗色玻璃拟态，输入框颜色/autofill 已修复）
- `areas/admin/public/common.htm` ✅（含 `<title>`、Alpine fix）
- `areas/admin/public/icon_share.htm` ✅（含 `<title>`）
- `public/message.htm` ✅
- `home/desktop.htm` ✅
- `home/info.htm` ✅
- `home/log.htm` ✅
- `home/create_static_page.htm` ✅
- `areas/homepage/view/home/readme.htm` ✅（Tailwind accordion，读 article 表）

### 尚未改造
- `public/pure_share.htm`
