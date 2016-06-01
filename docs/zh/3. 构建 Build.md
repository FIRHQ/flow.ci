## 3. 构建 Build

构建 Build 时 flow.ci 会根据你的 flow 设置逐步执行，并输出日志结果。当前支持以下四种触发 Build 的方式：

- 1.[手动 Build](./3.1 手动 Build.md)
- 2.[git 的 push 请求](./3.2 git 的 push 请求触发 Build.md)
- 3.[pull request 请求](./3.3 Pull Request 触发 Build.md)
- 4.[每日构建](./3.4 每日构建.md)

开始构建后，你可以看到如下图的 Build 列表，Build 的不同颜色代表 Build 的不同状态。

- 黄色代表等待进入队列
- 绿色代表构建成功
- 蓝色代表构建中
- 红色代表构建失败

<img src="https://dn-shimo-image.qbox.me/n2sC3cqDBGceNhhH.png!thumbnail" width=680>






