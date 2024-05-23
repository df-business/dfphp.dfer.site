<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-present http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: Dean <zxxjjforever@163.com>
// +----------------------------------------------------------------------
namespace api\admin\controller;

use app\admin\model\RouteModel;
use app\admin\model\UserModel;
use dfer\controller\RestAdminBaseController;
use OpenApi\Annotations as OA;

class SettingController extends RestAdminBaseController
{
    /**
     * 清理缓存
     * @throws \think\exception\DbException
     * @OA\Delete(
     *     tags={"admin"},
     *     path="/admin/setting/cache",
     *     summary="清理缓存",
     *     description="清理缓存",
     *     @OA\Response(
     *          response="1",
     *          @OA\JsonContent(example={"code": 1,"msg": "清除成功!","data": ""})
     *     ),
     *     @OA\Response(
     *          response="0",
     *          @OA\JsonContent(example={"code": 0,"msg": "清除失败!","data": ""})
     *     ),
     * )
     */
    public function clearCache()
    {
        dfer_clear_cache();
        $this->success('清除成功！');
    }

    /**
     * 网站信息
     * @throws \think\exception\DbException
     * @OA\Get(
     *     tags={"admin"},
     *     path="/admin/setting/site",
     *     summary="网站信息",
     *     description="网站信息",
     *     @OA\Response(
     *          response="1",
     *          @OA\JsonContent(example={"code": 1,"msg": "success","data":
     *              {"site_info":{"site_name":"ThinkCMF内容管理框架","site_seo_title":"ThinkCMF内容管理框架","site_seo_keywords":"ThinkCMF,php,内容管理框架,cmf,cms,简约风, simplewind,framework","site_seo_description":"ThinkCMF是简约风网络科技发布的一款用于快速开发的内容管理框架","site_icp":"","site_gwa":"","site_admin_email":"","site_analytics":""},"admin_styles":{"arcoadmin","flatadmin","orangeadmin","simpleadmin"},"admin_themes":{"admin_default","admin_simpleboot3"},"cdn_settings":{"cdn_static_root":""},"admin_settings":{"admin_password":"","admin_theme":"admin_default","admin_style":"arcoadmin"},"dfer_settings":{"open_registration":"0","banned_usernames":""}}
     *          })
     *     ),
     *     @OA\Response(
     *          response="0",
     *          @OA\JsonContent(example={"code": 0,"msg": "网站信息!","data": ""})
     *     ),
     * )
     */
    public function site()
    {
        $noNeedDirs     = [".", "..", ".svn", 'fonts'];
        $adminThemesDir = WEB_ROOT . config('template.dfer_admin_theme_path') . config('template.dfer_admin_default_theme') . '/public/assets/themes/';
        $adminStyles    = dfer_scan_dir($adminThemesDir . '*', GLOB_ONLYDIR);
        $adminStyles    = array_diff($adminStyles, $noNeedDirs);
        $cdnSettings    = dfer_get_option('cdn_settings');
        $cmfSettings    = dfer_get_option('dfer_settings');
        $adminSettings  = dfer_get_option('admin_settings');

        $adminThemes = [];
        $themes      = dfer_scan_dir(WEB_ROOT . config('template.dfer_admin_theme_path') . '/*', GLOB_ONLYDIR);

        foreach ($themes as $theme) {
            if (strpos($theme, 'admin_') === 0) {
                array_push($adminThemes, $theme);
            }
        }

        if (APP_DEBUG && false) { // TODO 没确定要不要可以设置默认应用
            $apps = dfer_scan_dir($this->app->getAppPath() . '*', GLOB_ONLYDIR);
            $apps = array_diff($apps, $noNeedDirs);
        }

        $siteInfo = dfer_get_option('site_info');
        $this->success("success", [
            'site_info'      => $siteInfo,
            'admin_styles'   => array_values($adminStyles),
            'admin_themes'   => $adminThemes,
            'cdn_settings'   => $cdnSettings,
            'admin_settings' => $adminSettings,
            'dfer_settings'   => $cmfSettings,
        ]);
    }

