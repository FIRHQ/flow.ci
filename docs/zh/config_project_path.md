# 配置项目路径

如果项目路径不在 Git 的根目录下，需要在 'Git 仓库克隆‘ 步骤之前加入 ’环境变量‘ 插件, 添加环境变量 ```FLOW_PROJECT_PATH``` 自定义项目路径。

例如当前项目的目录结构如下:

<img src="https://dn-shimo-image.qbox.me/zGWWbCZZht4vqvkn/Screen%20Shot%202017-01-06%20at%201.54.28%20PM.png!thumbnail" width=340>

项目路径在 Git 跟目录下的 MPAndroidChart 文件夹下，所以 ```FLOW_PROJECT_PATH``` 环境变量所对应的值为 MPAndroidChart，如下所示:

<img src="https://dn-shimo-image.qbox.me/pKzBYwbv5jgjz3wl/Screen%20Shot%202017-01-06%20at%201.53.50%20PM.png!thumbnail" width=680>