 <?php  global $m,$_df; $home_layout = show("home_layout",1);   ?>
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
			 
			include view('share','share_rJs','','');			
			$m->ie_notice();
		 ?>

		

	<!--'纵有三千弱水 ',
		'阡陌繁花',
		'怎敌你拈花一笑'-->
	<style>
		body {
			-webkit-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
		}
		
		.publicColor,
		.flexbox-center,
		.amazingaudioplayer-title,
		.copyright-text,
		h1 {
			color: <?php echo $home_layout["color"] ?> !important;
		}
		
		.loader-inner div {
			background: <?php echo $home_layout["color"] ?> !important;
		}
		
		.linkP:hover {
			background-color: rgba(0, 0, 0, 0.3);
			color: white;
		}
		
		.dfLogo:before {
			font-family: dfer !important;
			font-size: 7rem;
			/*在htm转php的过程中单斜杠被过滤了，所以需要使用双斜杠*/
			content: '\29' !important;
			position: relative;
			top: 15px;
			right: 15px;
		}
	</style>

	<script>
		//音乐自动播放	
		var autoplay = <?php echo $home_layout["musicPlay"]  ?>;
	</script>


		<style>
			html,
			body {
				height: 100%;
			}
			
			body {
				background: url(<?php echo $home_layout['img1'] ?>) no-repeat;
				background-size: 100% 100%;
			}
		</style>
	</head>

	<body>
		<div hidden="" id="first_loading" style="z-index:66666;position: fixed;left: 49%;top: 45%;"><img src="/img/loading-1.gif"></div>
		<div hidden="" id="body">
			

	<!-- background images -->
	<div class="page-bg-imgs-list">
		<img src="<?php echo $home_layout['img1'] ?>" id="page-1-img" class="main-img" alt="About">
		<img src="<?php echo $home_layout['img1'] ?>" id="page-2-img" alt="Gallery">
		<img src="<?php echo $home_layout['img1'] ?>" id="page-3-img" alt="Article">
		<img src="<?php echo $home_layout['img1'] ?>" id="page-4-img" alt="Contact">
		<img src="<?php echo $home_layout['img1'] ?>" id="page-5-img" alt="Music">
		<img src="<?php echo $home_layout['img1'] ?>" id="page-6-img" alt="Link">
	</div>

	<!-- site Menu -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-5 col-xl-5">

				<div class="header">
					<!-- site title -->
					<header class="box box-white">
						<a href="javascript:void(0)" class="js-site-title">
							<h1 class="box-text site-title-text dfLogo"></h1>
						</a>
					</header>

					<!-- site navigation -->
					<nav class="js-nav">
						<ul class="nav-items-container">

							<!-- 1 -->
							<li data-nav-item-id="page-1" class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left">
								<a href="#page-1" class="block-keep-ratio-content box-nav-item-link">
									<span class="box-text box-text-nav-item flexbox-center "><?php echo $home_column[0]["menu"] ?></span>
								</a>
							</li>
							<!-- #1 -->
							<!-- 3 -->
							<li data-nav-item-id="page-3" class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-right">
								<a href="#page-3" class="block-keep-ratio-content box-nav-item-link">
									<span class="box-text box-text-nav-item flexbox-center"><?php echo $home_column[1]["menu"] ?></span>
								</a>
							</li>
							<!-- #3 -->
							<!-- 4 -->
							<li data-nav-item-id="page-4" class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left">
								<a href="#page-4" class="block-keep-ratio-content box-nav-item-link">
									<span class="box-text box-text-nav-item flexbox-center"><?php echo $home_column[2]["menu"] ?></span>
								</a>
							</li>
							<!-- #4 -->
							<!-- 5 -->
							<li data-nav-item-id="page-5" class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-right">
								<a href="#page-5" class="block-keep-ratio-content box-nav-item-link">
									<span class="box-text box-text-nav-item flexbox-center"><?php echo $home_column[3]["menu"] ?></span>
								</a>
							</li>
							<!-- #5 -->
							<!-- 6-->
							<li data-nav-item-id="page-6" class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left">
								<a href="#page-6" class="block-keep-ratio-content box-nav-item-link">
									<span class="box-text box-text-nav-item flexbox-center"><?php echo $home_column[4]["menu"] ?></span>
								</a>
							</li>
							<!-- #6 -->

						</ul>
					</nav>
				</div>
				<!-- .header -->
			</div>

			<!-- site column -->
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-7 col-xl-7">
				<div class="content-wrapper js-content-wrapper">

					<!-- 1 -->
					<section data-page-id="page-1" class="content js-content">

						<header class="box box-black margin-b-20">
							<h2 class="box-text page-title-text"><?php echo $home_column[0]["title"] ?></h2>
						</header>
						<p class="publicColor" style="color: rgba(236, 238, 239, 0.54);">
							<?php echo $home_column[0]["describe"] ?>
						</p>
						<div class="content-text">
							<?php echo $home_column[0]["content"] ?>
						</div>
					</section>
					<!-- #1 -->
					<!-- 2 -->
					<section data-page-id="page-2" class="content content-gallery js-content">

						<header class="box box-black margin-b-20">
							<h2 class="box-text page-title-text"> </h2>
						</header>

						<div class="content-text content-text-gallery">
							<div class="flexslider-wrapper">
								<div id="slider" class="flexslider">
									<ul class="slides"></ul>
								</div>

								<div id="carousel" class="flexslider">
									<ul class="slides"></ul>
								</div>

							</div>

						</div>
					</section>
					<!-- #2 -->
					<!-- 3 -->
					<section data-page-id="page-3" class="content js-content">

						<header class="box box-black margin-b-20">
							<h2 class="box-text page-title-text"> <?php echo $home_column[1]["title"] ?></h2>
						</header>
						<p class="publicColor" style="color: rgba(236, 238, 239, 0.54);">
							<?php echo $home_column[1]["describe"] ?>
						</p>
						<div class="content-text">

							<?php echo $home_column[1]["content"] ?>
						</div>
					</section>
					<!-- #3 -->
					<!-- 4 -->
					<section data-page-id="page-4" class="content js-content">

						<header class="box box-black margin-b-20">
							<h2 class="box-text page-title-text">
                               <?php echo $home_column[2]["title"] ?>
                               	<a target="_blank" id='QQ' href='javascript:'>                               
                                  
                                  <img src="<?php echo SSL ?>://wpa.qq.com/pa?p=2:3504725309:41" style="float: right;
