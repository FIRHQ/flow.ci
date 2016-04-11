## 3.2 git 的 push 请求触发 Build

默认所有分支的 push 请求都会触发新的 Build，可在 flow 设置中修改触发条件。

<b>如何关闭 push 请求触发 Build？</b>

在 flow 设置的 Trigger 设置中点击 "Push" 关闭开关。

<img src="https://dn-shimo-image.qbox.me/0l5eMsAOMmoc9hq1.png!thumbnail" width=680>

<b>如何设置部分分支的 push 请求触发 Build？</b>

点击 "Regular match",在输入框中输入需要触发 Build 的分支，支持精确匹配 ，和通配符（*）模糊匹配两种方式，编辑完成后点击 "Save" 保存分支设置。

<img src="https://dn-shimo-image.qbox.me/3lORrRjZCrgVYeqA.png!thumbnail" width=680>

<b>如何查看详细的 Build 日志？</b>

在 Builds 列表中选择要查看的 Build 

<img src="https://dn-shimo-image.qbox.me/5kzqrMy3rkIhbaR9.png!thumbnail" width=680>

点击每个步骤的 “View log” 可以查看详情

<img src="https://dn-shimo-image.qbox.me/8f3nnKcDIYI7581U.png!thumbnail" width=680>



