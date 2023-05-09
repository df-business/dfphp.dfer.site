# Datatables

Datatables是一款jquery表格插件。它是一个高度灵活的工具，可以将任何HTML表格添加高级的交互功能。
分页，即时搜索和排序
几乎支持任何数据源：DOM， javascript， Ajax 和 服务器处理
支持不同主题 DataTables, jQuery UI, Bootstrap, Foundation
各式各样的扩展: Editor, TableTools, FixedColumns ……
丰富多样的option和强大的API
支持国际化
超过2900+个单元测试
免费开源 （ MIT license ）！ 商业支持
更多特性请到官网查看


## 帮助 
- [中文版](https://datatables.net/download/)
- [中文版](http://datatables.club/)
- [demo](http://datatables.club/example/#basic_init)
- [动态分页](http://datatables.club/manual/server-side)
- [动态分页完整案例](https://datatables.net/examples/server_side/simple.html)


## 用法

```
	<table class="table table-striped table-bordered table-hover dfer-dataTables">
						<thead>
							<tr>
								<th width="50">编号</th>
								<th width="100">ip</th>
								<th width="100">活跃天数</th>
								<th width="150">首次统计时间</th>
								<th width="150">最近统计时间</th>
								<th width="150">操作</th>
							</tr>
						</thead>
					</table>
```

```
$(document).ready(function() {
			$('.dfer-dataTables').DataTable({
				columns: [{
						data: 'id'
					},
					{
						data: "ip"
					},
					{
						data: "hits"
					},
					{
						data: "addtime"
					},
					{
						data: "last_time"
					},
					{
						data: "opt",
						orderable: false,
						searchable: false
					}
				],
				serverSide: true,
				ajax: {
					url: '',
					type: 'POST'
				},
				aLengthMenu: [15, 50, 100], //更改显示记录数选项
				iDisplayLength: 15 //默认显示的记录数

			});
		});

```
```
show_page(self::$db_Statistics,[],"Df_web_mng/data/".self::$db_Statistics);
```
