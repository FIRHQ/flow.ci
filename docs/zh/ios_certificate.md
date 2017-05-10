# 如何找到 Provisioning Profiles & 证书文件

### Provisioning Profiles

你可以直接在苹果开发者后台下载 Provisioning Profiles，点击[去苹果下载](https://developer.apple.com/account/ios/profile/profileList.action)。


### 签名证书
打开钥匙串访问，点击证书，选择证书文件

<img src="https://dn-shimo-image.qbox.me/wpME1XEV120bvt88/image.png!thumbnail" width=680>

同时选择证书和专用密钥两项，右键导入专用2项

<img src="https://dn-shimo-image.qbox.me/Tu06O2H8Uu4alWhL/image.png!thumbnail" width=680>

导出证书，并设置证书密码

<img src="https://dn-shimo-image.qbox.me/GUKq1hpuUwYKt8RU/image.png!thumbnail" width=680>


# iOS 证书设置

### 关闭 Automatic code signing

选择 xcode项目里的 **TARGETS** -> **General** 里将 **Automatically manage signing**

### 手动指定Profile文件

关闭 **Automatic code signing** 后, 请根据不同的**Targets**, **Configuration**, 指定对应的Provisioning Profiles,如图：

![flow.ci](http://firimg.fir.im/2016-12-23-1.png)

**记得手动选择完对应的 Provisioning Profiles 后，有个叹号，检查下xcode里是否有警告， 有的话请及时修正，否则有可能导致编译失败**，如果是正确的如图的类似显示:

![flow.ci](http://firimg.fir.im/2016-12-23-2.png)

**上一步确认无误后，看下 Signing Certificate 选项里显示的证书，有可能是每个 Targets 指定的证书是不同的，分别从钥匙串中导出p12证书，再分别上传flow.ci**, 如图：

![](http://firimg.fir.im/2016-12-23-4.png)

以上操作完成后，记得 **提交 git 代码**。

# 上传到 flow.ci

在 flow.ci 的项目 -> 设置中， 将手动设置的 **Provisioning Profiles** 文件 以及 对应的 **p12证书** 文件分别上传，如图：

![flow.ci](http://firimg.fir.im/2016-12-23-3.png)

