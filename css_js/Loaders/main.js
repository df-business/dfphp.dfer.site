/*
 * 
 
<script type="text/javascript" src="./Loaders/jquery.min.js"></script>
<script type="text/javascript" src="/css_js/Loaders/main.js"></script>
 
 * *
 * 页面加载效果
 * 同时添加遮罩层，防止用户在页面加载完成前点击页面
 * 
 * 同一个页面只能加载一次onload，所以要统一调用
 * $(window).load(function(){
		Clearloader();
	})
 * 
 */

function loading() {
	$(function() {

		//载入css文件
		$("<link>")
			.attr({
				rel: "stylesheet",
				type: "text/css",
				href: "/css_js/Loaders/main.css",
				onload: ""
			})
			.appendTo("head");

		$('body').prepend('<div class="loader">\
    <div class="loader-inner ball-spin-fade-loader">\
      <div></div>\
      <div></div>\
      <div></div>\
      <div></div>\
      <div></div>\
      <div></div>\
      <div></div>\
      <div></div>\
    </div>\
 </div>\
 <div class="dfer_loading"></div>');

		setTimeout(function() {
			Loader()
		}, 1000)

	})
}
//清除
clearLoader = function() {
	$(".loader").remove()
	$(".dfer_loading").remove() //移除遮罩
};

//调整元素	
function Loader() {
	//	$('.dfer_loading').hide();//隐藏遮罩
	$(".loader").animate({
		opacity: 1,
		'top': '10%',
		'left': '90%'
	}, 3000);
	$(".loader div").css({
		'background': 'orange'
	});
}