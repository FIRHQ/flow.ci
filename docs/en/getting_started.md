## 1.Getting Started

### What is flow.ci?

flow.ci is a hosted continuous integration and continuous delivery service, based on flexible workflow integrations that we simply call flows. Flows can enable you to automate your entire development process from code to deployment with only a few clicks.

<img src="https://dn-shimo-image.qbox.me/FtTOG6L6mEsCochj.gif!thumbnail" width=680>

### What do you need before getting started with flow.ci ?


flow.ci only has one prerequisite requirement, to host your source code either on:

- Github
- Bitbucket
- Gitlab

If this is done, you are ready to go. 

### flow.ci basic setup process


<b> Step 1: Create Project</b>

Select the hosting service of your project: 

- [Create a GitHub project](./create_a_github_project.md)
- [Create a Bitbucket project](./create_a_bitbucket_project.md)
- [Create a GitLab project](./create_a_gitlab_project.md)

<b> Step 2: Flow setup (optional)</b>

Setting up flows is very simple. By default, every project has a workflow template set up. These templates contain basic steps that are commonly used with the selected programming language.

<img src="https://dn-shimo-image.qbox.me/7xOZePgm6VU6pBA4.png!thumbnail" width=680>

If your project requires a custom flow, you can add any new step you need and remove the ones that are unnecessary. This way the flow can be optimized for your team's needs and preferences. 

<img src="https://dn-shimo-image.qbox.me/iV49XTyrTJwVeLwN.png!thumbnail" width=680>

Technically, each step is a plugin. You can add and remove them with a few clicks (usually two). If you want to learn more about plugins and flow settings, the details are explained below:

  - [Add plugin, modify, delete](./5.1 Add plugin, modify, delete.md)
  - [Plugin Inputs & Outputs](./5.2 Plugin Inputs & Outputs.md)
  - [Plugin list](./5.3 Plugin list.md)

<b> Step 3: Build</b>

You can trigger builds in four ways:

- [Manual](./manual_build.md)
- [Git push](./triggering_build_with_git_push.md)
- [Pull request](./triggering_build_with_pull_request.md)
- [Daily build](./daily_build.md)

### Currently supported languages:

- [PHP](./php.html)
- [Java for Android](./java_for_android.html)
- [Nodejs](./nodejs.html)
- [Ruby](./ruby.html)
- [Python](./python.html)




