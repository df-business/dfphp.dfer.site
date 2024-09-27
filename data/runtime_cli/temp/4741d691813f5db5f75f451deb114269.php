<?php /*a:2:{s:84:"/www/wwwroot/dfphp.dfer.site//tp_public/themes/admin_default/admin/plugin/index.html";i:1716369056;s:78:"/www/wwwroot/dfphp.dfer.site//tp_public/themes/admin_default/public/base5.html";i:1716362213;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="/themes/admin_default/public/assets/themes/<?php echo dfer_get_admin_style('arcoadmin'); ?>/bootstrap5/bootstrap.min.css" rel="stylesheet">
    <link href="/themes/admin_default/public/assets/simpleboot/css/simplebootadmin.css" rel="stylesheet">
    <link href="/themes/admin_default/public/assets/fontawesome/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="/themes/admin_default/public/assets/fontawesome/css/v4-shims.min.css" rel="stylesheet" type="text/css">
    <link href="/themes/admin_default/public/assets/themes/<?php echo dfer_get_admin_style('arcoadmin'); ?>/simplebootadmin.css" rel="stylesheet">
    <?php 
        $is_mobile=dfer_is_mobile();
        $_static_version='1.0.5';
        $dfer_version=dfer_thinkphp_version();
        if (preg_match("/^(8|6)\./",$dfer_version)) {
        $_app=app()->http->getName();
        }else{
        $_app=request()->module();
        }
     ?>
    <script type="text/javascript">
        //全局变量
        var GV = {
            ROOT: "/",
            WEB_ROOT: "/",
            JS_ROOT: "static/js/",
            API_ROOT: {api: '/api/'},
            APP: '<?php echo $_app; ?>'/*当前应用名*/,
            IS_MOBILE: <?php echo !empty($is_mobile) ? 'true'  :  'false'; ?>
        };
    </script>
    <script src="/themes/admin_default/public/assets/js/jquery-3.6.4.min.js"></script>
    <script src="/themes/admin_default/public/assets/js/jquery-migrate-3.4.0.min.js"></script>
    <script src="/themes/admin_default/public/assets/js/bootstrap5/popper.min.js"></script>
    <script src="/themes/admin_default/public/assets/js/bootstrap5/bootstrap.min.js"></script>
    <script src="/static/js/wind.js"></script>
    <script>
        Wind.alias({noty:'/themes/admin_default/public/assets/js/noty-2.4.1.js'})
    </script>
    <script>
        Wind.css('artDialog');
        Wind.css('layer');
        $(function () {
            $("[data-toggle='tooltip']").tooltip({
                container: 'body',
                html: true,
            });
            $("li.dropdown").hover(function () {
                $(this).addClass("open");
            }, function () {
                $(this).removeClass("open");
            });
        });
    </script>
    <?php if(APP_DEBUG): ?>
        <style>
            #think_page_trace_open {
                z-index: 9999;
            }
        </style>
    <?php endif; ?>

    