    /**
     * 网站信息提交保存
     * @throws \think\exception\DbException
     * @OA\Put(
     *     tags={"admin"},
     *     path="/admin/setting/site",
     *     summary="网站信息提交保存",
     *     description="网站信息提交保存",
     *     @OA\Response(
     *          response="1",
     *          @OA\JsonContent(example={"code": 1,"msg": "保存成功!","data": ""})
     *     ),
     *     @OA\Response(
     *          response="0",
     *          @OA\JsonContent(example={"code": 0,"msg": "保存成功!","data": ""})
     *     ),
     * )
     */
    public function sitePut()
    {
        $result = $this->validate($this->request->param(), 'SettingSite');
        if ($result !== true) {
            $this->error($result);
        }

        $options = $this->request->param('options/a');
        dfer_set_option('site_info', $options);

        $cmfSettings = $this->request->param('dfer_settings/a');

        $bannedUsernames                 = preg_replace("/[^0-9A-Za-z_\\x{4e00}-\\x{9fa5}-]/u", ",", $cmfSettings['banned_usernames']);
        $cmfSettings['banned_usernames'] = $bannedUsernames;
        dfer_set_option('dfer_settings', $cmfSettings);

        $cdnSettings = $this->request->param('cdn_settings/a');
        dfer_set_option('cdn_settings', $cdnSettings);

        $adminSettings = $this->request->param('admin_settings/a');

        $routeModel = new RouteModel();
        if (!empty($adminSettings['admin_password'])) {
            $routeModel->setRoute($adminSettings['admin_password'] . '$', 'admin/Index/index', [], 2, 5000);
        } else {
            $routeModel->deleteRoute('admin/Index/index', []);
        }

        $routeModel->getRoutes(true);

        if (!empty($adminSettings['admin_theme'])) {
            $result = dfer_set_dynamic_config([
                'template' => [
                    'dfer_admin_default_theme' => $adminSettings['admin_theme']
                ]
            ]);

            if ($result === false) {
                $this->error('配置写入失败!');
            }
        }

        dfer_set_option('admin_settings', $adminSettings);

        $this->success(lang('EDIT_SUCCESS'));

    }

    /**
     * 上传设置
     * @throws \think\exception\DbException
     * @OA\Get(
     *     tags={"admin"},
     *     path="/admin/setting/upload",
     *     summary="上传设置",
     *     description="上传设置",
     *     @OA\Response(
     *          response="1",
     *          @OA\JsonContent(example={"code": 1,"msg": "success","data":{
     *                  "setting":{"max_files":"200","chunk_size":"512","file_types":{"image":{"upload_max_filesize":"10240","extensions":"jpg,jpeg,png,gif,bmp4"},"video":{"upload_max_filesize":"10240","extensions":"mp4,avi,wmv,rm,rmvb,mkv"},"audio":{"upload_max_filesize":"10240","extensions":"mp3,wma,wav"},"file":{"upload_max_filesize":"10240","extensions":"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar"}},"upload_max_filesize":{"jpg":10485760,"jpeg":10485760,"png":10485760,"gif":10485760,"bmp4":10485760,"mp4":10485760,"avi":10485760,"wmv":10485760,"rm":10485760,"rmvb":10485760,"mkv":10485760,"mp3":10485760,"wma":10485760,"wav":10485760,"txt":10485760,"pdf":10485760,"doc":10485760,"docx":10485760,"xls":10485760,"xlsx":10485760,"ppt":10485760,"pptx":10485760,"zip":10485760,"rar":10485760}}
     *              }
     *          })
     *     ),
     *     @OA\Response(
     *          response="0",
     *          @OA\JsonContent(example={"code": 0,"msg": "error!","data": ""})
     *     ),
     * )
     */
    public function upload()
    {
        $uploadSetting = dfer_get_upload_setting();
        $this->success('success', ['setting' => $uploadSetting]);
    }

    /**
     * 上传设置提交保存
     * @throws \think\exception\DbException
     * @OA\Put(
     *     tags={"admin"},
     *     path="/admin/setting/upload",
     *     summary="上传设置提交保存",
     *     description="上传设置提交保存",
     *     @OA\RequestBody(
     *         description="请求参数",
     *         @OA\MediaType(
     *             mediaType="application/x-www-form-urlencoded",
     *             @OA\Schema(ref="#/components/schemas/AdminSettingUploadPutRequestForm")
     *         ),
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(ref="#/components/schemas/AdminSettingUploadPutRequest")
     *         )
     *     ),
     *     @OA\Response(
     *          response="1",
     *          @OA\JsonContent(example={"code": 1,"msg": "保存成功!","data": ""})
     *     ),
     *     @OA\Response(
     *          response="0",
     *          @OA\JsonContent(example={"code": 0,"msg": "保存成功!","data": ""})
     *     ),
     * )
     */
    public function uploadPut()
    {
        //TODO 非空验证
        $uploadSetting = $this->request->param();

        dfer_set_option('upload_setting', $uploadSetting);
        $this->success(lang('EDIT_SUCCESS'));
    }

