
## 4.3 Node.js

flow.ci supports several recent versions of Node.js as well as multiple frameworks, dependency management tools, and plugins for Node.js.


### Supported versions:

- Node.js v0.10.32
- Node.js v0.12.2
- Node.js v4.0.0
- Node.js v5.2.0


### Supported dependency management tool:

For Node.js projcets flow.ci uses NPM as the default dependency management tool.

### Available plugins:

<b>Basics plugins:</b>
- [Initalize](./plugins_initialize.html)：environment initialization 
- [Variables](./plugins_variables.html)：set environment variables
- [Cache](./plugins_cache.html)：faster building
- [Git Clone](./plugins_git_clone.html)：pull the latest code from git
- [Install](./plugins_install.html)：install dependencies
- [Test](./plugins_test.html)：perform unit test

<b>Databases plugins:</b>
- [MySQL Database](./plugins_mysql_database.html)
- [MongoDB Database](./plugins_mongodb_database.html)
- [Redis Database](./plugins_redis_database.html)

<b>Message notifications plugins:</b>
- [Email Sender](./plugins_email_sender.html)：sends email notification 
- [slack notification](./plugins_slack_notification.html)：sends slack message notification

<b>Code detection plugins:</b>
- [Eslint](./plugins_eslint.md):code quality analyzer for Node.js 
- [Eslint Render](./plugins_eslint_render.md)：code quality analyzer for Node.js 

<b>Third-party plug-ins:</b>
- [fir.im Uploader](./plugins_firim_uploader.html)：generate .ipa or .apk files and uploads them to fir.im beta app distribution platform
- [qiniu Upload](./plugins_qiniu_upload.html): upload any output file to Qiniu

<b>Custom plug-ins:</b>
- [Custom Script](./plugins_custom_script.html)：custom scripts allow you to further customize your flows, create and add steps fitting your unique workflow
