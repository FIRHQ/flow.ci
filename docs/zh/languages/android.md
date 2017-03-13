# 构建 Android 项目

本章讲述如何在 flow.ci 上基于 gradle 构建和配置 Android 项目.

## 快速开始

**1. 创建项目**

**1.1 开始创建项目**

如果第一次使用 flow.ci 

<img src="https://dn-shimo-image.qbox.me/k3i3BdkuHkYEAaZl/start_from_empty.png!thumbnail" width=680>

在已有的组织中创建新的项目

<img src="https://dn-shimo-image.qbox.me/9pX9BUdsJoMjPjOv/create_project.png!thumbnail" width=680>

**1.2 绑定 Git 仓库**

如果还没有绑定账号，请先绑定~

<img src="https://dn-shimo-image.qbox.me/jzeh1ckBRYcMa495/bind_git.png!thumbnail" width=680>


**1.3 在 Git 中选择项目**

<img src="https://dn-shimo-image.qbox.me/TT5YXI5JuMMhVClr/select_git_repo.png!thumbnail" width=680>


**2. 选择 Android 工作流模板**

<img src="https://dn-shimo-image.qbox.me/GabaUIuvvF8UKvk0/select_android_template.png!thumbnail" width=680>


**3. 设置 Android 构建参数**

**选择 JDK 版本**

flow.ci 目前预装了 JDK 7，JDK 8 的环境

<img src="https://dn-shimo-image.qbox.me/oldjDh9n8coM3KL3/select_android_config.png!thumbnail" width=680>

	
**上传 Android 证书 (可选)**

如果在项目中使用了证书，该证书可以在创建项目时，或项目设置中设置。

<img src="https://dn-shimo-image.qbox.me/AIXKAhwQ7tIM7i0D/select_android_project_config.png!thumbnail" width=680>


**4. 开始构建**

创建项目后，可以通过多种方式触发构建

**手工构建** 

直接点击项目中 '构建列表' 的手动构建

<img src="https://dn-shimo-image.qbox.me/2tZZ5d9frJwWTRmq/manual_build.png!thumbnail" width=680>
  
**自动构建** 

自动构建条件可以在 项目 -> 工作流 -> 触发器 中设置，支持:

 * 从 Git 仓库接收 Push / Pull Request / Tag 请求
 * 设置定时器, 按预设的时间自动构建
 
<img src="https://dn-shimo-image.qbox.me/sPeSEmCzhOM6s3lk/trigger_build.png!thumbnail" width=680>

## Andorid CI 的运行环境

**1. 概述**

Android CI 环境运行在 Ubuntu 14.04 (Trusty) Docker 镜像上, 具体配置为:

 - **CPU**: 4 核 64 bit
 - **内存**: 8 G

flow.ci Android 运行环境默认提供了如下工具:

 - **Gradle 2.10**
 - **Ant 1.9.3**
 - **Maven 3.3.9**

**2. 自定义安装其他工具**

如果需要其它的工具，可以通过添加自定义脚本的方式，使用标准的 apt-get 来安装

[Pic 添加自定义脚本]

`sudo apt-get install xxx`

**3. 环境变量**

除了 flow.ci 的环境变量外(link to env variables)，Android CI 环境还有如下的环境变量:

* Android 环境相关
 - `FLOW_PROJECT_ANDROID_SDK`
 - `FLOW_PROJECT_ANDROID_CPU`

* 证书相关
 - `FLOW_CERTIFICATE_FILE`
 - `FLOW_ALIAS_PASS`
 - `FLOW_ALIAS_NAME`
 - `FLOW_KEYSTORE_PASS`

**4. 所支持的 Android 环境**

在 flow.ci Android 环境中，预装了如下 Android 环境

- platform-tools
- build-tools-25.0.2
- build-tools-25.0.1
- build-tools-25.0.0
- build-tools-24.0.2
- build-tools-24.0.1
- build-tools-24.0.0
- build-tools-23.0.3
- build-tools-23.0.2
- build-tools-23.0.1
- build-tools-23.0.0
- build-tools-22.0.1
- build-tools-22.0.0
- build-tools-21.1.2
- build-tools-21.1.1
- build-tools-21.1.0
- android-25
- android-24
- android-23
- android-22
- android-21
- android-20
- android-19
- android-18
- android-17
- android-16
- android-15
- android-14
- android-13
- android-12
- android-11
- android-10
- android-9
- android-8
- extra-android-support
- extra-google-google_play_services
- extra-google-m2repository
- extra-android-m2repository

## Andorid CI 中可使用的插件

#### 基础：

