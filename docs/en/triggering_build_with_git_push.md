## 3.2 Triggering build with git push

By default, making a git push in any branch would trigger a new Build.  The trigger settings can be set in the “Flow” menu.

<b>How to turn off git push trigger?</b>

Flick the green "Push" switch to off state to stop git pushes triggering builds. As long as the switch is off, git pushes won’t trigger new builds. 

<img src="https://dn-shimo-image.qbox.me/0l5eMsAOMmoc9hq1.png!thumbnail" width=680>

<b>How to set up git push trigger for specific branches?</b>

Select the "Regular match" radio button, then input the names of the branches for which you want to trigger builds with git push. Watch out, each branch name should be in a new line, otherwise flow.ci considers them as one branch name. When flow.ci identifies the branches it is using exact matches, but you can use an asterisk (*) as a placeholder for wildcard terms.

<img src="https://dn-shimo-image.qbox.me/3lORrRjZCrgVYeqA.png!thumbnail" width=680>

<b>How to view detailed build logs?</b>

Click on a preferred build in the build history to open the build log.

<img src="https://dn-shimo-image.qbox.me/5kzqrMy3rkIhbaR9.png!thumbnail" width=680>

Click on each step to view the details.

<img src="https://dn-shimo-image.qbox.me/8f3nnKcDIYI7581U.png!thumbnail" width=680>



