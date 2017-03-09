# 构建 Ruby 项目

本章讲述如何在 flow.ci 上构建和配置 Ruby 语言的项目.

## 快速开始

**1. 选择 Git 仓库**

所支持的 Git 仓库，具体信息请见 link to git_repo.md

[Pic 选择Git仓库]


**2. 选择 Git 仓库中的 Ruby 项目**


[Pic 选择 Ruby 的项目]


**3. 选择默认的 Ruby 工作流**

- 选择 Ruby 的版本

	[Pic] 

**4. 开始构建**

[Pic 开始构建] 

## Ruby CI 的运行环境

**1. 概述**

Ruby CI 环境运行在 Ubuntu 14.04 (Trusty) Docker 镜像上, 具体配置为:

 - **CPU**: 1 核 64 bit
 - **内存**: 2 G

默认提供了如下工具:

- **rvm 1.3.2**
- **gem 2.5.1**
- **bundler 1.14.6**

**2. 自定义安装其他工具**

如果需要其它的工具，可以通过添加自定义脚本的方式，使用标准的 apt-get 来安装

[Pic 添加自定义脚本]

`sudo apt-get install xxx`

**3. 环境变量**

flow.ci 的环境变量 (link to env variables)

## Ruby CI 中可使用的插件

#### 基础：

- [初始化](./plugins_initalize.html#php): 初始化 Ruby CI 环境并打印环境变量
- [环境变量](./plugins_variables.html): 自定义的环境变量设置
- [缓存](./plugins_cache.html)：缓存下载的 gem 依赖，以便下次构建时使用，减少下载时间
- [Git 仓库克隆](./plugins_git_clone.html): 从 git 拉取最新代码
- [安装](./plugins_build.html): 默认使用 `bundle install` 安装 Ruby 依赖库
- [测试] (./xxxx.html): 默认使用 `bundle exec rake` 执行单元测试
- [自定义脚本](./plugins_custom_script.html)：自定义脚本，通过脚本完成定制化需求

#### 数据库
- [MySQL](./database.html): 启动 MySQL
- [Redis](./database.html): 启动 Redis
- [MongoDB](./database.html): 启动 MongoDB


#### 代码检测：
- [Ruby 代码质量检测工具](./waiting.html)：使用 rubocop 代码质量检查工具
- [Ruby 代码质量检测详情](./waiting.html)：代码质量检测 html 报告

#### 消息通知：
- [邮件消息插件](./plugins_email_sender.html)：邮件通知
- [Slack 通知插件](./plugins_slack_notification.html)：Slack 消息通知
- [钉钉通知插件](./plugins_slack_notification.html)：钉钉消息通知

#### 第三方相关：
- [七牛上传插件](./plugins_qiniu_upload.html): 将构建过程中的产物文件，上传到七牛云存储上


## 从配置文件配置 Ruby 项目

如何通过配置文件构建 Ruby 项目，请参照 Yml 配置文件章节 [linke to yml for ruby]

[Example](https://github.com/flow-ci-plugin/yml_example/blob/master/.ruby-flow.yml)