
# 如何手动添加 Deploy Key 链接到 Git 仓库


# Gitlab
只有当 GitLab 地址为 https 时，flow.ci 才会自动添加 deploy key 到项目中，否则需要手动添加（如不添加会在 Git Clone 的时出现 'Permission Denied' 错误）

1. 进入 GitLab 中的项目，在项目设置中进入 Deploy Keys
2. 输入任意 title
3. 输入 flow.ci 项目中的 'RSA公钥' 中的内容
4. 点击 'Add Key'
