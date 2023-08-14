- 用原生js打造自定义alert

```
<script>

var defaultParams = {
  title: '',
  text: '',
  type: null,
  allowOutsideClick: false,
  showConfirmButton: true,
  showCancelButton: false,
  closeOnConfirm: true,
  closeOnCancel: true,
  confirmButtonText: 'OK',
  confirmButtonColor: '#8CD4F5',
  cancelButtonText: 'Cancel',
  imageUrl: null,
  imageSize: null,
  timer: null,
  customClass: '',
  html: false,
  animation: true,
  allowEscapeKey: true,
  inputType: 'text',
  inputPlaceholder: '',
  inputValue: '',
  showLoaderOnConfirm: false
};


$(document).ready(function(){
	$("#alarm1").click(function(){
		swal("开始这个完美的弹出框旅程吧！")
	});
	$("#alarm2").click(function(){
		swal("这是标题！","这是文本")
	});
	$("#alarm3").click(function(){
		swal("这还是标题！","这还是文本","success")
	});
	$("#alarm4").click(function(){
		swal({ 
		title: "确定删除吗？", 
		text: "你将无法恢复该虚拟文件！", 
		type: "warning",
		showCancelButton: true, 
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "确定删除！", 
		cancelButtonText: "取消删除！",
		closeOnConfirm: false, 
		closeOnCancel: false	
		},
		function(isConfirm){ 
		if (isConfirm) { 
			swal("删除！", "你的虚拟文件已经被删除。",
		"success"); 
		} else { 
			swal("取消！", "你的虚拟文件是安全的:)",
		"error"); 
		} 
		});
	});
	$("#alarm5").click(function(){
		swal({ 
			title: "HTML <small>标题</small>!",
			text: "自定义<span style='color:#0000FF'>这是蓝色的<span>。", 
			html: true 
		});
	});
});




</script>
```