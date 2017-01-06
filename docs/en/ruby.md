

## 4.4 Ruby

flow.ci supports several recent versions of Ruby as well as multiple frameworks, dependency management tools, and plugins for the language.

### Supported versions:

- Ruby 1.9.3
- Ruby 2.0.0
- Ruby 2.1.0
- Ruby 2.1.2
- Ruby 2.2.0
- Ruby 2.2.2
- Ruby 2.3.0

### Supported dependency management tool:

- bundler
- Rubygems

Note! For Ruby projects, Bundler is used as the default dependency management tool.
### Available plugins:

<b>Basics:</b>
- [Initalize](./plugins_initialize.html)：environment initialization 
- [Variables](./plugins_variables.html)：set environment variables
- [Cache](./plugins_cache.html)：faster building
- [Git Clone](./plugins_git_clone.html)：pull the latest code from git
- [Install](./plugins_install.html)：install dependencies
- [Test](./plugins_test.html)：perform unit test

<b>Databases:</b>
- [MySQL Database](./plugins_mysql_database.html)
- [MongoDB Database](./plugins_mongodb_database.html)
- [Redis Database](./plugins_redis_database.html)

<b>Message notifications:</b>
- [Email Sender](./plugins_email_sender.html)：sends email notification 
- [slack notification](./plugins_slack_notification.html)：sends slack message notification

<b>Code detection plugins:</b>
- [Ruby Analyzer](./plugins_ruby_analyzer.html)：code quality analyzer for Ruby 
- [Ruby Analyzer Details](./plugins_ruby_analyzer_details.md)：code quality analyzer for Ruby 

<b>Third-party plug-ins:</b>
- [fir.im Uploader](./plugins_firim_uploader.html)：generate .ipa or .apk files and uploads them to fir.im beta app distribution platform
- [qiniu Upload](./plugins_qiniu_upload.html): upload any output file to Qiniu

<b>Custom plug-ins:</b>
- [Custom Script](./plugins_custom_script.html)：custom scripts allow you to further customize your flows, create and add steps fitting your unique workflow
