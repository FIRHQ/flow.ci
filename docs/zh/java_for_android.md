## 4.2 Java for Android

### flow.ci 当前支持以下 Java for Android 版本：

- JDK     (jdk7、jdk8)
- SDK  （android-8 ~ android-25 ）

### 构建工具

使用 Gradle 作为构建工具

### 签名证书上传:
- [keystore](./android_keystore_settings.html)：设置证书

### 插件

#### 基础插件：

- [Initalize](./plugins_initalize.html)：初始化环境
- [Variables](./plugins_variables.html)：环境变量设置
- [Cache](./plugins_cache.html)：通过缓存，提高构建速度
- [Git Clone](./plugins_git_clone.html)：从 git 拉取最新代码
- [Build](./plugins_build.html):编译项目




#### 消息通知插件：
- [Email Sender](./plugins_email_sender.html)：邮件通知
- [Slack Notification](./plugins_slack_notification.html)：Slack 消息通知

#### 代码检测插件：
- [Code Analyzer](./waiting.html)：Java 代码质量检查
- [Infer Analyzer](./waiting.html):Java 代码质量检查


#### 第三方插件：
- [fir.im Uploader](./plugins_firim_uploader.html)：将生成的 .ipa 或.apk 上传到 fir.im
- [qiniu Upload](./plugins_qiniu_upload.html):  上传文件到七牛

#### 自定义插件：
- [Custom Script](./plugins_custom_script.html)：自定义脚本，通过脚本完成定制化需求
