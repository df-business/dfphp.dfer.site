/*
 * requireJs的初始界面
 * 
 */
//基本参数

var url = '/css_js/';
require.config({
	//版本信息，会自动放到所有加载的文件之后，用来保证首次访问都会刷新缓存
	urlArgs: 'v=' + (new Date()).getTime(),
	//所有文件都会以此路径进行加载
	baseUrl: url,
	//引用其余路径的文件
	paths: {
		//public
		jq: 'jquery.min',
		df: 'df',
		sc: 'SiteCloud/init',
		rain: 'Snow/init',
		ly: 'layui/layer/layer',
		lyui: 'layui/layui',
		ft: 'FontFamily/init',
		load: 'Loaders/main',
		m: 'mui/mui.min',
		jqTemp: 'jqTemplate/jquery.tmpl',
		func: 'func',
		jqExt: 'jquery.ext', //jq拓展方法
		//homepage
		jq1: 'homepage/js/jquery-1.11.3.min',
		bs: 'homepage/js/jquery.backstretch.min',
		fs: 'homepage/js/jquery.flexslider-min',
		tm: 'homepage/js/templatemo-script',
		aa: 'AmazingAudio/audioplayerengine/amazingaudioplayer',
		ia: 'AmazingAudio/audioplayerengine/initaudioplayer-1',

	},
	//载入rJs的css.js
	map: {
		'*': {
			'css': 'requireJs/css'
		}
	},
	shim: {
		'm': {
			deps: ['css!mui/mui.min']
		},
		'rain': {
			deps: ['css!Snow/init']  
		},
		'lyui': {
			deps: ['css!/css_js/layui/css/layui'],
		},
		//homepage
		'bs': {
			deps: ['css!homepage/css/bootstrap.min']
		},
		'fs': {
			deps: ['css!homepage/css/flexslider']
		},
		'tm': {
			deps: ['css!homepage/css/templatemo-style']
		},
		'ia': {
			deps: ['css!AmazingAudio/audioplayerengine/initaudioplayer-1']
		}

	}

});