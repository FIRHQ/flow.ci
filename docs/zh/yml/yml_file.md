## YML 配置文件（beta）

*提示： 此功能在测试阶段*

### 快速入门

1. 在根目录下添加 `.flow.yml` 文件。

2. 对于新创建的项目，flow.ci 会在根目录下自动查找 `.flow.yml` 项目配置文件，根据配置文件中定义的步骤，自动生成工作流。

3. 如果在现有的项目中添加 `.flow.yml`，在收到 Push，Pull Request 等触发时，会根据配置文件自动更新工作流。

	> 如果 `.flow.yml` 文件格式错误，则会按照图形界面上的配置执行


5. Example

```yaml

# project environments
env:
 - PROJECT_ENV_1=xxxx,PROJECT_ENV_2=xxxx
 - PROJECT_ENV_3=xxxx

flows:
  - name: default # default name, cannot change

  	# ci language and version 
    language: ruby
    version: 2.3.0
    
    # flow level environments
    env:
      - FLOW_ENV_1=flow-variable-1
      - FLOW_ENV_2=flow-variable-2
	
    trigger:
      # which branch could be trigger this flow
      push:
        - develop
        - master

    finalize:
      email:
        success:
          - example@flow.ci
        failure:
          - example@flow.ci
      slack:
        success:
          - https://hooks.slack.com/services/xxx/xxx/xxx
        failure:
          - https://hooks.slack.com/services/xxx/xxx/xxx

    steps:
      - name: step-0
        enable: true
        failure: true
        plugin:
          name: ruby_init

      - name: step-1
        failure: true
        scripts:
          - rvm -version

      - name: git clone # only plugin
        plugin:
          name: git

      - name: hello
        scripts:
          - echo "hello world"
          - echo $FLOW_ENV_1
```

### Flow 的定义
`- flows:` 在工作流的配置中，可定义工作流的

* 名称 `name: default` (目前为 beta 阶段，只支持名称为 `default` 的工作流)
* 语言 `language:`
  - `php`
  - `android`
  - `python`
  - `objc`
  - `ruby`
  - `nodejs`
* 语言版本 `version: ` 具体版本定义详见支持语言
* 环境变量 (可选项) `env: `, 多个环境变量在同一行时，以 `,` 分割
* 触发器 `trigger: `
* 结束后通知 (可选项) `finalize: `


事例：

```yaml
flows:
  - name: default
  	language: android
  	version: jdk8
  	env:
  	  - FLOW_ENV_1=xxx,FLOW_ENV_2=./path
  	  - FLOW_ENV_3=xxx
```

#### Flow 触发器

触发当前工作流的条件: 

* push: 定义分支触发条件，例如: 当前工作流触发条件为 develop 和 master 分支的 push
* tag (可选项): 定义 tag 触发条件
* pull_request (可选项): 是否接受 pull request 触发

```yaml
	trigger:
      push:
        - develop
        - master
      tag:
        - '*'
      pull_request: true
```

#### Flow 结束后通知

配置工作流结束后的通知，目前可以支持 email 和 slack 的成功及失败列表

```yaml
	finalize:
      email:
        success:
          - example1@flow.ci
          - example2@flow.ci
        failure:
          - example1@flow.ci
          - example2@flow.ci
      slack:
        success:
          - https://hooks.slack.com/services/xxx/xxx/xxx
        failure:
          - https://hooks.slack.com/services/xxx/xxx/xxx
```

#### Flow 中 Step 的定义

`steps: ` 可以定义一个工作流中的多个步骤，每个 step 有如下属性:

* 步骤名称 	`name: ` 
* 是否禁用 (可选项) `enable: `
* 可否失败 (可选项) `failure: `


step 中调用 flow.ci 的插件，需要定义 `plugin: ` 属性

```yaml
    steps:
      - name: step_1
        enable: true
        failure: false
        plugin:
          name: android_init
```

step 中使用自定义脚本，需要定义 `scripts: ` 属性

```yaml
    steps:
      - name: step_1
        enable: true
        failure: true
        scripts:
          - mvn clean
          - mvn install
```


### 支持语言
- [PHP](./yml_file_php.md)
- [Java for Android](./yml_file_android.md)
- [Node.js](./yml_file_nodejs.md)
- [Ruby](./yml_file_ruby.md)
- [Python](./yml_file_python.md)
- [Objective C for iOS](./yml_file_objc.md)
