## 5.3.4 Git Clone plugin

Git Clone plugin copies the code from the code repository to flow.ci. 

### Why does the plugin fail to copy the repository?

If you are using GitHub, there are chances that you might see the following error message: 

- “Please make sure you have the correct access rights.”

The reason is related to Github access rights. Imagine a scenario when you are the admin of Project A using flow.ci and someone forks your project creating Project A Fork. Once he is happy with his modifications he sends a pull request to merge his changes into your Project A. Unless you disabled it, the pull request will trigger your flow. But if you don’t have admin right in Github for Project A Fork, flow.ci won’t be able to clone Project A Fork’s code and compare it to your original Project A. 

<b>Solution:</b>

You can solve this problem in only two steps. 

Go to your project’s settings in Github and delete flow.ci’s deploy key. 	

<img src="https://dn-shimo-image.qbox.me/937smzSjLLw5fW8G.png!thumbnail" width=680>

Following this, go to flow.ci’s settings and copy the RSA SSH key and add it to your GitHub's SSH keys.

<img src="https://dn-shimo-image.qbox.me/tzglTHXUri8i9vxP.png!thumbnail" width=680>

<img src="https://dn-shimo-image.qbox.me/JYKS2wl0uCkCsoBJ.png!thumbnail" width=680>

If you are a Bitbucket user you are likely to come across the same error message：

- “Please make sure you have the correct access rights.”

Just like at Github the error is caused by Bitbucket access rights. Imagine a scenario when you are the admin of Project A using flow.ci and someone forks your project creating Project A Fork. Once he is happy with his modifications he sends a pull request to merge his changes into your Project A. Unless you disabled it, the pull request will trigger your flow. But if you don’t have admin right in Bitbucket for Project A Fork, flow.ci won’t be able to clone Project A Fork’s code and compare it to your original Project A. 

<b>Solution:</b>

To solve this problem you only need to do one thing. 

In flow.ci, go to settings and copy RSA that you find their and add it to Bitbucket as a deployment key.

<img src="https://dn-shimo-image.qbox.me/A0KQQmTaL5Ipcdc9.png!thumbnail" width=680>

