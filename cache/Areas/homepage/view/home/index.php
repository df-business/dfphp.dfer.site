 <?php  global $m,$_df; $home_layout = show("home_layout",1);  ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title><?php echo $home_layout['title'] ?></title>
		<meta name="author" content="Df" />
		<meta name="keywords" content="<?php echo $home_layout['keywords'] ?>" />
		<meta name="description" content="<?php echo $home_layout['description'] ?>" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width" />
		<!--页面尺寸-->
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<!--手机状态栏的颜色-->
		<meta name="apple-mobile-web-app-status-bar-style" content="black" />
		<!--作为独立的网页，进行全屏显示-->
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="shortcut icon" href="/favicon.ico" />
		<link rel="apple-touch-icon" href="/favicon.png" />
		<!--=========自定义alert=========-->
		<link rel="stylesheet" type="text/css" href="/css_js/sweetalert/sweetalert.css">
		<script type="text/javascript" src="/css_js/sweetalert/sweetalert-dev.js"></script>
		<!--=========引用=========-->
		<?php 			 
			include view('share','share_origin','','');			
			$m->ie_notice();
		 ?>

		

	<link rel="stylesheet" href="/css_js/windows/init.css" />
	<link rel="stylesheet" href="/css_js/windows/themes/jquery.ui.all.css" />
	<link rel="stylesheet" href="/css_js/windows/jquery-smartMenu/css/smartMenu.css" />
	<script type="text/javascript" src="/css_js/windows/jquery-1.6.2.js"></script>
	<script type="text/javascript" src="/css_js/windows/myLib.js"></script>
	<script type="text/javascript" src="/css_js/windows/jquery-ui-1.8.16.custom.min.js"></script>
	<script type="text/javascript" src="/css_js/windows/jquery.winResize.js"></script>
	<script type="text/javascript" src="/css_js/windows/jquery-smartMenu/js/jquery-smartMenu-min.js"></script>
	<script type="text/javascript" src="/css_js/windows/init.js"></script>
	<script type="text/javascript" src="/css_js/df.js"></script>

	<link rel="stylesheet" href="/css_js/Loaders/main.css">
	<script type="text/javascript" src="/css_js/Loaders/main.js"></script>
	<link rel="stylesheet" href="/css_js/butterfly/style.css" />

	<style>
		body {
			background: #009688 url(<?php echo $home_layout["img1"] ?>);
			background-attachment: fixed;
			background-repeat: no-repeat;
			background-size: cover;
			
			color: <?php echo $home_layout['color'] ?> !important;
		}
	</style>


		<style>
			html,
			body {
				height: 100%;
			}
		</style>
	</head>

	

	<body>

		<svg class="svg-defs">
			<defs>
				<pattern id='image' width="1" height="1" viewBox="0 0 100 100" preserveAspectRatio="none">
					<image xlink:href="" width="100" height="100" preserveAspectRatio="none"></image>
				</pattern>
				<pattern id='image0' width="1" height="1" viewBox="0 0 100 100" preserveAspectRatio="none">
					<image xlink:href="/css_js/butterfly/swing.gif" width="100" height="100" preserveAspectRatio="none"></image>
				</pattern>
				<g id="shape-butterfly-1">
					<path class="path" fill="" clip-rule="evenodd" d="M8.65,2.85c0.934-0.2,2.15-0.333,3.65-0.4c1.534-0.1,2.667-0.083,3.4,0.05
		c1.533,0.267,3.45,0.767,5.75,1.5c2.466,0.8,4.35,1.617,5.65,2.45c2.066,1.2,3.883,2.383,5.45,3.55c2.567,2.1,4.35,3.8,5.35,5.1
		l2.1,2.5c0.933,1.167,1.517,1.983,1.75,2.45c0.333,0.767,1.083,2.117,2.25,4.05c0.233,0.467,0.717,1.683,1.45,3.65
		c0.733,2.067,1.2,3.45,1.4,4.15c0.467,1.733,0.917,3.767,1.35,6.1l0.4,3.85l-0.25-3.4c-0.6-5.967-1.267-10.25-2-12.85
		c-0.733-2.434-2.167-5.467-4.3-9.1c-0.966-1.667-1.566-3-1.8-4c-0.233-0.933-0.1-1.267,0.4-1c1.3,0.733,2.917,3.867,4.85,9.4
		c1.667,4.7,2.85,11.2,3.55,19.5c0.567,6.934,0.667,11.917,0.3,14.95l0.2,0.05c0.231,0,0.348-0.05,0.35-0.15v0.05l0.1,0.05v27.4
		c-0.032-0.018-0.065-0.035-0.1-0.05v-0.05c-0.7,0.267-0.983,0.117-0.85-0.45c0.067-0.333,0.017-0.817-0.15-1.45
		c-0.2-0.6-0.316-0.983-0.35-1.15l-0.5-1.65c-0.533-2.967-0.833-5.034-0.9-6.2c-0.1-1.533-0.133-2.4-0.1-2.6
		c0-0.933,0.167-1.667,0.5-2.2c0.567-0.9,0.684-1.75,0.35-2.55c-0.167-0.367-0.367-0.6-0.6-0.7c-0.333-0.133-0.517,0.283-0.55,1.25
		c-0.033,1.533-0.167,2.9-0.4,4.1c-0.1,2.3-0.267,3.684-0.5,4.15c-0.333,0.667-1.25,2.95-2.75,6.85c-1.167,2.8-2.233,4.817-3.2,6.05
		c-0.9,1.2-1.583,2.1-2.05,2.7c-0.8,1-1.434,1.667-1.9,2c-2.067,1.333-3.633,2.067-4.7,2.2c-3.033,0.267-4.95,0.317-5.75,0.15
		c-0.8-0.167-1.383-0.217-1.75-0.15c-0.533,0.1-1.033,0.45-1.5,1.05c-0.5,0.667-1.217,1.284-2.15,1.85
		c-0.934,0.567-1.85,0.934-2.75,1.1c-2.467,0.433-4.45,0.25-5.95-0.55c-0.7-0.4-1.467-1.15-2.3-2.25c-0.6-0.867-1.033-1.567-1.3-2.1
		c-0.267-0.667-0.483-1.483-0.65-2.45c-0.3-1.467-0.383-2.717-0.25-3.75c0.267-1.9,0.45-3.05,0.55-3.45
		c0.233-1.233,0.566-2.333,1-3.3C9.25,77.45,9.767,76.4,10,76c0.667-1.233,1.55-2.583,2.65-4.05c1.1-1.434,2.184-2.583,3.25-3.45
		c0.367-0.3,1.15-0.867,2.35-1.7c0.767-0.566,1.917-1.25,3.45-2.05c1.733-0.933,3.267-1.633,4.6-2.1
		c2.133-0.733,4.534-1.467,7.2-2.2c0.467-0.1,1.517-0.3,3.15-0.6c0.967-0.233,0.4-0.4-1.7-0.5c-2.434-0.1-4.534-0.3-6.3-0.6
		c-1.566-0.267-3.383-0.7-5.45-1.3c-2.8-0.8-4.467-1.317-5-1.55c-1.567-0.667-3.2-1.75-4.9-3.25c-1.733-1.533-3-3.1-3.8-4.7
		c-0.533-1.067-0.967-2.434-1.3-4.1c-0.233-1.067-0.3-2.133-0.2-3.2c0.133-0.833,0.183-1.3,0.15-1.4v-0.6
		c-2.467-3.233-3.983-5.433-4.55-6.6c-0.533-1.033-0.883-1.833-1.05-2.4c-0.3-0.867-0.466-1.85-0.5-2.95
		c-0.033-2.367,0.034-4.117,0.2-5.25c0.3-1.034,0.483-1.8,0.55-2.3c0.167-0.867,0.034-1.533-0.4-2c-0.6-0.7-1.133-1.517-1.6-2.45
		c-0.566-1.133-0.833-2.117-0.8-2.95c0.033-1.333,0.167-2.367,0.4-3.1c0.367-1.267,1.05-2.267,2.05-3
		C4.417,4.25,6.483,3.317,8.65,2.85z" />
					<g>
			</defs>
		</svg>
		<div class="butterfly_container">
			<var class="rotate3d">
            <var class="scale">
                <var class="translate3d">
                    <var class="translate3d-1">
                        <figure class="butterfly">
                            <svg class="wing0 left" viewBox="0 0 50 100" class="icon shape-codepen">
                                <use class="left" xlink:href="#shape-butterfly-1"></use>
                            </svg>
                            <svg class="wing0 right" viewBox="0 0 50 100" class="icon shape-codepen">
                                <use class="left" xlink:href="#shape-butterfly-1"></use>
                            </svg>
                        </figure>
                    </var>
			</var>
			</var>
			</var>
		</div>

		<div class="butterfly_container " style="margin-top: -150px; margin-left: 140px;
              -webkit-animation-duration: 5s;
              -moz-animation-duration: 5s;
              -ms-animation-duration: 5s;
              -o-animation-duration: 5s;
              animation-duration: 5s;">
			<var class="rotate3d">
            <var class="scale">
                <var class="translate3d">
                    <var class="translate3d-1">
                        <figure class="butterfly">
                            <svg class="wing left" viewBox="0 0 50 100"
                                 style="-webkit-animation-duration: .75s;
                  -moz-animation-duration: .75s;
                  -ms-animation-duration: .75s;
                  -o-animation-duration: .75s;
                  animation-duration: .75s;">
                                <use class="left" xlink:href="#shape-butterfly-1"></use>
                            </svg>
                            <svg class="wing right" viewBox="0 0 50 100"
                                 style="-webkit-animation-duration: .75s;
                  -moz-animation-duration: .75s;
                  -ms-animation-duration: .75s;
                  -o-animation-duration: .75s;
                  animation-duration: .75s;">
                                <use class="left" xlink:href="#shape-butterfly-1"></use>
                            </svg>
                        </figure>
                    </var>
			</var>
			</var>
			</var>
		</div>

		<!--桌面-->
		<ul id="deskIcon">
			<li class="desktop_icon" id="win5" path="/homepage/home/ly">
				<span class="icon"><img src="/css_js/windows/icons/msg.png" /></span>
				<div class="text">
					留言
					<div class="right_cron"></div>
				</div>
			</li>
			<li class="desktop_icon" id="win6" path="/homepage/home/pic">
				<span class="icon"><img src="/css_js/windows/icons/pictures.png" /></span>
				<div class="text">
					相册
					<div class="right_cron"></div>
				</div>
			</li>
			<li class="desktop_icon" id="win7" path="/homepage/home/js">
				<span class="icon"><img src="/css_js/windows/icons/message4.png" /></span>
				<div class="text">
					介绍
					<div class="right_cron"></div>
				</div>
			</li>
			<li class="desktop_icon" id="win8" path="/homepage/home/note">
				<span class="icon"><img src="/css_js/windows/icons/notepad.png" /></span>
				<div class="text">
					笔记本
					<div class="right_cron"></div>
				</div>
			</li>
			<li class="desktop_icon" id="win9" path="/homepage/home/music">
				<span class="icon"><img src="/css_js/windows/icons/media_player.png" /></span>
				<div class="text">
					音乐
					<div class="right_cron"></div>
				</div>
			</li>
			<li class="desktop_icon" id="win10" path="/homepage/home/link">
				<span class="icon"><img src="/css_js/windows/icons/cloud.png" /></span>
				<div class="text">
					链接
					<div class="right_cron"></div>
				</div>
			</li>

		</ul>

		<!--任务栏-->
		<div id="taskBar">
			<div id="leftBtn">
				<a href="#" class="upBtn"></a>
			</div>
			<div id="rightBtn">
				<a href="#" class="downBtn"></a>
			</div>
			<div id="task_lb_wrap">
				<div id="task_lb"></div>
			</div>
		</div>
		<!--侧边栏-->
		<div id="lr_bar">
			<ul id="default_app">
				<li id="app0"><img src="/css_js/windows/icons/house134.png" title="个人主页" path="/?wap" /></li>
				<li id="app2"><img src="/css_js/windows/icons/learning.png" title="留言" path="/homepage/home/ly" /></li>
				<li id="app3"><img src="/css_js/windows/icons/qq.png" title="发送QQ" path="" /></li>

			</ul>
			<!--小图标-->
			<div id="default_tools">
				<span id="showZm_btn" title="显示桌面"></span>
				<span id="shizhong_btn" title="时钟" path="http://bjtime.cn/"></span>
				<span id="weather_btn" path="http://tianqi.moji.com/" title="天气"></span>
				<span id="them_btn" path="/homepage/home/pic" title="主题"></span>
			</div>

			<!--开始菜单-->
			<div id="start_block">
				<a title="开始" id="start_btn"></a>
				<div id="start_item">
					<ul class="item admin">
						<li id="start0"><span class="adminImg"></span> Df </li>
					</ul>
					<ul class="item">						
						<li id='start2'><span class="help_btn" path="/admin/home/readme/" title="help"></span>使用指南</li>
						<li id='start3'><span class="about_btn" path="/homepage/home/js" title="about"></span>关于我们</li>
						<li id='start4'><span class="logout_btn"></span>退出系统</li>
					</ul>
				</div>
			</div>
		</div>

		<!--落款-->
		<df class="powered_by" style="padding: 0px 0px;
    position: fixed;
    bottom: 0px;
    left: 0;
    background: #00000000;
    width: 100%;
    text-align: center;    font-family: !important;">
			© 2017-2020 Df
			<a id="beian" target='_blank' href='http://www.beian.miit.gov.cn' style="font-family: !important;">鄂ICP备17012786号</a>
			<a id="beian_wa" target="_blank" href="http://www.beian.gov.cn" style=""><img src="/img/beian.png" style="width: 15px;" />鄂公网安备42050202000494号</a>
		</df>

	</body>


	



	

</html>