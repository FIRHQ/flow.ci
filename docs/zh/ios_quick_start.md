# iOS 快速入门

flow.ci 在创建 iOS 项目时，除了代码仓库的选择，还需要设置一些证书，配置相关的信息，希望这篇文档可以帮助大家快速创建并成功的编译你的第一个 iOS 项目。


## 第一步：创建项目

- 注册登录后，点击“创建项目”

  <img src="https://dn-shimo-image.qbox.me/mEPQsiY73awwP1VJ/image.png!thumbnail" width=780>

- 点击 “创建第一个工作流”

  <img src="https://dn-shimo-image.qbox.me/I2P92EOwas4cafx8/image.png!thumbnail" width=780>

- 在模板中选择 iOS 模板，点击“使用”

  每种语言的默认模板中都有一个由多个插件组成的 flow (即在编译过程中会顺序执行的一系列脚本命令)

  <img src="https://dn-shimo-image.qbox.me/HGh2Fm8cZ2g3AFDR/image.png!thumbnail" width=780>


## 第二步：iOS 项目的基本设置

配置 iOS 项目需要设置 Xcode 版本，证书内容和构建参数三部分

- Xcode 版本：未选择时默认为 Xcode8，可根据需要修改设置

<img src="https://dn-shimo-image.qbox.me/g2X4aDJJvXYo0T4w/image.png!thumbnail" width=780>

- 上传证书 & Provisoning Profile：选择匹配的证书和 Provisioning Profile ，如何查找证书和 Provisioning Profile 可见文档：[如何找到 Provisioning Profiles & 证书文件](http://docs.flow.ci/zh/upload_certificate_and_provisioning_profiles.html)

<img src="https://dn-shimo-image.qbox.me/xsMvkuPQ5BMxImo6/image.png!thumbnail" width=780>

- 构建参数（非必填项）：这些构建参数在打包时需要用到，如果只编译不打包可以不用填写
<img src="https://images-cdn.shimo.im/wmw5VtsaptIr61c4/Screen%20Shot%202017-05-04%20at%2011.37.13%20PM.png!thumbnail" width=780>

  - **FLOW\_IOS\_COMPILE\_WORKSPACE:** 选填项，.xcworkspace 文件名。如果项目不在 Git 根目录下，请参考 [配置项目路径](http://docs.flow.ci/zh/config_project_path.html) <br> *注意: Workspace 与 Project 只能填一项，否则会构建失败*
  
  - **FLOW\_IOS\_COMPILE\_PROJECT:** 选填项，.xcodeproj 文件名。如果项目不在 Git 根目录下，请参考 [配置项目路径](http://docs.flow.ci/zh/config_project_path.html)
  
  - **FLOW\_IOS\_COMPILE\_SCHEME:** 选填项，设置中 Scheme 的 Shared 选择必须勾选
  点击" Manage Scheme"，如果项目中存在多个 scheme, flow.ci 会选择第一个开始构建
  
     <img src="https://dn-shimo-image.qbox.me/AHPtGDgdrmMx3Aog/image.png!thumbnail" width=780>
     
     勾选 “Shared”,这里显示的 Scheme 即为 Scheme 中要填写的内容
     <img src="https://dn-shimo-image.qbox.me/y3ZLWvhZA0US9V2N/image.png!thumbnail" width=780>

  - **FLOW\_IOS\_COMPILE\_CONFIGURATION:** 选填项，可以是用户自定义的名称，或者是 Debug/Release;默认为 Release

    <img src="https://dn-shimo-image.qbox.me/r1dGD7tF2YkDMXck/image.png!thumbnail" width=780>


## 第三步：构建你的一个 Build

点击 “开始构建”，构建你的第一个 Build

<img src="https://dn-shimo-image.qbox.me/2Mc4XuFIz1ArvtDX/image.png!thumbnail" width=780>

选择要构建的分支，点击 "构建"

<img src="https://dn-shimo-image.qbox.me/9tFK8HFUxy8A1oHi/image.png!thumbnail" width=680>

