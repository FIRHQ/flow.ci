## 4.5 Python

### flow.ci 当前支持以下 Python 版本：

- Python 2.6.9
- Python 2.7
- Python 3.2
- Python 3.3.6
- Python 3.4.4
- Python 3.5.1

### 依赖安装

以下的 Python 依赖管理工具已经默认安装支持

- pip

### 插件

<b>基础插件：</b>

- [Initalize](./Plugins/5.3.1 Initalize 插件.md)：初始化环境
- [Variables](./Plugins/5.3.2 Variables 插件.md)：环境变量设置
- [Cache](./Plugins/5.3.3 Cache 插件.md)：通过缓存，提高构建速度
- [Git Clone](./Plugins/5.3.4 Git Clone 插件.md)：从 git 拉取最新代码
- [Install](./Plugins/5.3.5 Install 插件.md)：安装依赖
- [Test](./Plugins/5.3.6  Test 插件.md)：执行单元测试

<b>数据库插件：</b>
- [MySQL Database](./Plugins/5.3.9 MySQL Database.md)
- [MongoDB Database](./Plugins/5.3.10 MongoDB Database.md)
- [Redis Database](./Plugins/5.3.11 Redis Database.md)

<b>消息通知插件：</b>
- [Email Sender](./Plugins/5.3.12 Email Sender 插件.md)：邮件通知
- [Slack Notification](./Plugins/5.3.13 slack notification 插件.md)：Slack 消息通知

<b>代码检测插件：</b>

- [PEP8 Analyzer](./9.9 Waiting.md)：Python 代码质量检查
- [Quality Analyzer](./9.9 Waiting.md)：Python 代码质量检查

<b>第三方插件：</b>
- [fir.im Uploader](./Plugins/5.3.23 fir.im Uploader 插件.md)：将生成的 .ipa 或.apk 上传到 fir.im
- [qiniu Upload](./Plugins/5.3.24 qiniu Upload 插件.md):  上传文件到七牛

<b>自定义插件：</b>
- [Custom Script](./Plugins/5.3.25 Custom Script 插件.md)：自定义脚本，通过脚本完成定制化需求
