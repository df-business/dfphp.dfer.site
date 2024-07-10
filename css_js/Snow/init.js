/*
 * 下雪插件
 * 
 * <script src="/css_js/Snow/main.js"></script>
 * <link rel="stylesheet" href="/css_js/Snow/main.css"> 
 * 
 * 
 */
//时钟
var time = 0;
var i = 0,
	c, d, wind_time;
var all = 0,
	other = 0,
	wind = 0;
var width, height;
var DownSpeed = 8, //坠落速度的随机范围，越大则最大速度越快
	FreshSpeed = 15, //物理刷新速度，越小越流畅
	WindSpeed = 9, //风速范围
	ShowLog = false, //输出log
	WindChangeSpeed = 11, //风速变化速度，以秒为单位
	SnowM = '.', //雪花形状
	AddSnowSpeed = 100; //新增雪花速度的随机范围，越小则界面的雪花越多

function windowSize() {
	//获取屏幕可见区域的实际大小
	width = $("html").width();
	height = width;//("html").height();
	

	//console.clear()
	console.log(width+"|"+height);

	gogo();
	wind_run(WindSpeed * Math.random());
}

//雪花
function gogo() {
	var a = document.createElement("div");
	a.innerHTML = SnowM;
	a.id = "xue" + i;
	a.className = "xue";
	top = Math.random();

	a.style.top = parseInt(height) * (top > 0 ? top : 0) + 'px';
	if(wind != 0) {
		var ss = Math.random() > Math.abs(wind * 0.025) ? Math.random() : (wind > 0 ? 0 : 1);
	} else {
		var ss = Math.random()
	}
	a.style.left = parseInt(width) * ss + 'px';
	$("body").append(a);
	godown(a.id, a.id, DownSpeed * Math.random()); //坠落速度的范围
	i++;
	all++;
	var x = 100 * Math.random() * Math.random();
	setTimeout('gogo()', x);
};

//移除雪花
function removeElement(_element) { //移除标签的函数
	var _parentElement = _element.parentNode;
	if(_parentElement) {
		_parentElement.removeChild(_element);
	};
};

//坠落速度
function godown(a, e, speed) {
	if(speed < 3) {
		speed = 3
	}
	var a1 = document.getElementById(a);
	a1.style.top = parseInt(a1.style.top) + speed + 'px';
	//在范围内就移动雪花
	if(parseInt(a1.style.top) < parseInt(height)) {
		e = setTimeout("godown(\"" + a + "\",\"" + e + "\"," + speed + ")", FreshSpeed)
	}
	//雪花超出页面范围就移除
	else {
		clearTimeout(e);
		removeElement(a1);
		speed = null;
		other++;
		if(ShowLog) {
			console.clear();
			console.log("区域内还有" + (all - other) + "个雪花点.")
		}
	};
};

//两个数字之间的随机数
function rnd(min, max) {
	return min + Math.floor(Math.random() * (max - min + 1));
}

var WindSpeedCash, WindDirectCash = rnd(1, 2);
//风速
function wind_run(wind) {
	if(time == WindChangeSpeed) {
		WindSpeedCash = WindSpeed * Math.random();
		WindDirectCash = rnd(1, 2);
	}
	if(time > WindChangeSpeed && time < WindChangeSpeed * 2) {
		wind = WindSpeedCash;
	}
	if(time > WindChangeSpeed * 2) {
		time = 0
	}

	var a = $(".xue");
	for(var i = 0; i < a.length; i++) {
		if(WindDirectCash == 1)
			a[i].style.left = parseInt(a[i].style.left) + wind + 'px';
		else
			a[i].style.left = parseInt(a[i].style.left) - wind + 'px';
	};
	if(Math.abs(wind) > 0.1) {
		wind_time = setTimeout("wind_run(" + wind + ")", FreshSpeed)
	} else {
		clearTimeout(wind_time);
		wind = 0;
	};
};


//function rain(){
$(function() {

	setInterval(function() {
		time++;
	}, 1000);
	windowSize()
	
//载入css文件
//	$("<link>")
//		.attr({
//			rel: "stylesheet",
//			type: "text/css",
//			href: "/css_js/Snow/init.css",
//			onload: ""
//		})
//		.appendTo("head");

})

$(window).on('load', function() {
	windowSize()
})

//}