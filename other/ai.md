# 指令
```
当前`claude code`的mcp已连接mysql、redis，可直接进行必要的操作。
开发环境基于docker里的堡塔服务，通过相关端口操作命令行、网页、mysql、redis。
这是个运行于`php 8.0`的项目（已安装redis拓展），是一套我自己写的php框架，借鉴了微擎、thinkPHP、thinkCMF的写法，沿袭了`asp .net`的mvc结构，被我命名为`DfPHP`。用于进行各种网络应用的开发。
核心功能通过自写的composer组件来实现：`/vendor/dfer/df-php-root/`用于更新框架结构、`/vendor/dfer/df-php-core/`用于实现框架的核心功能、`/vendor/dfer/tools/`用于集成各种常用的类。
`/extend`是拓展目录，包含了自定义类。`extend/command/`是用于命令行调用的类。
`/df`是命令行程序的入口脚本。
`http://dfphp.dfer.site.local/`是本地调试时使用的hosts域名。
从`/other/ai上下文记录.md`里获取之前`claude code`会话的关键内容，用来作为当前会话的操作参考。
每次claude的回复完成时用`bash`执行`curl --noproxy "*" "http://ai-hub.dfer.site:9080/notify?msg=[进度提醒消息]"`对我进行提醒，[进度提醒消息]根据需要URL编码且动态填充，此功能不影响正常的回复内容。
这是基础声明，不需要任何操作。
```

```
熟悉一下项目。
```

```
检查项目里存在的问题并自动帮我修复，之后继续检查，一直循环，直到没有问题
```

```
将当前会话的上下文所有交互内容尤其是关键信息总结成文档，连同当前时间更新到`/other/ai上下文记录.md`，方便`claude code`新会话里调用，该操作用于解决单一会话里上下文太长的问题
```

```
整理一下`README.md`，并将`DfPHP`的开发文档整合进`README.md`，同时将开发文档更新到`http://dfphp.dfer.site.local/homepage/home/readme`
```
