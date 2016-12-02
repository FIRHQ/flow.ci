
# 如何手动添加 Webhook 链接到Git仓库


# Gitlab
只有当GitLab地址为HTTPS时，flow.ci才会自动添加webhook到项目中，否则需要手动添加webhook链接

1. 进入GitLab中的项目，在项目设置中进入Webhooks
2. 输入flow.ci项目中的Webhook链接
3. 勾选Push events，Issues events，Merge Request events, Enable SSL verification
4. 点击 Add WebHook
