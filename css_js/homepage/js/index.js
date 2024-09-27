function QQ() {

		layer.confirm('干嘛？', {
			btn: ['联系Df', '无聊'] //按钮
		}, function() {

			window.open("!!SSL!!://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=3504725309");

		}, function() {
			alert1()
		});

	}

	//清空form下的所有input和textarea
	function reset() {
		$("form input,textarea").val("");
	}

	$("#PF").click(function() {

		if($("[name='data[name]']").val() == "" || $("[name='data[E_mail]']").val() == "" || $("[name='data[content]']").val() == "") {
			layer.msg("必须填写名字、联系方式、内容！", {
				icon: 5
			});
			return false; //"return true"会调用原框架的输入验证，但是只有pc和mobile端的支持，在MacBook端无法触发验证，兼容性不是特别好，于是改用兼容性更好的“layer.msg”
		}
		$("#PF").attr("disabled", true);
		$("#PF").html("发送中...");
		UrlPostForm("<?php echo SplitUrl("
			homepage / home / Post_Msg ") ?>", "form", [function(j) {
				layer.msg(j.result, {
					icon: 6
				});
				$("#PF").html("发送");
				$("#PF").attr("disabled", false);
				reset();
			}, function(j) {
				alert(j.result, {
					icon: 5
				});
			}]) //Asynchronous commit
		return false; //Block auto submit
	})
