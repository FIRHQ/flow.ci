## YML 配置文件构建 Node.js 项目（beta）

### 支持的 Node.js 版本
目前所支持的 Node.js 的版本有：

* `v6.6.0`
* `v5.2.0`
* `v4.0.0`
* `v0.12.2`
* `v0.10.32`


选择版本: 

```yaml
language: nodejs
version: v6.6.0

```

### 可支持的插件

Node.js: 

* `nodejs_init` Node.js 环境的初始化
* `nodejs_install` 安装 npm 包依赖
* `nodejs_test` 测试 Node.js 项目

Git：

* `git` 从 Git 仓库中克隆代码

代码检查:

* `eslint_plugin` 
* `eslint_plugin_render`


数据库:

* `mysql_database` 使用 MySQL 
* `mongodb_database` 使用 MongoDB
* `redis_database` 使用 Redis


### CI Example
项目路径在 Git 根目录下 `project_src` 文件夹，使用 Node.js VM 6.6.0 版本，并启动 MongoDB 和 Redis, 当 develop 和 master 分支有 Push 的请求 以及 PullRequest 的事件时，来构建项目。

```yml

flows:
  - name: default
    language: nodejs
	version: v6.6.0
	env:
	  - FLOW_PROJECT_PATH=./project_src

    trigger:
      push:
        - develop
        - master
      pull_request: true

    steps:
      - name: init
        plugin:
          name: nodejs_init

      - name: MongoDB
        plugin:
          name: mongodb_database

      - name: Redis
        plugin:
          name: redis_database

      - name: Git Clone
        plugin:
          name: git
          
      - name: Install
        plugin:
          name: nodejs_install
          
      - name: Test
        plugin:
          name: nodejs_test
```