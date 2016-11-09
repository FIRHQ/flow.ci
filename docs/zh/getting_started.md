## 1. flow.ci 快速入门.

### 使用 flow.ci 前要具备什么条件？

<b> “代码要托管到 Github / Bitbucket / GitLab” </b>

### flow.ci 的基本使用流程：

<b> 第一步：创建项目</b>

可以根据你的代码托管服务，选择：

- [创建 GitHub 项目](./create_a_github_project.html)
- [创建 Bitbucket 项目](./create_a_bitbucket_project.html)
- [创建 GitLab 项目](./create_a_gitlab_project.html)

<b> 第二步：设置 flow (可选)</b>

创建项目时，每种语言会设置一个默认的 flow 模板，包含常用的步骤。

<img src="https://dn-shimo-image.qbox.me/7xOZePgm6VU6pBA4.png!thumbnail" width=680>

如果你有更多定制化的需求，可以在 flow 设置中添加、修改、删除插件，让 flow 的工作流更符合你的实际需要。

<img src="https://dn-shimo-image.qbox.me/iV49XTyrTJwVeLwN.png!thumbnail" width=680>

详细的 flow 设置方法可参考：

  - [插件的添加，修改，删除](./add_plugin_edit_delete.html)
  - [插件的 Inputs & Outputs](./plugin_inputs_outputs.html)
  - [插件列表](./plugin_list.html)

<b> 第三步：构建 Build</b>

你可以通过以下四种方式触发构建：

- 1.[手动 Build](./manual_build.html)
- 2.[git 的 push 请求](./triggering_build_with_git_push.html)
- 3.[pull request 请求](./triggering_build_with_pull_request.html)
- 4.[每日构建](./daily_build.html)

### flow.ci 当前支持的语言：

- [PHP](./php.html)
- [Java for Android](./java_for_android.html)
- [Nodejs](./nodejs.html)
- [Ruby](./ruby.html)
- [Python](./python.html)





