## 4.2 Java for Android

flow.ci supports several recent versions of Java for Android as well as multiple frameworks, dependency management tools, and plugins for the language.

### Supported versions:

- JDK (jdk7,jdk8)
- SDK （android -14 ~ android - 23 ）

### Gradle:

In flow.ci, we use Gradle as the default build tool for Android projects.

### Available plugins:

<b>Basics plugins:</b>
- [Initalize](./plugins_initialize.html)：environment initialization 
- [Variables](./plugins_variables.html)：set environment variables
- [Cache](./plugins_cache.html)：faster building
- [Git Clone](./plugins_git_clone.html)：pull the latest code from git
- [Build](./plugins_build.md):deploy packages with your own script

<b>Databases plugins:</b>
- [MySQL Database](./plugins_mysql_database.html)
- [MongoDB Database](./plugins_mongodb_database.html)
- [Redis Database](./plugins_redis_database.html)

<b>Message notifications plugins:</b>
- [Email Sender](./plugins_email_sender.html)：sends email notification 
- [slack notification](./plugins_slack_notification.html)：sends slack message notification

<b>Code detection plugins:</b>
- [Code Analyzer](./waiting.md)：code quality analyzer for Java
- [Infer analyzer](./waiting.md)：code quality analyzer for Java

<b>Third-party plug-ins:</b>
- [fir.im Uploader](./plugins_firim_uploader.html)：generate .ipa or .apk files and uploads them to fir.im beta app distribution platform
- [qiniu Upload](./plugins_qiniu_upload.html): upload any output file to Qiniu

<b>Custom plug-ins:</b>
- [Custom Script](./plugins_custom_script.html)：custom scripts allow you to further customize your flows, create and add steps fitting your unique workflow

