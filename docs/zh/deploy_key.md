
# 如何手动添加 Deploy Key 链接到Git仓库


# Gitlab
只有当GitLab地址为HTTPS时，flow.ci才会自动添加deploy key到项目中，否则需要手动添加（如不添加会在Git Clone的时出现Permission Denied错误）

1. 进入GitLab中的项目，在项目设置中进入Deploy Keys
2. 输入任意title
3. 输入flow.ci项目中的 'RSA公钥' 中的内容
4. 点击 Add Key
