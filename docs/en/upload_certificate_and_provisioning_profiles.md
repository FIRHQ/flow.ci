# how to find certificates and provisioning profiles

## Upload Provisioning Profiles

Your provisioning profiles can be  downloaded directly from Apple.Click[here](https://developer.apple.com/account/ios/profile/profileList.action)to download it.


## Upload Your Code Signing Identity

Open the Keychain  and select Certificates.

<img src="https://dn-shimo-image.qbox.me/wpME1XEV120bvt88/image.png!thumbnail" width=680>

Click your certificate to expose your Private Key.Choose both certificate and private key ,click Export and save your Private Key to a location of your choice.

<img src="https://dn-shimo-image.qbox.me/Tu06O2H8Uu4alWhL/image.png!thumbnail" width=680>

Create a password for your exported .p12 file.

<img src="https://dn-shimo-image.qbox.me/GUKq1hpuUwYKt8RU/image.png!thumbnail" width=680>

Go back to flow.ci. Upload your .p12 file and enter the password you created above.

<img src="https://dn-shimo-image.qbox.me/RT0gCCiBhGIMXr1k/image.png!thumbnail" width=680>

