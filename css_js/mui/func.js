var showLog = true;

/*信息弹窗
 * 
 * 
 * eg:
 * show('123')
 * show('333',1)
 * show('11',2,function(){})
 */
function show(str, x, action) {
	x = x == undefined ? 0 : x;
	switch(x) {

		case 0:
			//自定义提示框
			var delay = 1000; //显示速度
			var obj = jQuery("show");
			//如果标签不存在就调用系统提示框
			if(obj.length == 0) {
				mui.toast(str);
				break;
			}
			obj.html(str);
			obj.animate({
				opacity: 1,

			}, delay, 'swing', function() {
				obj.animate({
					opacity: 0,

				}, delay, 'linear', function() {
					//					obj.remove();
				});
			});
			break;

		case 1:
			//底部黑背提示框
			mui.toast(str);
			break;
		case 2:
			//无标题提示框,确定之后触发func
			plus.nativeUI.alert(str, action)
			break;
		case 3:
			//带标题提示框
			mui.alert(str)
			break;
	}
}

/*调用默认的loading效果
 * 
 * 开始load
 * eg:showWait(1)
 * 
 * 停止load
 * eg:showWait(0)
 */
showWait = function(x, str) {
	str = str == undefined ? '...' : str;
	if(!x)
		plus.nativeUI.closeWaiting();
	else
		plus.nativeUI.showWaiting(str);
}

//将json对象转化为字符串
jsonToStr = function(data) {

	var rt = JSON.stringify(data, null, 4); //使用四个空格缩进

	return rt;
}

/*

 * 将json字符串转化为json对象

 */
function strToJson(str) {
	return JSON.parse(str);
}

/*通过url调用token获取各种信息
 * 
 * 用作登录后的数据请求
 */
function getData(url, func, dt) {

	if(showLog) {
		log(url)
	}
	mui.ajax(url, {
		data: dt,
		dataType: 'json', //服务器返回json格式数据
		type: 'post', //HTTP请求类型
		timeout: 10000, //超时时间设置为10秒；
		headers: {},
		success: function(data) {
			var jsonStr = jsonToStr(data);
			func(data, jsonStr);
		},
		error: function(xhr, type, errorThrown) {
			//容错处理
			log(type);
			//			show(type)
			func('err', type);
		}
	});
}

/*
 * 下滑刷新页面
 * 
 * 刷新的容器
 * 执行的代码
 * 执行成功之后自动清除刷新效果
 * 
 * 浮动小圆圈刷新形式
 * 
 * 首次调用会自动触发一次
 * 
 */
function refreshDown(obj, action) {
	mui.init({
		pullRefresh: {
			container: obj, //下拉刷新容器标识，querySelector能定位的css选择器均可，比如：id、.class等
			down: {
				style: 'circle', //必选，下拉刷新样式，目前支持原生5+ ‘circle’ 样式
				color: '#2BD009', //可选，默认“#2BD009” 下拉刷新控件颜色
				height: '50px', //可选,默认50px.下拉刷新控件的高度,
				range: '100px', //可选 默认100px,控件可下拉拖拽的范围
				offset: '0px', //可选 默认0px,下拉刷新控件的起始位置
				auto: true, //可选,默认false.首次加载自动上拉刷新一次
				callback: function() {
					action();
					log(obj)

					//结束刷新
					mui(obj).pullRefresh().endPulldown(true);
					//					mui(obj).pullRefresh().endPullDownToRefresh();
				} //必选，刷新函数，根据具体业务来编写，比如通过ajax从服务器获取新数据；
			}
		}
	});
}

/*上划加载更多 
 * 
 */
function refreshUp(obj, action) {

	//当action为数字时显示加载了全部数据，否则运行action
	//	log(typeof(action))
	//	log(action)
	if(typeof(action) == 'number')
		mui(obj).pullRefresh().endPullupToRefresh(true); //参数为true代表没有更多数据了，停用刷新
	else if(typeof(action) == 'string')
		mui(obj).pullRefresh().enablePullupToRefresh(); //恢复刷新
	else
		mui.init({
			pullRefresh: {
				container: obj, //下拉刷新容器标识，querySelector能定位的css选择器均可，比如：id、.class等
				up: {
					auto: true,
					contentrefresh: '加载中',
					callback: function() {

						setTimeout(function() {
							action();
							mui(obj).pullRefresh().endPullupToRefresh()
						}, 500);
					}
				}
			}
		});
}

var page = 1,
	rows = 5;

function dt(url,name) {
	//dt
	getData(url, function(dt, str) {
		if(showLog) {
			log('dt:' + str)
		}
		dt = dt.data;
		if(dt == '') {
		$('#space1 box').html('')
		} else
			dt = dt;
		if(dt == '')
			refreshUp('body', 1)
		else
			$('#dt').tmpl(dt).appendF(0);
	}, {
		str: name
	});
}



