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

- [Create a GitHub project](./2.1 Create a GitHub project.md)
- [Create a Bitbucket project](./2.2 Create a Bitbucket project.md)
- [Create a GitLab project](./2.3 Create a GitLab project.md)

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

- [Manual](./3.1 Manual Build.md)
- [Git push](./3.2 Triggering build with git push.md)
- [Pull request](./3.3 Triggering build with pull request.md)
- [Daily build](./3.4 Daily build.md)

### Currently supported languages:

- [PHP](./4.1 PHP.md)
- [Java for Android](./4.2 Java for Android.md)
- [Nodejs](./4.3 Nodejs.md)
- [Ruby](./4.4 Ruby.md)
- [Python](./4.5 Python.md)