    /**
     * 多语言设置提交保存
     * @throws \think\exception\DbException
     * @OA\Put(
     *     tags={"admin"},
     *     path="/admin/setting/lang",
     *     summary="多语言设置提交保存",
     *     description="多语言设置提交保存",
     *     @OA\RequestBody(
     *         description="请求参数",
     *         @OA\MediaType(
     *             mediaType="application/x-www-form-urlencoded",
     *             @OA\Schema(ref="#/components/schemas/AdminSettingUploadPutRequestForm")
     *         ),
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(ref="#/components/schemas/AdminSettingUploadPutRequest")
     *         )
     *     ),
     *     @OA\Response(
     *          response="1",
     *          @OA\JsonContent(example={"code": 1,"msg": "保存成功!","data": ""})
     *     ),
     *     @OA\Response(
     *          response="0",
     *          @OA\JsonContent(example={"code": 0,"msg": "保存成功!","data": ""})
     *     ),
     * )
     */
    public function langPut()
    {
        $langSetting        = $this->request->param();
        $defaultLang        = empty($langSetting['default_lang']) ? 'zh-cn' : $langSetting['default_lang'];
        $adminDefaultLang   = empty($langSetting['admin_default_lang']) ? 'zh-cn' : $langSetting['admin_default_lang'];
        $allowLangList      = [];
        $adminAllowLangList = [];
        $langAliasList      = [];
        $langDomainList     = [];
        $acceptLanguageList = [];

        if (empty($langSetting['allow_lang_list'])) {
            $allowLangList                  = [$defaultLang];
            $langSetting['allow_lang_list'] = [[
                'lang'   => $defaultLang,
                'alias'  => '',
                'domain' => '',
                'enable' => 1,
            ]];
        } else {
            foreach ($langSetting['allow_lang_list'] as $allowLang) {
                if (empty($allowLang['lang'])) {
                    $this->error('前台语言包名不能为空！');
                }
                if (in_array($allowLang['lang'], $allowLangList)) {
                    $this->error('前台语言包名不能重复！');
                }
                if ($allowLang['lang'] == $defaultLang && empty($allowLang['enable'])) {
                    $this->error('前台默认语言包必须启用！');
                }

                if (!empty($allowLang['enable'])) {
                    $allowLangList[] = $allowLang['lang'];
                }

                if (!empty($allowLang['alias'])) {
                    if (in_array($allowLang['alias'], $langAliasList)) {
                        $this->error('前台语言别名不能重复！');
                    }
                    $langAliasList[$allowLang['lang']]       = $allowLang['alias'];
                    $acceptLanguageList[$allowLang['alias']] = $allowLang['lang'];
                }

                if (!empty($allowLang['domain'])) {
                    if (isset($langDomainList[$allowLang['domain']])) {
                        $this->error('前台语言域名不能重复！');
                    }
                    $langDomainList[$allowLang['domain']] = $allowLang['lang'];
                }
            }
        }

        if (empty($langSetting['admin_allow_lang_list'])) {
            $allowLangList                        = [$adminAllowLangList];
            $langSetting['admin_allow_lang_list'] = [[
                'lang'   => $adminAllowLangList,
                'enable' => 1,
            ]];
        } else {
            foreach ($langSetting['admin_allow_lang_list'] as $allowLang) {
                if (empty($allowLang['lang'])) {
                    $this->error('后台语言包名不能为空！');
                }
                if (in_array($allowLang['lang'], $adminAllowLangList)) {
                    $this->error('后台语言包名不能重复！');
                }
                if ($allowLang['lang'] == $adminDefaultLang && empty($allowLang['enable'])) {
                    $this->error('后台默认语言包必须启用！');
                }
                if (!empty($allowLang['enable'])) {
                    $adminAllowLangList[] = $allowLang['lang'];
                }
            }
        }

        $result = dfer_set_dynamic_config([
            'lang' => [
                // 前台多语言开关
                'home_multi_lang'       => empty($langSetting['home_multi_lang']) ? 0 : 1,
                // 后台多语言开关
                'admin_multi_lang'      => empty($langSetting['admin_multi_lang']) ? 0 : 1,
                // 多语言模式;1:pathinfo前缀;2:域名;
                'multi_lang_mode'       => empty($langSetting['multi_lang_mode']) || $langSetting['multi_lang_mode'] == 1 ? 1 : 2,
                // 默认语言
                'default_lang'          => $defaultLang,
                // 允许的语言列表
                'allow_lang_list'       => $allowLangList,
                // 后台默认语言
                'admin_default_lang'    => $adminDefaultLang,
                // 后台允许的语言列表
                'admin_allow_lang_list' => $adminAllowLangList,
                // 语言包别名
                'lang_alias'            => $langAliasList,
                // 前台多语言域名列表
                'lang_domain_list'      => $langDomainList,
                // Accept-Language转义为对应语言包名称
                'accept_language'       => $acceptLanguageList,
            ]
        ]);
        if ($result === false) {
            $this->error('配置文件写入失败！');
        }
        dfer_set_option('lang_setting', $langSetting);
        $this->success(lang('EDIT_SUCCESS'));
    }

