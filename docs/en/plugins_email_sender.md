## 5.3.12 Email Sender Plugin

Email Sender plugin plugin sends e-mail notifications to specified email addresses. 

### How to Set Up Email Sender plugin?

To set up the Email Sender plugin, you need to specify the recipient's’ email addresses, the subject of the message, and the content of the message.

<b>$ FLOW_EMAIL_TO</b>: Set the recipient's email address. You can add multiple email addresses separated by commas. (example: you@company.com, colleague@company.com  … )

<b>$ FLOW_EMAIL_SUBJECT</b>: Set the subject of the message

<b>$ FLOW_EMAIL_CONTENT</b>: Write the content of your notification message.  

You can add other plugins’ output as a variable to you notifications. But only those which are in front of the email sender plugin in your flow.

Once all the required input boxes are filled, click save to save the results.

You will receive the mail notifications from the notice@email.flow.ci email address. 

<img src="https://dn-shimo-image.qbox.me/4aTsQKlitjkQ7dt3.png!thumbnail" width=680>

### How to set up email style?

The plugin support standard HTML styles, so you can create a custom look and layout for your notification that is aligned with your branding or just simply very easy to look through and understand. 

Watch out, even if you only use plain text you still need to use <br> to start a new row. Otherwise, all your text will be in the same line.

### What to do if Mail notification is not received or keeps landing in the junk?
To make sure you can see your flow.ci notifications in time, you need to add the notice@email.flow.ci  email address to your email whitelist. This way the notification will arrive in your inbox or to the folder you want to allocate it to. 
