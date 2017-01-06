# xcode8 证书设置
---

因为**xcode8**支持了 **Automatically manage signing**, 对于本地构建方便的，会自动指定你本地的证书和mobileprovision，开发者不会关注太多证书的事情，但是如果这样会导致在flow.ci无法编译通过。

---

记得检查下项目的scheme是否已经设置为shared

#### 关闭 Automatic code signing

选择 xcode项目里的 **TARGETS** -> **General** 里将 **Automatically manage signing**

#### 手动指定Profile文件

>如何查找证书和 Provisioning Profile 可见文档：[如何找到 Provisioning Profiles & 证书文件](http://docs.flow.ci/zh/upload_certificate_and_provisioning_profiles.html)

* 手动设置Profile文件

	关闭 **Automatic code signing** 后, 请根据不同的Targets, 指定对应的Provisioning Profiles,如图：
  
	![flow.ci](http://firimg.fir.im/2016-12-23-1.png)

	**记得手动选择完对应的 Provisioning Profiles 后，有个叹号，检查下xcode里是否有警告， 有的话请及时修正，否则有可能导致编译失败**，如果是正确的如图的类似显示:

	![flow.ci](http://firimg.fir.im/2016-12-23-2.png)

	**上一步确认无误后，看下 Signing Certificate 选项里显示的证书，有可能是每个 Targets 指定的证书是不同的，分别要从钥匙串中导出p12证书，分别上传flow.ci**, 如图：

	![](http://firimg.fir.im/2016-12-23-4.png)

以上操作完成后，记得 **提交git代码**。


#### flow.ci 上传工程里上传工程设置的对应的 provisioning Profiles && p12证书文件

将手动设置 **Provisioning Profiles** 文件 以及 对应的 **p12证书** 文件分别上传，如图：

![flow.ci](http://firimg.fir.im/2016-12-23-3.png)