</head>
<body>

    <div class="wrap js-check-wrap">
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" href="<?php echo url('Plugin/index'); ?>"><?php echo lang('ADMIN_PLUGIN_INDEX'); ?></a>
            </li>
            <?php if(class_exists('\app\admin\controller\AppStoreController')): ?>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo url('AppStore/plugins'); ?>"><?php echo lang('ADMIN_APPSTORE_PLUGINS'); ?></a>
                </li>
            <?php endif; ?>
            <li class="nav-item">
                <a class="nav-link"
                   href="http://www.thinkcmf.com/faq.html?url=https://www.kancloud.cn/thinkcmf/faq/493510"
                   target="_blank">插件离线安装<i
                        class="fa fa-question-circle"></i></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://www.thinkcmf.com/topic/index/index/cat/9.html"
                   target="_blank">插件交流</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="https://www.thinkcmf.com/docs/cmf8/#/%E6%8F%92%E4%BB%B6"
                   target="_blank">插件文档</a>
            </li>
        </ul>
        <form method="post" class="js-ajax-form margin-top-20">
            <?php 
                $status=array("1"=>'开启',"0"=>'禁用',"3"=>'未安装');
             ?>
            <table class="table table-hover table-bordered">
                <thead>
                <tr>
                    <th><?php echo lang('Name'); ?></th>
                    <th><?php echo lang('Key'); ?></th>
                    <th><?php echo lang('Description'); ?></th>
                    <th><?php echo lang('Author'); ?></th>
                    <th><?php echo lang('Version'); ?></th>
                    <th width="60"><?php echo lang('Status'); ?></th>
                    <th width="180"><?php echo lang('ACTIONS'); ?></th>
                </tr>
                </thead>
                <tbody>
                <?php if(is_array($plugins) || $plugins instanceof \think\Collection || $plugins instanceof \think\Paginator): if( count($plugins)==0 ) : echo "" ;else: foreach($plugins as $key=>$vo): ?>
                    <tr>
                        <td><?php echo $vo['title']; ?></td>
                        <td><span class="label label-info"><?php echo $vo['name']; ?></span></td>
                        <td><?php echo $vo['description']; ?></td>
                        <td><?php echo $vo['author']; ?></td>
                        <td><span class="label label-success"><?php echo $vo['version']; ?></span></td>
                        <td>
                            <?php switch($vo['status']): case "0": ?>
                                <span class="label label-warning">
                                    <?php echo $status[$vo['status']]; ?>
                                </span>
                                <?php break; case "1": ?>
                                <span class="label label-success">
                                    <?php echo $status[$vo['status']]; ?>
                                </span>
                                <?php break; case "3": ?>
                                <span class="label label-default">
                                    <?php echo $status[$vo['status']]; ?>
                                </span>
                                <?php break; ?>
                            <?php endswitch; ?>
                        </td>
                        <td>
                            <?php if($vo['status']==3): ?>
                                <a class="btn btn-xs btn-primary js-ajax-dialog-btn"
                                   href="javascript:void(0);"
                                   data-href="admin/plugins/<?php echo $vo['name']; ?>"
                                   data-msg="确定安装该插件吗？"
                                   title="<?php echo lang('Install'); ?>" data-toggle="tooltip">
                                    <i class="fa fa-plus-circle fa-fw"></i></a>
                                <?php else: $config=$vo['config']; if(!empty($vo['has_admin']) && $vo['status']==1): ?>
                                    <a class="btn btn-xs btn-info"
                                       href="javascript:parent.openapp('<?php echo dfer_plugin_url($vo['name'].'://AdminIndex/index'); ?>','plugin_<?php echo $vo['name']; ?>','<?php echo $vo['title']; ?>')"
                                       title="管理" data-toggle="tooltip">
                                        <i class="fa fa-window-maximize fa-fw"></i>
                                    </a>
                                    <?php else: ?>
                                    <a class="btn btn-xs btn-info disabled" href="javascript:;"
                                       title="管理" data-toggle="tooltip">
                                        <i class="fa fa-window-maximize fa-fw"></i>
                                    </a>
                                <?php endif; ?>
                                <span class="dropdown dropdown-hide-arrow" title="设置" data-toggle="tooltip">
                                    <span class="btn btn-primary btn-xs dropdown-toggle" data-bs-toggle="dropdown"
                                       role="button" aria-expanded="false1">
                                        <i class="fa fa-cog fa-fw"></i>
                                    </span>
                                    <ul class="dropdown-menu">
                                        <?php if(!empty($config)): if(empty($config['custom_config']) || (($config['custom_config'] instanceof \think\Collection || $config['custom_config'] instanceof \think\Paginator ) && $config['custom_config']->isEmpty())): ?>
                                                <li>
                                                    <a class="dropdown-item"
                                                       data-href="<?php echo url('Plugin/setting',array('id'=>$vo['id'])); ?>"
                                                       href="javascript:;" onclick="openPluginSettingDialog(this)">
                                                        <i class="fa fa-cog fa-fw"></i> 插件设置
                                                    </a>
                                                </li>
                                                <?php else: ?>
                                                <li>
                                                    <a class="dropdown-item"
                                                       data-href="<?php echo dfer_plugin_url($vo['name'].'://AdminIndex/setting'); ?>"
                                                       href="javascript:;" onclick="openPluginSettingDialog(this)">
                                                        <i class="fa fa-cog fa-fw"></i> 插件设置
                                                    </a>
                                                </li>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                        <li>
                                            <a class="dropdown-item"
                                               data-href="<?php echo url('admin/Plugin/hooks',['id'=>$vo['id']]); ?>"
                                               href="javascript:;" onclick="openPluginHooksDialog(this)">
                                                <i class="fa fa-sort-numeric-asc fa-fw"></i> 执行顺序
                                            </a>
                                        </li>
                                    </ul>
                                </span>

                                <a class="btn btn-xs btn-success js-ajax-dialog-btn"
                                   href="javascript:void(0);"
                                   data-method="put"
                                   data-href="admin/plugins/<?php echo $vo['name']; ?>"
                                   data-msg="确定更新该插件吗？" title="<?php echo lang('Update'); ?>" data-toggle="tooltip">
                                    <i class="fa fa-refresh fa-fw"></i>
                                </a>

                                <?php if($vo['status']==0): ?>
                                    <a class="btn btn-xs btn-success js-ajax-dialog-btn"
                                       href="javascript:void(0);"
                                       data-href="admin/plugins/<?php echo $vo['id']; ?>/status/1"
                                       data-msg="确定启用该插件吗？"
                                       title="<?php echo lang('Enable'); ?>" data-toggle="tooltip">
                                        <i class="fa fa-toggle-on fa-fw"></i>
                                    </a>
                                    <?php else: ?>
                                    <a class="btn btn-xs btn-warning js-ajax-dialog-btn"
                                       href="javascript:void(0);"
                                       data-href="admin/plugins/<?php echo $vo['id']; ?>/status/0"
                                       data-msg="确定禁用该插件吗？"
                                       title="<?php echo lang('Disable'); ?>" data-toggle="tooltip">
                                        <i class="fa fa-toggle-off fa-fw"></i></a>
                                <?php endif; ?>
                                <a class="btn btn-xs btn-danger js-ajax-delete"
                                   href="javascript:void(0);"
                                   data-href="admin/plugins/<?php echo $vo['id']; ?>"
                                   data-msg="确定卸载该插件吗？"
                                   title="<?php echo lang('Uninstall'); ?>" data-toggle="tooltip">
                                    <i class="fa fa-trash fa-fw"></i></a>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; endif; else: echo "" ;endif; ?>
                </tbody>
            </table>
        </form>
    </div>

