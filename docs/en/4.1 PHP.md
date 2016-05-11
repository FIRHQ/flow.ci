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

<b>Basic plugins:</b>
- [Initalize](./Plugins/5.3.1 Initialize plugin.md)：environment initialization 
- [Variables](./Plugins/5.3.2 Variables plugin.md)：set environment variables
- [Cache](./Plugins/5.3.3 Cache plugin.md)：faster building
- [Git Clone](./Plugins/5.3.4 Git Clone plugin.md)：pull the latest code from git
- [Install](./Plugins/5.3.5 Install plugin.md)：install dependencies
- [Test](./Plugins/5.3.6 Test plugin.md)：perform unit test

<b>Database plugins:</b>
- [MySQL Database](./Plugins/5.3.9 MySQL Database Plugin.md)
- [MongoDB Database](./Plugins/5.3.10 MongoDB Database Plugin.md)
- [Redis Database](./Plugins/5.3.11 Redis Database Plugin.md)


<b>Message notification plugins:</b>
- [Email Sender](./Plugins/5.3.12 Email Sender Plugin.md)：sends email notification 
- [slack notification](./Plugins/5.3.13 Slack notification plugin.md)：sends slack message notification

<b>Code detection plugins:</b>
- [PHP CoderSniffer ](./Plugins/5.3.14 PHP Code Sniffer plugin.md)：code quality analyzer for PHP

<b>Third-party plug-ins:</b>
- [fir.im Uploader](./Plugins/5.3.23 fir.im Uploader plugin.md)：generate .ipa or .apk files and uploads them to fir.im beta app distribution platform
- [qiniu Upload](./Plugins/5.3.24 Qiniu Upload plugin.md): upload any output file to Qiniu

<b>Custom plug-ins:</b>
- [Custom Script](./Plugins/5.3.25 Custom Script plugin.md)：custom scripts allow you to further customize your flows, create and add steps fitting your unique workflow