" title="点击此处给我发QQ消息！" />
                                </a>
                            </h2>

						</header>
						<p class="publicColor" style="color: rgba(236, 238, 239, 0.54);">
							<?php echo $home_column[2]["describe"] ?>
						</p>
						<div class="content-text">

							<form id="form" method="post" class="contact-form">

								<div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 form-group-2-col-left"><input type="text" name="data[name]" class="form-control" placeholder="你的名字" required /></div>

								<div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 form-group-2-col-right"><input type="text" name="data[E_mail]" class="form-control" placeholder="你的联系方式（E-mail、QQ、微信……）" /></div>

								<div class="form-group"><textarea name="data[content]" class="form-control" rows="4" placeholder="内容" required></textarea></div>

								<button id="Sub" class="btn btn-primary submit-btn">提交</button>
							</form>

						</div>
					</section>
					<!-- #4 -->

					<!-- 5 -->
					<section data-page-id="page-5" class="content js-content">

						<header class="box box-black margin-b-20">
							<h2 class="box-text page-title-text"> <?php echo $home_column[3]["title"] ?></h2>
						</header>

						<div class="content-text" style="background-color: rgba(0, 0, 0,0);">
							<p class="publicColor" style="color: rgba(236, 238, 239, 0.54);">
								<?php echo $home_column[3]["describe"] ?>
							</p>
							<!-- Music -->
							<!-- Insert to your webpage where you want to display the audio player -->
							<div id="amazingaudioplayer-1" style="display:block;position:relative;width:100%;height:auto;margin:0px auto 0px;">
								<ul class="amazingaudioplayer-audios" style="display:none;">
									<?php $num=0; if(isset($home_music))foreach($home_music as $k=>$v){  $num++;        ?>

										<li data-artist="" data-title="<?php echo $v["title"] ?>" data-album="" data-info="" data-image="/favicon.png?<?php echo TIMESTAMP ?>" data-duration="0">
											<div class="amazingaudioplayer-source" data-src="<?php echo $v["src"] ?>" data-type="audio/mpeg" />
										</li>
									<?php } ?>

								</ul>
							</div>
							<!-- End of body section HTML codes -->

						</div>
					</section>
					<!-- #5 -->
					<!-- 6-->
					<section data-page-id="page-6" class="content js-content">

						<header class="box box-black margin-b-20">
							<h2 class="box-text page-title-text"> <?php echo $home_column[4]["title"] ?></h2>
						</header>
						<p class="publicColor" style="color: rgba(236, 238, 239, 0.54);">
							<?php echo $home_column[4]["describe"] ?>
						</p>

						<div class="content-text" style="background-color: rgba(0, 0, 0, 0.66);">

							<?php $num=0; if(isset($home_link))foreach($home_link as $k=>$v){  $num++;        ?>

								<a href="<?php echo $v["src"] ?>" target="_blank" style="color: #ebffee;">
									<p class="linkP" style="text-align: center;">
										<?php echo $v["title"] ?>
									</p>
								</a>
							<?php } ?>

						</div>
					</section>
					<!-- #6-->

				</div>
			</div>
		</div>

		<!-- footer row -->
		<footer class="row footer js-footer" style="padding: 3px 0px;
    position: fixed;
    bottom: 0px;
    left: 0;
    background: black;
    width: 100%;
    text-align: center;">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<p class="copyright-text">
					<?php echo $home_layout["Inscribe"] ?>
				</p>
			</div>
		</footer>
	</div>

	</div>
	<!--[if IE]>
	
