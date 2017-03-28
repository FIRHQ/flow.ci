## 6. FAQ

<b>为什么会报 GitHub WebHook Error ？</b>

- 创建项目时报 GitHub WebHook Error 可能是因为你的 GitHub WebHook 超过 20 个；
- Build 的时候报 GitHub WebHook Error 可能是你的 Github 授权移除了对 flow.ci 的授权，请在 github 设置授权 flow.ci 

<b>flow.ci 支持 GitHub 私有项目么？</b>

支持

<b>为什么部分项目不可创建 ？</b>

- 1. 你没有 GitHub 项目的管理员权限，无法创建 Github 项目获得相应授权
- 2. 你已经创建过这个项目，可以去项目列表查找一下项目 

<b>PHP 项目 Build 失败的常见原因：</b>

- 项目中缺少 composer.json 文件



<b>Python 项目 Build 失败的常见原因：</b>

- 项目中缺少 requirements.txt 文件


<b>Ruby 项目 Build 失败的常见原因：</b>

- 项目中缺少 Gemfile 文件


<b>NodeJS 项目 Build 失败的常见原因：</b>

- 项目中缺少 package.json 文件


<b>Android 项目 Build 失败的常见原因：</b>

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

   > 此错误是因为启用了 Lint 工具，扫描代码后发现了一些潜在的问题，以及可以优化的地方。建议先本地通过命令行 `lint [flags] <project directory>` 运行 Lint，或者根据提示，在 `build.gradle` 配置中忽略 Lint 错误




**为什么部分组织在创建项目时未显示？**

原因：Github 没有授权组织

解决方法：到 GitHub 授权 ，[点此链接访问 GitHub 授权页面](https://github.com/settings/connections/applications/afcc2596ead856d71b16)，点击 "Grant Access" 授权组织

