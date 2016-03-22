flow 设置可以将你的工作流和持续集成很良好的结合起来，你可以灵活的自定义在你的 CI 工作流中都有哪些要执行的步骤。
当然，我们为每个语言环境准备了默认的工作流，包括触发、依赖安装、环境变量设置、构建、测试、通知等流程，你也可以根据自己的需求灵活的定制属于你自己的工作流。

我们先来看一下默认的标准设置 flow：

<img src="https://dn-shimo-image.qbox.me/yIq8K9PQwmIRrYWn.png!thumbnail" width=600>

## 触发构建
有三种方式可以触发构建：

- <b>push 代码：</b>默认为全部分支 push 代码时自动构建，可关闭自动构建选项，或选择部分分支 - push 代码  时自动构建。
- <b>pull request 请求：</b>默认开启，可在 flow 设置中可关闭
- <b>手动构建：</b>选择分支对最新版本进行自动构建，详细操作步骤可参考：[快速入门](http://flow.ci/documents/start)
- <b>每日构建：</b>你可以设置每天定时构建拉去代码构建项目，可添加多个构建时间


## 设置环境变量

每次构建前会先读取你设置的环境变量，根据环境变量的设置执行后续相关的自定义脚本等。

##安装数据库

默认执行项目基本设置时你勾选的数据库类型，如果数据库信息有修改，可在此步重新选择

##获取代码

显示从 Github / Bitbucket 的 git 地址获取最新代码

## 安装依赖

安装项目所需要的依赖环境

## 执行测试

执行你的单元测试等内容，生成测试结果

## 消息通知

当前支持三种消息通知：

- Email
- Slack
- 自定义 WebHook

默认构建完成后，会通知你成功 / 失败的构建结果，你可以设置只接收成功 / 失败的通知。

## 自定义步骤

在默认工作流中的任何环节，可以通过点击 “+”来添加你想要执行的步骤，可以填入你的自定义脚本。

<img src="https://dn-shimo-image.qbox.me/UHIcHWQn7QYHfsfA.png!thumbnail" width=680>

在添加插件的时候搜索"custom", 选择 Custom Script 点击install 进行安装。

<img src="https://dn-shimo-image.qbox.me/vHT6XmX6C78XWjGP.png!thumbnail" width=680>

编辑自定义脚本内容

<img src="https://dn-shimo-image.qbox.me/mpSt94NsfZ8tqJpI.png!thumbnail" width=680>

输入自定义脚本并保存


<img src="https://dn-shimo-image.qbox.me/XYrB5ip7aIg1SIzF.png!thumbnail" width=680>


