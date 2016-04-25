## 6. FAQ
### Why does “GitHub webhook error” occur?

- It can happen due to Github’s limitation, that only 20 webhooks can be created for every event on each installation target. If flow.ci’s webhook is the 21st you will see the error message.

- If, for any reason, you have deleted flow.ci’s webhook on Github, it would also cause a “Github webhook error”. 

### Does flow.ci support private GitHub projects? 

Yes. 
### Why some projects can’t be created?

- One of the common cause could be your permission level. If you do not have admin permissions for a GitHub repository, then you can’t create the project on flow.ci. 

- If a project, that is based on a particular repository, already exists, then you can’t create a new project based on the same repository. 


### What are the common causes of build failure at PHP projects?

The project is missing the composer.json file

### What are the common causes of build failure at Python projects? 

The project is missing requirements.txt file

### What are the common causes of build failure at Ruby projects? 

The project has no Gemfile.

### What are the common causes of build failure at node.js projects?

The project is missing package.json file.

### What are the common causes of build failure at Java for Android projects?

Since we use Gradle to build Java for Android projects, your repository must have a build.gradle file in the root folder.


