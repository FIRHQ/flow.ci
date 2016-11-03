# 一、上传 Provisioning Profiles

你可以直接在苹果开发者后台下载 Provisioning Profiles，点击[去苹果下载](https://developer.apple.com/account/ios/profile/profileList.action)。


二、上传签名证书
打开钥匙串访问，点击证书，选择证书文件

<img src="https://dn-shimo-image.qbox.me/wpME1XEV120bvt88/image.png!thumbnail" width=680>

同时选择证书和专用密钥两项，右键导入专用2项

<img src="https://dn-shimo-image.qbox.me/Tu06O2H8Uu4alWhL/image.png!thumbnail" width=680>

导出证书，并设置证书密码

<img src="https://dn-shimo-image.qbox.me/GUKq1hpuUwYKt8RU/image.png!thumbnail" width=680>

在 flow.ci 中设置上传上面的 Provisioning Profiles 和证书文件，并输入导出证书时设置的密码即可 

<img src="https://dn-shimo-image.qbox.me/RT0gCCiBhGIMXr1k/image.png!thumbnail" width=680>

