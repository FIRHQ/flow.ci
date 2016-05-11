## 4.2 Java for Android

flow.ci supports several recent versions of Java for Android as well as multiple frameworks, dependency management tools, and plugins for the language.

### Supported versions:

- JDK (jdk7,jdk8)
- SDK （android -14 ~ android - 23 ）

### Gradle:

In flow.ci, we use Gradle as the default build tool for Android projects.

### Available plugins:

<b>Basic plugins:</b>
- [Initalize](./Plugins/5.3.1 Initialize plugin.md)：environment initialization 
- [Variables](./Plugins/5.3.2 Variables plugin.md)：set environment variables
- [Cache](./Plugins/5.3.3 Cache plugin.md)：faster building
- [Git Clone](./Plugins/5.3.4 Git Clone plugin.md)：pull the latest code from git
- [Build](./Plugins/5.3.8 Build plugin.md):deploy packages with your own script

<b>Database plugins:</b>
- [MySQL Database](./Plugins/5.3.9 MySQL Database Plugin.md)
- [MongoDB Database](./Plugins/5.3.10 MongoDB Database Plugin.md)
- [Redis Database](./Plugins/5.3.11 Redis Database Plugin.md)

<b>Message notification plugins:</b>
- [Email Sender](./Plugins/5.3.12 Email Sender Plugin.md)：sends email notification 
- [slack notification](./Plugins/5.3.13 Slack notification plugin.md)：sends slack message notification

<b>Code detection plugins:</b>
- [Code Analyzer](./9.9 Waiting.md)：code quality analyzer for Java
- [Infer analyzer](./9.9 Waiting.md)：code quality analyzer for Java

<b>Third-party plug-ins:</b>
- [fir.im Uploader](./Plugins/5.3.23 fir.im Uploader plugin.md)：generate .ipa or .apk files and uploads them to fir.im beta app distribution platform
- [qiniu Upload](./Plugins/5.3.24 Qiniu Upload plugin.md): upload any output file to Qiniu

<b>Custom plug-ins:</b>
- [Custom Script](./Plugins/5.3.25 Custom Script plugin.md)：custom scripts allow you to further customize your flows, create and add steps fitting your unique workflow
