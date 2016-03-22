# 支持数据库
flow.ci 已经有插件支持的数据库类型有：

- Redis
- MongoDB
- MYSQL

其他数据库可以通过自定义脚本安装。

## 更换数据库

默认安装的数据库为 MYSQL，如果你要更换数据库，可在工作流中修改数据库设置。

第一步：删除 MYSQL

<img src="https://dn-shimo-image.qbox.me/Tsof9zwvaEAdRBMs.png!thumbnail" width=680>

第二步：添加插件数据库

<img src="https://dn-shimo-image.qbox.me/S31VtGn9eKA9K0mE.png!thumbnail" width=680>

搜索 database ，选择要安装的数据库，点击 install 

<img src="https://dn-shimo-image.qbox.me/JXPfAVEQkrIP7S7j.png!thumbnail" width=680>

## 自定义安装数据库

如果你使用的数据库没有预安装，在添加插件的时候搜索"custom", 选择 Custom Script 点击install 进行安装。

<img src="https://dn-shimo-image.qbox.me/vHT6XmX6C78XWjGP.png!thumbnail" width=680>

编辑自定义脚本内容

<img src="https://dn-shimo-image.qbox.me/mpSt94NsfZ8tqJpI.png!thumbnail" width=680>

输入自定义脚本并保存

<img src="https://dn-shimo-image.qbox.me/XYrB5ip7aIg1SIzF.png!thumbnail" width=680>


