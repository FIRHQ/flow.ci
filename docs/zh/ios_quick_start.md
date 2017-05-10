# iOS 快速入门

flow.ci 在创建 iOS 项目时，除了代码仓库的选择，还需要设置一些证书，配置相关的信息，希望这篇文档可以帮助大家快速创建并成功的编译你的第一个 iOS 项目。


## 第一步：创建项目

- 注册登录后，在项目列表中，点击 “创建项目”

  <img src="http://7xsn88.com1.z0.glb.clouddn.com/image.png%21thumbnail" width=780>
  
- 选择 Git 仓库

  <img src="http://7xsn88.com1.z0.glb.clouddn.com/image%20%281%29.png%21thumbnail">
  
- 在模板中选择 iOS 模板，点击 “创建”

  选择 Xcode 的版本，默认为 `Xcode8`，点击 "创建" 后完成开始构建

  <img src="http://7xsn88.com1.z0.glb.clouddn.com/image%20%282%29.png%21thumbnail" width=780>


## 第二步：iOS 项目的基本设置

- 上传证书 & Provisoning Profile (非必填): flow.ci 默认使用模拟器进行构建，如果需要证书构建，请在 "项目 -> 设置" 中选择匹配的 p12 证书和 Provisioning Profile ，如何查找证书和 Provisioning Profile 可见文档：[如何找到 Provisioning Profiles & 证书文件](http://docs.flow.ci/zh/upload_certificate_and_provisioning_profiles.html)

  <img src="http://7xsn88.com1.z0.glb.clouddn.com/image%20%283%29.png%21thumbnail" width=780>

- 构建参数 (非必填项): 这些构建参数在打包时需要用到，例如 如果您有多个 scheme, configuration 时，请在 '项目 -> 工作流 -> 编译' 中设置

  <img src="http://7xsn88.com1.z0.glb.clouddn.com/image%20%284%29.png%21thumbnail" width=780>

  - **FLOW\_IOS\_COMPILE\_WORKSPACE:** 选填项，.xcworkspace 文件名。如果项目不在 Git 根目录下，请参考 [配置项目路径](http://docs.flow.ci/zh/config_project_path.html) <br> *注意: Workspace 与 Project 只能填一项，否则会构建失败*
  
  - **FLOW\_IOS\_COMPILE\_PROJECT:** 选填项，.xcodeproj 文件名。如果项目不在 Git 根目录下，请参考 [配置项目路径](http://docs.flow.ci/zh/config_project_path.html)
  
  - **FLOW\_IOS\_COMPILE\_SCHEME:** 选填项，设置中 Scheme 的 Shared 选择必须勾选
  点击" Manage Scheme"，如果项目中存在多个 scheme, flow.ci 会选择第一个开始构建
  
     <img src="https://dn-shimo-image.qbox.me/AHPtGDgdrmMx3Aog/image.png!thumbnail" width=780>
     
     勾选 “Shared”,这里显示的 Scheme 即为 Scheme 中要填写的内容
     <img src="https://dn-shimo-image.qbox.me/y3ZLWvhZA0US9V2N/image.png!thumbnail" width=780>

  - **FLOW\_IOS\_COMPILE\_CONFIGURATION:** 选填项，可以是用户自定义的名称，或者是 Debug/Release;默认为 Release

     <img src="https://dn-shimo-image.qbox.me/r1dGD7tF2YkDMXck/image.png!thumbnail" width=780>
     
  - **FLOW\_IOS\_EXPORT\_METHOD:** ipa 导出方式 (上传证书后，该选项会起作用)。默认为 development。此选项和证书类型相关。如果构建结果出现 `No valid iOS Distribution signing identities belonging to team XXXX were found.`, 请检查该选项，证书是否有对应的权限。

