## 4.1 PHP

flow.ci supports several recent versions of php as well as multiple frameworks, dependency management tools, and plugins for php.

### Supported versions:

- PHP 5.5.31
- PHP 5.5.32
- PHP 5.6.17
- PHP 5.6.8
- PHP 7.0.2
- PHP 7.0.3

### Supported frameworks:

- Laravel
- Symfony
- CodeIgniter

### Supported dependency management tools:

- PEAR
- composer

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
- [PHP CoderSniffer ](./plugins_php_codesniffer.md)：code quality analyzer for PHP

<b>Third-party plug-ins:</b>
- [fir.im Uploader](./plugins_firim_uploader.html)：generate .ipa or .apk files and uploads them to fir.im beta app distribution platform
- [qiniu Upload](./plugins_qiniu_upload.html): upload any output file to Qiniu

<b>Custom plug-ins:</b>
- [Custom Script](./plugins_custom_script.html)：custom scripts allow you to further customize your flows, create and add steps fitting your unique workflow
