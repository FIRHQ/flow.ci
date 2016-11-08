# flow.ci Android证书配置

## 在**flow.ci**上传证书
---
* 第一次Android 项目 选择 Android模板 创建后，会看到如图上传证书页面:

 ![flow.ci](http://firimg.fir.im/2016-11-08-DingTalk20161108104720.png)

* 如果项目已存在时，请进入Android项目的 **设置** 里，上传证书 或者 修改证书，如图：

 ![flow.ci](http://firimg.fir.im/2016-11-08-DingTalk20161108113025.png)

## 项目配置**flow.ci**的环境变量
---

* 环境变量

 **FLOW_ALIAS_NAME** 对应项目 build.gradle 里的 **keyAlias**

 **FLOW_ALIAS_PASS** 对应项目build.gradle里的 **keyPassword**

 **FLOW_KEYSTORE_PASS** 对应项目build.gradle里的 **storePassword**

 **FLOW_CERTIFICATE_FILE** 对应项目build.gradle里的 **storeFile**


## 项目 **build.gradle**设置
---

> build.gradle配置是非常灵活的，大家可以自己写适合自己的脚本，来实现不同的证书使用的方法，这里只是给出一个思路。

> 这里我们利用 **property**，将本地的密码和签名文件路径信息保存在项目根目录的 **local.properties** 文件里，因为这个文件一般都在 **.gitignore** 里自动配置了，所以不会上传到代码仓库，这样当本地打包apk时自动查找 **local.properties** 里的证书配置，在 **flow.ci** 在构建时是因为不存在 **local.property** ，所以会通过 **System.getenv()** 方法来获取 **flow.ci** 生成的环境变量的方式加载证书的信息，从而实现了 本地 以及 **flow.ci** 的不同编译环境里的证书配置。

* 在项目的 **build.gradle** 配置(仅供参考)

 ```

 android {
     ...

    defaultConfig {
        ...
    }

    signingConfigs {
       release {
           // default keystore file, PLZ config file path in local.properties
           Properties properties = new Properties()
           //加载本地local.properties文件
           if(rootProject.file("local.properties").exists()) {
               properties.load(rootProject.file("local.properties").newDataInputStream())
           }
           storeFile file(properties.get("storeFile") ?: System.getenv("FLOW_CERTIFICATE_FILE"))
           storePassword properties.get("storePassword") ?: System.getenv("FLOW_KEYSTORE_PASS")
           keyAlias properties.get("keyAlias") ?: System.getenv("FLOW_ALIAS_NAME")
           keyPassword properties.get("keyPassword") ?: System.getenv("FLOW_ALIAS_PASS")
       }
   }
   buildTypes {
        release {
            ...
            signingConfig signingConfigs.release
        }
    }

   ...
 }

 ```


* 根目录里的**local.properties**文件中配置以下内容（没有就创建一个新的）：

 ```
 ...

 storeFile=/Users/cape/FlowTest/app/FIR.im.jks
 storePassword=fir.im
 keyAlias=fir.im
 keyPassword=fir.im
 ```

## 生成release签名apk
---

使用gradle的 *assembleRelease* 命令来打包生成release-sign.apk
