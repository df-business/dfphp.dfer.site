<?php 
global $m,$_df;
$m->VerifyLogin(1); 
 ?>

<html>

	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />

		<!--layui-->
		<link rel="stylesheet" href="/css_js/layui/css/layui.css" media="all">
		<script src="/css_js/layui/layui.js" charset="utf-8"></script>
		<!--adminFrame-->
		<link href="/css_js/AdminFrame/css/bootstrap.min.css?v=3.3.6" rel="stylesheet" />
		<link href="/css_js/AdminFrame/css/font-awesome.css?v=4.4.0" rel="stylesheet" />
		<link href="/css_js/AdminFrame/css/style.css?v=4.1.0" rel="stylesheet" />
		<script src="/css_js/AdminFrame/js/jquery.min.js"></script>
		<script src="/css_js/df.js"></script>

		<df-header/>
	</head>

	<body class="gray-bg">
		<div class="wrapper wrapper-content">
			
    

<div class="row">
	<div class="col-sm-12">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>>></h5>
			</div>
			<div class="ibox-content">
				<div class="row form-horizontal form-group">
					<div class="col-sm-1">
						<a href='<?php echo SplitUrl(sprintf("homepage/column/%sadd",self::$db_hm)) ?>' class="btn btn-primary btn-sm"><i class="fa fa-plus"></i>&nbsp;添加</a>
					</div>

				</div>
				<table class="table table-striped table-bordered table-hover dataTables-example">
					<thead>
						<tr>
							<th width="50">编号</th>
							<th width="100">名称</th>
							<th width="150">路径</th>
							<th width="150">操作</th>
						</tr>
					</thead>
					<tbody>
						<?php $num=0; if(isset($output))foreach($output as $k=>$v){  $num++;        ?>
						    
						
						<tr>
							<td><?php echo $num ?></td>
							<td>
								<a href='#'><?php echo $v["title"] ?></a>
							</td>
							<td><?php echo $v["src"] ?></td>
							<td class='center'>
								<a href='<?php echo SplitUrl(sprintf("homepage/column/%sadd/{$v[0]}",self::$db_hm)) ?>'>[编辑]</a>
								<a href='<?php echo SplitUrl(sprintf("homepage/column/%sdel/{$v[0]}",self::$db_hm)) ?>' onclick='return confirm("您确认要删除吗?")'>[删除]</a>
							</td>
						</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

		</div>
		<!-- 全局js -->
		<script src="/css_js/AdminFrame/js/bootstrap.min.js?v=3.3.6"></script>
		<!-- 自定义js -->
		<script src="/css_js/AdminFrame/js/content.js?v=1.0.0"></script>
	</body>

	
    


<!-- Data Tables -->
<link href="/css_js/dataTables/dataTables.bootstrap.css" rel="stylesheet">
<script src="/css_js/dataTables/jquery.dataTables.js"></script>
<script src="/css_js/dataTables/dataTables.bootstrap.js"></script>

<script>
	$(document).ready(function() {
		$('.dataTables-example').dataTable({
			"aLengthMenu": [10, 50, 100], //更改显示记录数选项
			"iDisplayLength": 10 //默认显示的记录数
		});
	});
</script>



</html>