## 4.1 PHP

### flow.ci 当前支持以下 PHP 版本：

- PHP 5.4.45
- PHP 5.5.32
- PHP 5.6.18
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

### 基础插件：

- [Initalize](./plugins_initalize.html)：初始化环境
- [Variables](./plugins_variables.html)：环境变量设置
- [Cache](./plugins_cache.html)：通过缓存，提高构建速度
- [Git Clone](./plugins_git_clone.html)：从 git 拉取最新代码
- [Install](./plugins_install.html)：安装依赖
- [Test](./plugins_test.html)：执行单元测试


### 数据库插件：
- [MySQL Database](./plugins_mysql_database.html)
- [MongoDB Database](./plugins_mongodb_database.html)
- [Redis Database](./plugins_redis_database.html)

### 消息通知插件：
- [Email Sender](./plugins_email_sender.html)：邮件通知
- [Slack Notification](./plugins_slack_notification.html)：Slack 消息通知

### 代码检测插件：

- [PHP CoderSniffer ](./plugins_php_codersniffer.html)：PHP 代码质量检查


### 第三方插件：
- [fir.im Uploader](./plugins_firim_uploader.html)：将生成的 .ipa 或.apk 上传到 fir.im
- [qiniu Upload](./plugins_qiniu_upload.html):  上传文件到七牛

### 自定义插件：
- [Custom Script](./plugins_custom_script.html)：自定义脚本，通过脚本完成定制化需求

