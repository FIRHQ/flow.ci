## 2.3 创建 GitLab 项目

<b>第一步：点击 "Create Project"</b>

<img src="https://dn-shimo-image.qbox.me/yuDyxWE20P0LpqXY.png!thumbnail" width=680>

<b>第二步：点击 "GitLab"</b>

<img src="https://dn-shimo-image.qbox.me/Y0YGrSBoQpgwtXYv.png!thumbnail" width=680>

<b>第三步：点击 "Add a GitLab Account"</b>

<img src="https://dn-shimo-image.qbox.me/x6j2IH8SnI0Ss7pC.png!thumbnail" width=680>

<b>第四步：添写 GitLab Host 和 Private Token</b>

<img src="https://dn-shimo-image.qbox.me/OTfGvFR3c5oOZzlS.png!thumbnail" width=680>

<b>GitLab Host : </b>

如果使用的是 online 的 GitLab ，直接添加  https://gitlab.com 即可；

如果使用的是私有部署的 GitLab，请填写私有部署的访问地址。

*提示: 私有部署需要外网访问，在某些情况下需要更改 GitLab 的访问 URL 后才可以正常使用，具体配置请参见 <a href='https://docs.gitlab.com/omnibus/settings/configuration.html#configuring-the-external-url-for-gitlab'>GitLab 配置外部访问地址</a>*

<b>Private Token：</b>

如果使用的是 online 的 GitLab ，访问 https://gitlab.com/profile/account 获取；

如果是私有部署的 GitLab，在 Profile Settings --> Account 中查看。

<img src="https://dn-shimo-image.qbox.me/68jOAX68EOwkXj5A.png!thumbnail" width=680>

*提示: 如果 GitLab 部署的网址不支持 https, flow.ci 不能自动添加 Deploy Key 和 Webhook到 GitLab 中，所以需要登录 GitLab 后手动添加，以避免 Git clone 时出现 'Permission Denied' 的错误, 以及无法接收到仓库的 'Push/Pull Request' 等事件。<a href='http://docs.flow.ci/zh/deploy_key.html'>如何手工添加 Deploy Key</a> <a href='http://docs.flow.ci/zh/webhook_git.html'>如何手工添加 Webhook</a>*

<b>第五步：选择 GitLab 账号</b>

<img src="https://dn-shimo-image.qbox.me/jb6zjaVEbi0fbfGQ.png!thumbnail" width=680>

<b>第六步：选择个人或组织</b>

<img src="https://dn-shimo-image.qbox.me/4dRkoxXncH8nR1AN.png!thumbnail" width=680>

<b>第七步：选择项目</b>

<img src="https://dn-shimo-image.qbox.me/dijeXXnXXgEXA8lP.png!thumbnail" width=680>

<b>第八步：选择语言</b>

<img src="https://dn-shimo-image.qbox.me/pVIsvKyq6GIv0F5f.png!thumbnail" width=680>

<b>第九步：选择默认模板</b>

<img src="https://dn-shimo-image.qbox.me/n29iWRNeSbMSCxKG.png!thumbnail" width=680>

<b>第十步：选择语言版本，点击 "Finish"</b>

<img src="https://dn-shimo-image.qbox.me/DXHR0kcN35oeGigW.png!thumbnail" width=680>