<script src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>

    <script>
        function openPluginSettingDialog(obj) {
            var $obj = $(obj);
            var href = $obj.data('href');
            parent.openIframeLayer(href, '插件设置', {
                area: GV.IS_MOBILE ? ['100%', '100%'] : ['95%', '95%'],
                offset: GV.IS_MOBILE ? ['0px', '0px'] : 'auto',
                // btn: ['确定', '取消'],
                yes: function (index, layero) {
                    console.log(layero);
                    var iframeWin = parent.window[layero.find('iframe')[0]['name']];
                    //iframeWin.confirm();
                    parent.layer.close(index); //如果设定了yes回调，需进行手工关闭
                },
                end: function () {
                }
            });
        }

        function openPluginHooksDialog(obj) {
            var $obj = $(obj);
            var href = $obj.data('href');
            parent.openIframeLayer(href, '插件钩子', {
                area: GV.IS_MOBILE ? ['100%', '100%'] : ['95%', '95%'],
                offset: GV.IS_MOBILE ? ['0px', '0px'] : 'auto',
                // btn: ['确定', '取消'],
                yes: function (index, layero) {
                    console.log(layero);
                    var iframeWin = parent.window[layero.find('iframe')[0]['name']];
                    //iframeWin.confirm();
                    parent.layer.close(index); //如果设定了yes回调，需进行手工关闭
                },
                end: function () {
                }
            });
        }
    </script>

</body>
</html>
