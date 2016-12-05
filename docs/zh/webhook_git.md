
# 如何手动添加 Webhook 链接到 Git 仓库


# Gitlab
只有当 GitLab 地址为 https 时，flow.ci 才会自动添加 webhook 到项目中，否则需要手动添加 webhook 链接

1. 进入 GitLab 中的项目，在项目设置中进入 'Webhooks'
2. 输入 flow.ci 项目中的 Webhook 链接
3. 勾选 Push events，Issues events，Merge Request events, Enable SSL verification
4. 点击 'Add WebHook'
