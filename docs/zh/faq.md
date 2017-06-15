## 6. FAQ

### Git 相关错误

**为什么会报 GitHub WebHook Error ？**

- 创建项目时报 GitHub WebHook Error 可能是因为你的 GitHub WebHook 超过 20 个；
- Build 的时候报 GitHub WebHook Error 可能是你的 Github 授权移除了对 flow.ci 的授权，请在 github 设置授权 flow.ci 

**flow.ci 支持 GitHub 私有项目么？**

支持

**为什么部分项目不可创建 ？**

- 1. 你没有 GitHub 项目的管理员权限，无法创建 Github 项目获得相应授权
- 2. 你已经创建过这个项目，可以去项目列表查找一下项目 


**为什么部分组织在创建项目时未显示？**

原因：Github 没有授权组织

解决方法：到 GitHub 授权 ，[点此链接访问 GitHub 授权页面](https://github.com/settings/connections/applications/afcc2596ead856d71b16)，点击 "Grant Access" 授权组织


### iOS 项目 Build 失败的常见原因

- 引入非官方 Pod 源
 * flow.ci 目前仅支持 Pod 官方源，如果在项目中使用了第三方 Pod 源，如 `https://github.com/aliyun/aliyun-specs` 等, 请参照 [如何在 flow.ci 的 iOS flow 中使用非官方(github) pod源 ](http://blog.flow.ci/use-third-party-pod-source/)

- Pod install 时出现 `Re-creating CocoaPods due to major version update.` 错误
 * 在项目中重新初始化 Pod 文件 `pod init` 
 * 在新的 Podfile 中 target 块内输入引入的 Pod 依赖
 * 上传 Podfile 到 Git 仓库后，即可安装成功

- 构建时出现 `ld: symbol(s) not found for architecture i386`
  	
  flow.ci 默认使用模拟器编译，可能会导致编译时找不到相关的库文件，可以尝试下列解决方法:
    - 库文件所在的位置添加到 library search path 中后 push 代码
    - 上传证书，之后 flow.ci 默认使用 iphonesdk 编译 (推荐)

- 构建时的证书问题
 * `Code signing is required for product type 'Application' in SDK 'iOS 10.3'`
 
      通常该错误是由于上传到 flow.ci 的证书不正确，或者使用的 scheme, configuration 不正确导致的 build 失败。请检查 'build' 步骤的中是否配置了相关的 scheme, configuraiton, 以及这些配置所对应的证书是否和上传的一致. 关于证书的配置，请参考 [iOS 证书设置](./upload_certificate_and_provisioning_profiles.md)
 
 * `No valid iOS Distribution signing identities belonging to team XXXX were found`

     通常该错误是由于使用的证书，不匹配当前对应的 'build' 步骤中所对应的 `FLOW_IOS_EXPORT_METHOD` 
     
      例如：
          
	   在初始化步骤时显示 `iPhone Developer`，所对应的 `FLOW_IOS_EXPORT_METHOD` 可以为 `development`
     <img src="http://7xsn88.com1.z0.glb.clouddn.com/ios_faq_code_sign_err_1.png"></img>
     
     在初始化步骤时显示 `iPhone Distribution`，所对应的 `FLOW_IOS_EXPORT_METHOD` 可以为 `ad-hoc`, `app-store`
     <img src="http://7xsn88.com1.z0.glb.clouddn.com/ios_faq_code_sign_err_2.png"></img>
     
     **请检查项目中使用的 'Provisioning Profiles' & 'Certificates'，已经上传到 flow.ci 的证书类型 (iOS Development / iOS Distribution).**
    



### PHP 项目 Build 失败的常见原因

- 项目中缺少 composer.json 文件



### Python 项目 Build 失败的常见原因

- 项目中缺少 requirements.txt 文件


### Ruby 项目 Build 失败的常见原因

- 项目中缺少 Gemfile 文件


### Node.js 项目 Build 失败的常见原因

- 项目中缺少 package.json 文件


### Android 项目 Build 失败的常见原因

- flow.ci 是基于 Gradle 去编译项目，所以项目中需要 build.gradle 等文件

- 在 flow.ci 上构建时执行 `./gradlew buiild`, 建议在线上构建之前，先在本地项目目录下执行 `./gradlew build` 命令，是否成功

- 构建时出现 Lint ([Andorid 代码扫描工具](https://developer.android.com/studio/write/lint.html) ) 错误，内容如下:

  ```
* What went wrong:
Execution failed for task ':somepicker:lint'.
Lint found errors in the project; aborting build.

  Fix the issues identified by lint, or add the following to your build script to proceed with errors:
  ...
  android {
      lintOptions {
          abortOnError false
      }
  }
```

   此错误是因为启用了 Lint 工具，扫描代码后发现了一些潜在的问题，以及可以优化的地方，您可以:
   - 本地通过命令行 `lint [flags] <project directory>` 运行 Lint 进行本地代码扫描
   - 或者根据提示，在 `build.gradle` 配置中忽略 Lint 错误
   - 或者在 Android 编译插件中，带入 -x lint 参数跳过 Lint 代码检查，例如: `build -x lint`