- [初始化](./plugins_initalize.html): 初始化 Android CI 环境并打印环境变量
- [环境变量](./plugins_variables.html): 自定义的环境变量设置
- [缓存](./plugins_cache.html)：缓存下载的 Gradle 依赖，以便下次构建时使用，减少下载时间
- [Git 仓库克隆](./plugins_git_clone.html): 从 git 拉取最新代码
- [编译](./plugins_build.html): Andorid 编译，默认使用 gradle build 命令
- [安卓模拟器插件 - TODO] (./xxxx.html) 可以在 flow.ci 上跑测试
- [自定义脚本](./plugins_custom_script.html)：自定义脚本，通过脚本完成定制化需求

#### 消息通知：
- [邮件消息插件](./plugins_email_sender.html)：邮件通知
- [Slack 通知插件](./plugins_slack_notification.html)：Slack 消息通知
- [钉钉通知插件](./plugins_slack_notification.html)：钉钉消息通知

#### 代码检测：
- [Code Analyzer](./waiting.html)：Java 代码质量检查
- [Infer Analyzer](./waiting.html):Java 代码质量检查


#### 第三方相关：
- [fir.im 上传插件](./plugins_firim_uploader.html): 将生成的 .apk 上传到 fir.im
- [七牛上传插件](./plugins_qiniu_upload.html): 将构建过程中的产物文件，上传到七牛云存储上




## Andorid 证书的配置

**1. 如何生存 Android 证书**

关于如何生成 Android 证书，请参阅 [Google 官方文档](https://developer.android.com/studio/publish/app-signing.html)

**2. 查看证书的信息**

可以通过命令的方式，去查看已有证书的信息

`$ keytool -list -v -keystore $YUOR_KEY_PATH`

**3. flow.ci 中上传证书**

可以在创建 Android 项目时上传证书，对于已有的项目，可以在项目设置中上传

![flow.ci](http://firimg.fir.im/2016-11-08-DingTalk20161108113025.png)

需要输入的信息及所对应的环境变量

- 选择 .jks 文件 	`FLOW_CERTIFICATE_FILE `
- keystore 密码 	`FLOW_KEYSTORE_PASS `
- alias 的名称   	`FLOW_ALIAS_NAME `
- alias 密码		`FLOW_ALIAS_PASS `


**4. 项目中 gradle 的设置**

这些证书的设置只有在项目的 `build.gradle` 文件中设置后才会生效。

> build.gradle 配置是非常灵活的，大家可以自己写适合自己的脚本，来实现不同的证书使用的方法，这里只是给出一个思路。

> 这里我们利用 **property**，将本地的密码和签名文件路径信息保存在项目根目录的 **local.properties** 文件里，因为这个文件一般都在 **.gitignore** 里自动配置了，所以不会上传到代码仓库，这样当本地打包apk时自动查找 **local.properties** 里的证书配置，在 **flow.ci** 在构建时是因为不存在 **local.property** ，所以会通过 **System.getenv()** 方法来获取 **flow.ci** 生成的环境变量的方式加载证书的信息，从而实现了本地以及 **flow.ci** 的不同编译环境里的证书配置。

```
android {
    signingConfigs {
	   release {
		   def keystorePropertiesFile = rootProject.file("local.properties")
	       def properties = new Properties()
	       if(keystorePropertiesFile.exists()) {
	     		properties.load(new FileInputStream(keystorePropertiesFile))
	       }
	       storeFile file(properties.get("storeFile") ?: System.getenv("FLOW_CERTIFICATE_FILE"))
	       storePassword properties.get("storePassword") ?: System.getenv("FLOW_KEYSTORE_PASS")
	       keyAlias properties.get("keyAlias") ?: System.getenv("FLOW_ALIAS_NAME")
	       keyPassword properties.get("keyPassword") ?: System.getenv("FLOW_ALIAS_PASS")
	   }
    }
    ...
  }
```

**5. 修改 build 类型**

flow.ci 默认使用 gradle 的 assembleRelease 命令来打包生成 release-sign.apk

**命令行的方式:**

`./gradlew assembleRelease`

**flow.ci 中界面配置:**

<img src="https://dn-shimo-image.qbox.me/i7BIAeqWkQcCPPTl/android_build_release.png!thumbnail" width=680>


## 从配置文件配置 Android 项目

如何通过配置文件构建 Android 项目，请参照 Yml 配置文件章节 [linke to yml for android]

[Example](https://github.com/flow-ci-plugin/yml_example/blob/master/.android-flow.yml)

## 如何本地调试:

如果在 flow.ci 编译过程中遇到问题，请在项目路径下，命令行中使用 `gradlew build` 进行本地调试。如本地调试成功，flow.ci 上运行有问题的话，请点击线上右下角的小图标给我们反馈