## YML 配置文件构建 Python 项目（beta）

### 支持的 Python 版本
目前所支持的 Python 的版本有：

* `3.5.1`
* `3.4.4`
* `3.3.6`
* `3.2`
* `2.7.11`
* `2.6.9`


选择版本: 

```yaml
language: python
version: 2.7.11

```

### 可支持的插件

Python: 

* `python_init` Python 环境的初始化
* `python_install` 安装 pip 包依赖
* `python_test` 测试 Python 项目

Git：

* `git` 从 Git 仓库中克隆代码

代码工具:

* `pep8_plugin` PEP8 代码规范检查
* `radon_plugin` McCabe 复杂性计算，也就是循环复杂度
SLOC（源代码行）、注释行数、空白行数等指标计算
Halstead 指标计算 


数据库:

* `mysql_database` 使用 MySQL 
* `mongodb_database` 使用 MongoDB
* `redis_database` 使用 Redis


### CI Example
项目在 Git 根目录下的 project_src 文件夹，使用 Python 2.7.11 版本，并启动 MySQL, 当 develop 和 master 分支有 Push 的请求 以及 PullRequest 的事件时，来构建项目, 允许测试失败。

```yml
flows:
  - name: default
    language: python
	version: 2.7.11
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
          name: python_init

      - name: MySQL
        plugin:
          name: mysql_database

      - name: Git Clone
        plugin:
          name: git
          
      - name: Install
        plugin:
          name: python_install
          
      - name: Test
        failure: true
        plugin:
          name: python_test
```