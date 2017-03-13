## YML 配置文件构建 PHP 项目（beta）

### 支持的 PHP 版本
目前所支持的 PHP 的版本有：

* `7.0.3`
* `5.6.18`
* `5.5.32`
* `5.4.45`


选择版本: 

```yaml
language: php
version: 7.0.3

```

### 可支持的插件

PHP: 

* `php_init` PHP 环境的初始化
* `php_install` 使用 PHP Composer 安装包依赖
* `php_test` 运行 phpunit，测试 PHP 项目

Git：

* `git` 从 Git 仓库中克隆代码

代码工具:

* `php_codesniffer_plugin` CodeSniffer 代码规范检查


数据库:

* `mysql_database` 使用 MySQL 
* `mongodb_database` 使用 MongoDB
* `redis_database` 使用 Redis


### CI Example
项目在 Git 根目录下的 project_src 文件夹，使用 PHP 7.0.3 版本，启动 MySQL 并创建数据库, 当 develop 和 master 分支有 Push 的请求 以及 PullRequest 的事件时，来构建项目。

```yml
flows:
  - name: default
    language: php
    version: 7.0.3
    env:
      - FLOW_PROJECT_PATH=./project_src
      - DB=mysql
    
    trigger:
      push:
        - develop
        - master
      pull_request: true
      
    steps:
      - name: Init
        plugin:
          name: php_init
          
      - name: MySQL
        plugin:
          name: mysql_database
          
      - name: 创建 DB
        scripts:
          - if [[ "$DB" == "mysql" ]]; then mysql -e "create database IF NOT EXISTS hello_world_test;" -uroot; fi
          
      - name: Git Clone
        plugin:
          name: git
          
      - name: Install
        failure: true
        plugin:
          name: php_install
          
      - name: Test
        scripts: 
          - cd $FLOW_CURRENT_PROJECT_PATH
          - phpunit --configuration phpunit_$DB.xml --coverage-text         
```