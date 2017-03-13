## YML 配置文件构建 Ruby 项目（beta）

### 支持的 Ruby 版本和 RVM
目前所支持的 Ruby VM 的版本有:

 * `2.3.0`
 * `2.2.2`
 * `2.2.0`
 * `2.1.2`
 * `2.1.0`
 * `2.0.0`
 * `1.9.3`

选择版本: 

```yaml
language: ruby
version: 2.3.0

```

### 可支持的插件

Ruby: 

* `ruby_init` Ruby 环境的初始化
* `ruby_install` 安装 Gem 包
* `ruby_test` 执行测试

Git：

* `git` 从 Git 仓库中克隆代码

代码检查:

* `rubocop_plugin`
* `rubocop_plugin_render`


数据库:

* `mysql_database` 使用 MySQL 
* `mongodb_database` 使用 MongoDB
* `redis_database` 使用 Redis


### CI Example
使用 Ruby VM 2.3.0，并启动 MongoDB 和 Redis, 当 develop 和 master 分支有 Push 的请求 以及 PullRequest 的事件时，来构建项目。

```yml

flows:
  - name: default
    language: ruby
	version: 2.3.0

    trigger:
      push:
        - develop
        - master
      pull_request: true

    steps:
      - name: init
        plugin:
          name: ruby_init

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
          name: ruby_install
          
      - name: Test
        plugin:
          name: ruby_test
```