## 4.1 PHP

### flow.ci 当前支持以下 PHP 版本：

- PHP 5.5.31
- PHP 5.5.32
- PHP 5.6.17
- PHP 5.6.8
- PHP 7.0.2
- PHP 7.0.3

### 支持 framework

- laravel
- symfony
- CodeIgniter

### 依赖安装

以下的 PHP 依赖管理工具已经默认支持：

- pear
- composer

### 插件

<b>基础插件：</b>
- [Initalize](./plugins/initalize_plugin.html)：初始化环境
- [Variables](./Plugins/5.3.2 Variables 插件.html)：环境变量设置
- [Cache](./Plugins/5.3.3 Cache 插件.html)：通过缓存，提高构建速度
- [Git Clone](./Plugins/5.3.4 Git Clone 插件.html)：从 git 拉取最新代码
- [Install](./Plugins/5.3.5 Install 插件.html)：安装依赖
- [Test](./Plugins/5.3.6  Test 插件.html)：执行单元测试

<b>数据库插件：</b>
- [MySQL Database](./Plugins/5.3.9 MySQL Database.html)
- [MongoDB Database](./Plugins/5.3.10 MongoDB Database.html)
- [Redis Database](./Plugins/5.3.11 Redis Database.html)

<b>消息通知插件：</b>
- [Email Sender](./Plugins/5.3.12 Email Sender 插件.html)：邮件通知
- [Slack Notification](./Plugins/5.3.13 slack notification 插件.html)：Slack 消息通知

<b>代码检测插件：</b>
- [PHP CoderSniffer ](./Plugins/5.3.14 PHP CoderSniffer 插件.html)：PHP 代码质量检查

<b>第三方插件：</b>
- [fir.im Uploader](./Plugins/5.3.23 fir.im Uploader 插件.html)：将生成的 .ipa 或.apk 上传到 fir.im
- [qiniu Upload](./Plugins/5.3.24 qiniu Upload 插件.html):  上传文件到七牛

<b>自定义插件：</b>
- [Custom Script](./Plugins/5.3.25 Custom Script 插件.html)：自定义脚本，通过脚本完成定制化需求
