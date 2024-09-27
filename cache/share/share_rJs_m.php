<!--=========引用=========-->
<!--rJs框架-->
<script src="/css_js/requireJs/require.js" data-main=""></script>
<!--rJs参数。因为运行内容需要在页面中进行声明，所以不能将参数直接赋值给rJs的“data-main”-->
<script src="/css_js/requireJs/init.js"></script>

<!--通用脚本-->
<script>
	
	
	require(['jq'], function() {
		//引用js文件，调用其中模块的方法，没有声明模块则直接调用方法
		require(['df', 'sc', 'load', 'jqExt'], function(m1, m2, m3) {
			//根据不同页面，分别调用js文件
			var url_a = jQuery.getUrlParam('a') == null ? 'index' : jQuery.getUrlParam('a');
			log(url_a);
			switch(url_a) {
				default: break;
			}

			//所有资源加载完成则执行
			function loaded() {
				log('res loaded');
				$("<style>").html(
					'*{font-family: ft !important; }'
				).appendTo("head");
				log('字体加载完成')
				//防止load速度过快而清除失败
				load = setInterval(function() {
					//			log($(".loader"))
					if($(".loader").length > 0) {
						clearLoader()
						clearInterval(load)
						//						$('#body').removeAttr('hidden')
						log('clear loader')
					}

				})
				//调用模块内的函数
				m1.init();
				story();
				
			}
			//js加载完成则执行
			function init() {
				$.ProtectPage();
				
				$('#first_loading').remove(); //在js加载前添加loading效果，增加页面友好度，加载完成则删除

				loading();
				hacker(1, '<?php echo $home_layout["color"] ?>');
				
				
				require(['rain'],function(){});

			}
			init();
			$(window).on('resize', log('resize'));
			$(window).on('loaded', loaded());

		});
	})
</script>
<style>

</style>