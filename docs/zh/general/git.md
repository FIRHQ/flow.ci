## flow.ci 对 Git 仓库的支持

目前 flow.ci 支持 4 种 Git 仓库， 分别是:

 * Github
 * Gitlab
 * Bitbucket
 * Coding.net

### 1. Git 仓库的绑定

**1.1 绑定 Github, Bitbucket, Coding.net**

Github, Bitbucket 和 Coding.net 都是通过授权的方式获取访问权限。在创建项目时，如果用户没有绑定对应仓库的账号，flow.ci 需要先进行授权后才能进行下一步的操作。

以 Github 为例，点击 ‘绑定 Github’ 后，flow.ci 会自动跳转到仓库地址进行授权

<img src="https://dn-shimo-image.qbox.me/jzeh1ckBRYcMa495/bind_git.png!thumbnail" width=680>


登录 Github

<img src="https://dn-shimo-image.qbox.me/TlIIQwNBJw0t7omw/github_login.png!thumbnail" width=340>


进行授权

<img src="https://dn-shimo-image.qbox.me/z43g6HgcZRMTnRUn/github_auth.png!thumbnail" width=340>

> 注意: 如果需要访问某个组织中的项目，需要选择组织访问中的 'Grant access'，否则无法获得组织中的项目.

授权后 flow.ci 可以正确的获得项目列表

<img src="https://dn-shimo-image.qbox.me/TT5YXI5JuMMhVClr/select_git_repo.png!thumbnail" width=680>


**1.2 绑定 GitLab**

Gitlab 仓库使用的是 Token 的方式绑定，flow.ci 也同时支持 Gitlab 官方的项目及私有的 Gitlab 仓库.
> 注意: 私有的 Gitlab 仓库需要公网访问权限

<img src="https://dn-shimo-image.qbox.me/nxVQMUPRiMsnqMuM/bind_gitlab.png!thumbnail" width=680>

**填写 Gitlab 地址:**

如果使用的是官方 Gitlab ，直接添加 `https://gitlab.com` 即可;

如果使用的是私有部署的 Gitlab，请填写私有部署的访问地址


**填写私有 Token:**

如果使用的是 online 的 GitLab ，访问 `https://gitlab.com/profile/account` 获取;

如果是私有部署的 GitLab，在 Profile Settings --> Account 中查看。

<img src="https://dn-shimo-image.qbox.me/68jOAX68EOwkXj5A.png!thumbnail" width=680>

>提示: 如果 GitLab 部署的网址不支持 https, flow.ci 不能自动添加 Deploy Key 和 Webhook到 GitLab 中，所以需要登录 GitLab 后手动添加，以避免 Git clone 时出现 'Permission Denied' 的错误, 以及无法接收到仓库的 'Push/Pull Request' 等事件。<a href='http://docs.flow.ci/zh/deploy_key.html'>如何手工添加 Deploy Key</a> <a href='http://docs.flow.ci/zh/webhook_git.html'>如何手工添加 Webhook</a>


### 2. 解除绑定

**2.1 解除授权类型的 Git 仓库**

授权类的 Git 仓库，需要登录对应的仓库中，手工解除对 flow.ci 的授权

**Github:**

解除授权 URL

`https://github.com/settings/applications`

点击 'Revoke' 解除授权

<img src="https://dn-shimo-image.qbox.me/KxidwdKutz4guquc/github_revoke.png!thumbnail">

**Bitbucket:**

解除授权 URL

`https://bitbucket.org/account/user/{your_username}/api`

点击 'Revoke' 解除授权

<img src="https://dn-shimo-image.qbox.me/fUOzS1SpfYECB7bV/bitbucket_unbind.png!thumbnail">


**Coding.net:**

解除授权 URL

`https://coding.net/user/account/setting/applications`

点击 'Revoke' 解除授权

<img src="https://dn-shimo-image.qbox.me/qoRTxyb24dQrB3Ub/coding_unbind.png!thumbnail">

**2.2 解除 Gitlab**

Glitlab 的项目可以在 用户设置 -> Git 仓库 中直接解除，直接点击 Gitlab 中红色的 ‘删除’ 按钮即可.

<img src="https://dn-shimo-image.qbox.me/t49AaMZ9NnsdhY0U/gitlab_unbind.png!thumbnail">
