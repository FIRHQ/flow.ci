## 5.3.12 Email Sender 插件

Email Sender 插件的作用是发送邮件通知 。

### 如何设置 Email Sender 插件？

设置插件时需要在 Inputs 中添加收件人的邮箱，邮件标题和邮件内容。

<b>$FLOW_EMAIL_TO ：</b>设置收件人邮箱，可添加多个邮箱（用英文逗号分隔），例如：you@company.com,colleague@company.com

<b>$FLOW_EMAIL_SUBJECT:</b> 设置邮件标题

<b>$FLOW_EMAIL_CONTENT：</b>设置邮件内容，可以在内容中添加变量（ Email Sender 插件之前任何插件的 Outputs 值）

以上三个 Inputs 值均为必填项，填写完成后点击 "Save" 保存结果

邮件通知的发件人统一为 ：notice@email.flow.ci

<img src="https://dn-shimo-image.qbox.me/4aTsQKlitjkQ7dt3.png!thumbnail" width=680>


### 如何设置邮件样式？

邮件内容支持 html 样式，可用使用 html 标签，常用的换行可使用 \<br\> 标签

### 邮件通知没有收到或者进入垃圾箱？

为了您能更及时的收到邮件提醒, 请把 notice@email.flow.ci 这个地址加到您邮箱的白名单

