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

配置 iOS 项目需要设置 Xcode 版本，证书内容和构建参数（选填）三部分

- Xcode 版本：未选择时默认为 Xcode8，可根据需要修改设置

<img src="https://dn-shimo-image.qbox.me/g2X4aDJJvXYo0T4w/image.png!thumbnail" width=780>

- 上传证书 & Provisoning Profile：选择匹配的证书和 Provisioning Profile ，如何查找证书和 Provisioning Profile 可见文档：http://docs.flow.ci/zh/upload_certificate_and_provisioning_profiles.html

<img src="https://dn-shimo-image.qbox.me/xsMvkuPQ5BMxImo6/image.png!thumbnail" width=780>

- 构建参数（非必填项）：用户构建打包

<img src="https://dn-shimo-image.qbox.me/LrxUUlGktPQuLCqc/image.png!thumbnail" width=780>

  - <b>Workspace:</b>默认路径为项目根路径。如果 .xcworkspace 文件放在根路径下，直接添写 .xcworkspace 文件名称即可；如果不在根路径下，请填写完整文件路径。如：flow.ci.xcworkspace
  - <b>Project:</b>默认路径为项目根路径。如果 .xcodeproj 文件放在根路径下，直接添写 .xcodeproj 文件名称即可；如果不在根路径下，请填写完整文件路径。如：flow.ci.xcodeproj
  - <b>Scheme:</b>Scheme 的名称，设置中 Scheme 的 Shared 选择必须勾选
  点击" Manage Scheme"
<img src="https://dn-shimo-image.qbox.me/AHPtGDgdrmMx3Aog/image.png!thumbnail" width=780>
  勾选 “Shared”,这里显示的 Scheme 即为 Scheme 中要填写的内容
<img src="https://dn-shimo-image.qbox.me/y3ZLWvhZA0US9V2N/image.png!thumbnail" width=780>

- SDK Version: 当前只支持最新的 Lastest iOS 10
- Configuration:可以是用户自定义的名称，或者是 Debug/Release;默认为 Release

<img src="https://dn-shimo-image.qbox.me/r1dGD7tF2YkDMXck/image.png!thumbnail" width=780>

## 第三步：构建你的一个 Build

点击 “开始构建”，构建你的第一个 Build

<img src="https://dn-shimo-image.qbox.me/2Mc4XuFIz1ArvtDX/image.png!thumbnail" width=780>

选择要构建的分支，点击 "构建"

<img src="https://dn-shimo-image.qbox.me/9tFK8HFUxy8A1oHi/image.png!thumbnail" width=680>

