
# 4.5 Python

flow.ci supports several recent versions of Python as well as multiple frameworks, dependency management tools, and plugins for Python.

### Supported versions:

- Python 2.6.9
- Python 2.7
- Python 3.2
- Python 3.3.6
- Python 3.4.4
- Python 3.5.1

### Supported dependency management tools:

For Python projcets, flow.ci uses Pip as the default dependency management tool.


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

<b>Code detections plugins:</b>
- [PEP8 Analyzer](./waiting.html)：code quality analyzer for Python
- [Quality Analyzer](./waiting.html)：code quality analyzer for Python


<b>Third-party plug-ins:</b>
- [fir.im Uploader](./plugins_firim_uploader.html)：generate .ipa or .apk files and uploads them to fir.im beta app distribution platform
- [qiniu Upload](./plugins_qiniu_upload.html): upload any output file to Qiniu

<b>Custom plug-ins:</b>
- [Custom Script](./plugins_custom_script.html)：custom scripts allow you to further customize your flows, create and add steps fitting your unique workflow