<![endif]-->

		</div>
	</body>

	

	<!--script-->
	<script>
		//清空form下的所有input和textarea
		function reset() {
			$("form input,textarea").val("");
		}

		require(['jq'], function() {

			require(['jq1'], function() {
				autoplay = Boolean(<?php echo $home_layout["musicPlay"]  ?>);
				volume = 6;
				random = 1;
				//需要单独依赖jq1
				require(['bs', 'fs', 'aa'], function() {
					//tm依赖于bs
					require(['tm', 'ia'], function() {
						//rJs加载会在插件还没加载完就显示页面，从而导致页面显示不健全，所以需要隐藏body，在rJs加载之后显示
						$('#body').removeAttr('hidden')
						if(autoplay)
						$('.amazingaudioplayer-play').click();
					})

				})
			})
			//引用js文件，调用其中模块的方法，没有声明模块则直接调用方法
			require(['df', 'lyui', 'ft'], function(m1, m2, m3) {
				layui.use(['layer'], function() {
					layer = layui.layer

					//			//如果是采用模块化加载，就要单独加载css
					//			layer.config({
					//				path: '/css_js/layui/layer/' //layer.js所在的目录，可以是绝对目录，也可以是相对目录
					//			});

					$('#QQ').on('click', function() {

						layer.confirm('干嘛？', {
							btn: ['联系Df', '无聊'] //按钮
						}, function() {

							window.open("<?php echo SSL ?>://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=3504725309");

						}, function() {
							alert1(layer)
						});

					})

					$("#Sub").click(function() {

						if($("[name='data[name]']").val() == "") {
							layer.msg("必须填写名字！", {
								icon: 5
							});
							return false; //"return true"会调用原框架的输入验证，但是只有pc和mobile端的支持，在MacBook端无法触发验证，兼容性不是特别好，于是改用兼容性更好的“layer.msg”
						}
						if($("[name='data[E_mail]']").val() == "") {
							layer.msg("必须填写联系方式！", {
								icon: 5
							});
							return false; //"return true"会调用原框架的输入验证，但是只有pc和mobile端的支持，在MacBook端无法触发验证，兼容性不是特别好，于是改用兼容性更好的“layer.msg”
						}
						if($("[name='data[content]']").val() == "") {
							layer.msg("必须填写内容！", {
								icon: 5
							});
							return false; //"return true"会调用原框架的输入验证，但是只有pc和mobile端的支持，在MacBook端无法触发验证，兼容性不是特别好，于是改用兼容性更好的“layer.msg”
						}
						$("#PF").attr("disabled", true);
						$("#PF").html("发送中...");
						UrlPostForm('<?php echo SplitUrl("homepage/home/Post_Msg") ?>', "form", [function(j) {
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

				});
			});
		})
	</script>


</html>