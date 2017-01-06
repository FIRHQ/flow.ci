## 4.3 Node.js

### flow.ci 当前支持以下 Node.js 版本：

- Node.js v0.10.32
- Node.js  v0.12.2
- Node.js  v4.0.0
- Node.js  v5.2.0
- Node.js v6.6.0

### 依赖安装

Node.js 项目默认使用 NPM 作为依赖管理工具

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
- [Eslint](./plugins_eslint.html):Nodejs 代码质量检查
- [Eslint Render](./plugins_eslint_render.html)：Nodejs 代码质量检查


### 第三方插件：
- [fir.im Uploader](./plugins_firim_uploader.html)：将生成的 .ipa 或.apk 上传到 fir.im
- [qiniu Upload](./plugins_qiniu_upload.html):  上传文件到七牛

### 自定义插件：
- [Custom Script](./plugins_custom_script.html)：自定义脚本，通过脚本完成定制化需求

