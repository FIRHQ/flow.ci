## 5.3.5 Install plugin

The role of the install plugin is to install the necessary dependencies for the project.

### PHP

For php projects, the install plugin installs the composer.json file that describes all the necessary dependencies by executing the command:
<pre>
<code>composer install --prefer-source --no-interaction </code>
</pre>


### Node.js

For node.js projects, the install plugin installs the package.json file that describes all the necessary dependencies by executing the command:
<pre>
<code>npm install </code>
</pre>


### Ruby

For Ruby projects the install plugin installs gem dependencies specified in the Gemfile by executing the command:
<pre>
<code>bundle install </code>
</pre>


### Python

For Python projects the install plugin installs all dependencies that are declared in the requirements.txt by executing the command:
<pre>
<code>pip install -r requirements.txt</code>
</pre>
