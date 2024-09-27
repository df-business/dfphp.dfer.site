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

				<table class="table table-striped table-bordered table-hover dataTables-example">
					<thead>
						<tr>
							<th width="50">编号</th>
							<th width="100">姓名</th>
							<th width="100">联系方式</th>
							<th width="100">内容</th>
							<th width="100">阅读状态</th>
							<th width="150">时间</th>
							<th width="150">操作</th>
						</tr>
					</thead>
					<tbody>

						<?php $num=0; if(isset($output))foreach($output as $k=>$v){  $num++;        ?>
						    
						
						<tr>
							<td><?php echo $num ?></td>							
							<td><a href='<?php echo SplitUrl(sprintf("homepage/column/%sview/{$v[0]}",self::$db_mes)) ?>'><?php echo $v["name"] ?></a></td>
							<td>
								<a target="_blank" href='mailto:<?php echo findstr($v["E_mail"],"@")?"{$v["E_mail"]}":"{$v["E_mail"]}@qq.com" ?>?subject=<?php echo $v["content"] ?>'><?php echo $v["E_mail"] ?></a>
							</td>
							<td><?php echo $v["content"] ?></td>
							<td><?php echo $v['status']?'已读':'未读' ?></td>
							<td><?php echo $v["time"] ?></td>
							<td class='center'>
								<a href='<?php echo SplitUrl(sprintf("homepage/home/delPost_Msg/{$v[0]}",self::$db_mes)) ?>' onclick='return confirm("您确认要删除吗？")'>[删除]</a>
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
	//pc端发送QQ信息
	QQ_msg = function(qqN) {

		window.open('http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=' + qqN, '_blank', 'height=1024,toolbar=no,scrollbars=no,menubar=no,status=no');

	}
</script>


</html>