    /**
     * 文件存储
     * @throws \think\exception\DbException
     * @OA\Get(
     *     tags={"admin"},
     *     path="/admin/setting/storage",
     *     summary="文件存储",
     *     description="文件存储",
     *     @OA\Response(
     *          response="1",
     *          @OA\JsonContent(example={"code": 1,"msg": "success","data":{
     *                  "setting":{"type":"Local","storages":{"Local":{"name":"本地"}}}
     *              }
     *          })
     *     ),
     *     @OA\Response(
     *          response="0",
     *          @OA\JsonContent(example={"code": 0,"msg": "error!","data": ""})
     *     ),
     * )
     */
    public function storage()
    {
        $storage = dfer_get_option('storage');

        if (empty($storage)) {
            $storage['type']     = 'Local';
            $storage['storages'] = ['Local' => ['name' => '本地']];
        } else {
            if (empty($storage['type'])) {
                $storage['type'] = 'Local';
            }

            if (empty($storage['storages']['Local'])) {
                $storage['storages']['Local'] = ['name' => '本地'];
            }
        }

        $this->success('success', ['setting' => $storage]);
    }


    /**
     * 文件存储设置提交保存
     * @throws \think\exception\DbException
     * @OA\Put(
     *     tags={"admin"},
     *     path="/admin/setting/storage",
     *     summary="文件存储设置提交保存",
     *     description="文件存储设置提交保存",
     *     @OA\RequestBody(
     *         description="请求参数",
     *         @OA\MediaType(
     *             mediaType="application/x-www-form-urlencoded",
     *             @OA\Schema(ref="#/components/schemas/AdminSettingStoragePutRequest")
     *         ),
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(ref="#/components/schemas/AdminSettingStoragePutRequest")
     *         )
     *     ),
     *     @OA\Response(
     *          response="1",
     *          @OA\JsonContent(example={"code": 1,"msg": "保存成功!","data": ""})
     *     ),
     *     @OA\Response(
     *          response="0",
     *          @OA\JsonContent(example={"code": 0,"msg": "保存成功!","data": ""})
     *     ),
     * )
     */
    public function storagePut()
    {
        $post    = $this->request->post();
        $storage = dfer_get_option('storage');

        $storage['type'] = $post['type'];
        dfer_set_option('storage', $storage);
        $this->success(lang('EDIT_SUCCESS'), '');
    }

    /**
     * 管理员修改密码
     * @throws \think\exception\DbException
     * @OA\Put(
     *     tags={"admin"},
     *     path="/admin/setting/password",
     *     summary="管理员修改密码",
     *     description="管理员修改密码",
     *     @OA\RequestBody(
     *         description="请求参数",
     *         @OA\MediaType(
     *             mediaType="application/x-www-form-urlencoded",
     *             @OA\Schema(ref="#/components/schemas/AdminSettingPasswordPutRequest")
     *         ),
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(ref="#/components/schemas/AdminSettingPasswordPutRequest")
     *         )
     *     ),
     *     @OA\Response(
     *          response="1",
     *          @OA\JsonContent(example={"code": 1,"msg": "密码修改成功!","data": ""})
     *     ),
     *     @OA\Response(
     *          response="0",
     *          @OA\JsonContent(example={"code": 0,"msg": "原始密码不能为空!","data": ""})
     *     ),
     * )
     */
    public function passwordPut()
    {
        $data = $this->request->param();
        if (empty($data['old_password'])) {
            $this->error("原始密码不能为空！");
        }
        if (empty($data['password'])) {
            $this->error("新密码不能为空！");
        }

        $userId = dfer_get_current_admin_id();

        $admin = UserModel::where("id", $userId)->find();

        $oldPassword = $data['old_password'];
        $password    = $data['password'];
        $rePassword  = $data['re_password'];

        if (dfer_compare_password($oldPassword, $admin['user_pass'])) {
            if ($password == $rePassword) {
                if (dfer_compare_password($password, $admin['user_pass'])) {
                    $this->error("新密码不能和原始密码相同！");
                } else {
                    UserModel::where('id', $userId)->update(['user_pass' => dfer_password($password)]);
                    $this->success("密码修改成功！");
                }
            } else {
                $this->error("密码输入不一致！");
            }

        } else {
            $this->error("原始密码不正确！");
        }
    }


}
