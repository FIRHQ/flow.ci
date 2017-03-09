# 构建 iOS 项目

本章讲述如何在 flow.ci 上构建和配置 Objective C 的 iOS 项目.

## 快速开始

**1. 选择 Git 仓库**

所支持的 Git 仓库，具体信息请见 link to git_repo.md

[Pic 选择Git仓库]


**2. 选择 Git 仓库中的 iOS 项目**


[Pic 选择 iOS 的项目]


**3. 选择默认的 iOS 工作流模板**

**3.1 选择模板**

* 初始化: flow.ci 初始化 iOS CI 环境
* Git 仓库克隆: 克隆代码
* 缓存: 可选择开启 CocoaPods 缓存，存储依赖的库以减少下载时间
* 安装: pod install 安装依赖库
* 编译: 使用 xcodebuild 编译项目
* 打包: 生成 ipa 包 (只有上传证书后才会打包成功)

**3.2 选择 Xcode 的版本**

支持 Xcode 7.3 及 Xcode 8.2

	[Pic] 

**3.3 上传 iOS 证书 (可选)**

	[Pic]
	
	如何生产 iOS 证书，请参考 link

**3.4 输入构建参数**

[Pic 开始构建] 

**3.5 创建项目**


## iOS CI 的运行环境

**1. 概述**

iOS CI 环境运行在 OS X 10.11.6, 具体配置为:

 - **CPU**: 2 核 64 bit
 - **内存**: 4 G

flow.ci iOS 运行环境默认提供了如下工具:

 - **node.js v6.6.0**
 - **npm**
 - **xctool 0.3.1**
 - **jdk 1.8.0_101**

**2. 环境变量**

除了 flow.ci 的环境变量外(link to env variables)，iOS CI 环境还有如下和证书相关的环境变量:

- `FLOW_IOS_CERTIFICATE_PASS`
- `FLOW_IOS_P12_FILE`
- `FLOW_IOS_MOBILEPROVISION_FILE`
- `FLOW_IOS_CODE_SIGN_IDENTITY`

**3. 支持的模拟器**

* iOS 9.2 #
	* iPhone 4s
	* iPhone 5
	* iPhone 5s
	* iPhone 6
	* iPhone 6 Plus
	* iPhone 6s
	* iPhone 6s Plus
	* iPad 2
	* iPad Retina
	* iPad Air
	* iPad Air 2
	* iPad Pro

* iOS 9.3 #
	* iPhone 4s
	* iPhone 5
	* iPhone 5s
	* iPhone 6
	* iPhone 6 Plus
	* iPhone 6s
	* iPhone 6s Plus
	* iPad 2
	* iPad Retina
	* iPad Air
	* iPad Air 2
	* iPad Pro

* iOS 10.0 #
  * iPhone 5
  * iPhone 5s
  * iPhone 6
  * iPhone 6 Plus
  * iPhone 6s
  * iPhone 6s Plus
  * iPhone 7
  * iPhone 7 Plus
  * iPhone SE
  * iPad Retina
  * iPad Air
  * iPad Air 2
  * iPad Pro (9.7 inch)
  * iPad Pro (12.9 inch)

* iOS 10.1 #
  * iPhone 5
  * iPhone 5s
  * iPhone 6
  * iPhone 6 Plus
  * iPhone 6s
  * iPhone 6s
  * iPhone 7
  * iPhone 7 Plus
  * iPhone SE
  * iPad Retina
  * iPad Air
  * iPad Air 2
  * iPad Pro
  * iPad Pro


## iOS CI 中可使用的插件

#### 基础：

- [初始化](./plugins_initalize.html): 初始化 iOS CI 环境并打印环境变量
- [环境变量](./plugins_variables.html): 自定义的环境变量设置
- [缓存](./plugins_cache.html)：缓存下载的 CocoaPods 依赖，以便下次构建时使用，减少下载时间
- [Git 仓库克隆](./plugins_git_clone.html): 从 git 拉取最新代码
- [编译](./plugins_build.html): iOS 编译，基于 xcodebuild 命令
- [打包](./plugins_build.html): iOS 打包
- [自定义脚本](./plugins_custom_script.html)：自定义脚本，通过脚本完成定制化需求

#### 消息通知：
- [邮件消息插件](./plugins_email_sender.html)：邮件通知
- [Slack 通知插件](./plugins_slack_notification.html)：Slack 消息通知
- [钉钉通知插件](./plugins_slack_notification.html)：钉钉消息通知

#### 第三方相关：
- [fir.im 上传插件](./plugins_firim_uploader.html): 将生成的 .ipa 上传到 fir.im
- [七牛上传插件](./plugins_qiniu_upload.html): 将构建过程中的产物文件，上传到七牛云存储上


## iOS 证书的配置

如果需要在包中包含证书信息，则需要在 flow.ci 上传 **Provisioning Profiles** 和 **p12** 文件 


**1. Provisioning Profiles**

你可以直接在苹果开发者后台下载 Provisioning Profiles，点击[去苹果下载](https://developer.apple.com/account/ios/profile/profileList.action)。

**2. 确认项目中的 profile 与将上传的文件一致**

关闭 **Automatic code signing** 后, 请根据不同的Targets, 指定对应的Provisioning Profiles,如图：
  
  
  ![flow.ci](http://firimg.fir.im/2016-12-23-1.png)


手动选择完对应的 Provisioning Profiles 后，有个叹号，检查下xcode里是否有警告， 有的话请及时修正，否则有可能导致编译失败，如果是正确的如图的类似显示:

![flow.ci](http://firimg.fir.im/2016-12-23-2.png)

上一步确认无误后，看下 Signing Certificate 选项里显示的证书，有可能是每个 Targets 指定的证书是不同的，分别要从钥匙串中导出p12证书，分别上传flow.ci, 如图：

![](http://firimg.fir.im/2016-12-23-4.png)

以上操作完成后，记得 **提交git代码**。


**3. 上传**

分别将 **Provisioning Profiles** 文件 以及 对应的 **p12证书** 文件上传，如图：

![flow.ci](http://firimg.fir.im/2016-12-23-3.png)


## iOS 包依赖管理

CocoaPods 


## 如何调试

**1. 共享 Scheme**

为了保证项目运行在 flow.ci 环境，需要在 Xcode 项目中共享 Scheme.

* 从 Xcode 的菜单中打开 Product → Schemes → Manage Schemes
* 选择要测试的 target
* 在 target 的最右边，选择 Shared

在选择 Shared 之后，会在目录 xxx.xcodeproj/xcshareddata/xcschemes 下生产共享的 Scheme 文件，请确保这些文件在测试之前已经存在.

**2. 上传证书**