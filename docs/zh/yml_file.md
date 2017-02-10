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

<br/>
- - -
### 工作流的定义
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

#### 触发器

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

#### 消息通知

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

#### Step 的定义

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

<br/>
- - -
### 多个工作流执行顺序的定义:

当在配置文件根节点中定义了 `flow_relation:` 后，flow.ci 会根据所定义的顺序执行工作流。

```yaml
# 工作流执行顺序的定义

flow_relation:
 - sequence:
   - flow-1 # 工作流名称
   - flow-2 # 工作流名称

flows:
 - name: flow-1
   ...
 - name: flow-2
   ...
```

两种基本的执行顺序:

 - 串行: `sequence:` 工作流按顺序执行
 - 并行: `parallel:` 工作流同时执行

> 注意: 必须以 `sequence:` 为开始顺序，并且工作流的名称要和所定义的工作流相同，否则会出现配置文件解析失败

串行与并行可以互相嵌套, 构成任意的执行顺序，例如下图:

<img src="https://dn-shimo-image.qbox.me/f36BDKo3Dnwa1pCi/mutiple_flow_definition.png!thumbnail" width=780>

其描配置述语言为:

```yaml
flow_relation:
  - sequence:
    - flow-1
    - flow-2
    - parallel:
      - flow-3
      - sequence:
        - flow-4
        - flow-5
      - flow-6
    - flow-7
```


#### 执行触发条件

只当起始的工作流收到 Push，PR 等事件后，才会执行整个流程


#### Example:

**整个执行顺序如下状态图所示:**

<img src="https://dn-shimo-image.qbox.me/Y3XuBRmaHxgLRjey/Screen%20Shot%202017-02-09%20at%207.06.40%20PM.png!thumbnail" width=780>

**描述:**

例子中定义了4个工作流分别是 flow-1, flow-2, flow-3 和 flow-4

flow-1 和 flow-2 为起始的工作流，并行执行，当有 Push，PR 等触发其中任意一个工作流时，整个工作流会按照配置文件中的顺序执行。(当有 Push， PR等触发 flow-3 或 flow-4 时，因为不是开始的工作流，未达到执行条件，所以整个的工作流不会执行)

当 flow-1 和 flow-2 执行完成后，会开始执行 flow-3.

当 flow-3 执行完成后，执行 flow-4.


**事例代码:**

```
# flow relation definition
flow_relation:
 - sequence:
   - parallel:
     - flow-1
     - flow-2
   - flow-3
   - flow-4

flows:
  - name: flow-1
    ......
   
  - name: flow-2
    ......
    
  - name: flow-3
    ......
    
  - name: flow-4
    ......
```


### 支持语言
- [PHP](./yml_file_php.md)
- [Java for Android](./yml_file_android.md)
- [Node.js](./yml_file_nodejs.md)
- [Ruby](./yml_file_ruby.md)
- [Python](./yml_file_python.md)
- [Objective C for iOS](./yml_file_objc.md)
