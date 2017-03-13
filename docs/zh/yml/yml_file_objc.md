## YML 配置文件构建 iOS Objective C 项目（beta）

### 支持的 XCode 版本
目前所支持的版本有：

* `Xcode7`
* `Xcode8`


选择版本: 

```yaml
language: objc
version: Xcode8

```

### 可支持的插件

Objective C: 

* `objc_init` iOS 项目初始化
* `objc_build` 编译 iOS 项目
   - 输入参数 
		* `FLOW_IOS_COMPILE_WORKSPACE` .xcworkspace 的文件名称
		* `FLOW_IOS_COMPILE_PROJECT` .xccodeproj 的文件名称
		* `FLOW_IOS_COMPILE_SCHEME` schema 的名称
		* `FLOW_IOS_COMPILE_CONFIGURATION` 自定义的名称或者 Debug/Release
* `objc_install` 安装 Pod 依赖
* `objc_archive` 打包 .ipa 文件

Git：

* `git` 从 Git 仓库中克隆代码


### CI Example
项目在 Git 根目录下的 project_src 文件夹，使用 Xcode 8 版本, 当 develop 和 master 分支有 Push 的请求 以及 PullRequest 的事件时，来构建项目。

```yml
flows:
  - name: default
    language: objc
	version: Xcode8
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
          name: objc_init

      - name: Git Clone
        plugin:
          name: git
          
      - name: Pod Install
        plugin:
          name: objc_install
          
      - name: Build
        plugin:
          name: objc_build
          
```