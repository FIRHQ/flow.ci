## 5.3.13 Slack Notification 插件

Slack Notification 插件的主要作用是向 Slack channel 发送 WebHook 通知

### 如何设置 Slack Notification 插件？

设置插件时需要在 Inputs 中添加 Slack 的 Webhook URL 和要发送到 Slack 的消息。

<b>$FLOW_SLACK_INCOMING_URL：</b>填写 Slack 的 Webhook URL

<b>$FLOW_SLACK_MSG_JSON：</b>用 json 格式填写要传送到 Slack 的消息

<img src="https://dn-shimo-image.qbox.me/o6DYX6Hx0G8MhIar.png!thumbnail" width=680>

### 如何获取 Slack 的 Webhook URL ?

第一步，选择要添加消息推送的 channel ，点击 "Add an app or integration"

<img src="https://dn-shimo-image.qbox.me/jpRIb1jPVUMEwEzu.png!thumbnail" width=680>

第二步，搜索选择 "Incoming WebHooks"

<img src="https://dn-shimo-image.qbox.me/ar9w7MruLVIIA1pF.png!thumbnail" width=680>

第三步，选择组织，点击 "Configure"

<img src="https://dn-shimo-image.qbox.me/jQ4meSxQQWwWqSfQ.png!thumbnail" width=680>

第四步，点击 "Add Configuration"

<img src="https://dn-shimo-image.qbox.me/0HhHyBO4qGMPXyFW.png!thumbnail" width=680>

第五步，选择 Channel，点击 "Add Incoming WebHooks integration"

<img src="https://dn-shimo-image.qbox.me/skM8JwWtNJAc7Dum.png!thumbnail" width=680>

第六步，复制 Webhook URL 粘贴到 flow.ci 的 slack notification 插件，点击 "Save Settings" 保存 Slack 设置

<img src="https://dn-shimo-image.qbox.me/24iQIrKrlWQ9gFzs.png!thumbnail" width=680>


