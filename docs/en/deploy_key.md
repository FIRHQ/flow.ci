
# How to add deploy key to Git repository manually


# Gitlab
GitLab needs add deploy key into your project manually if the GitLab site not support HTTPS, otherwise will cause 'Permission Denied' error while executing git clone.

1. Go to deploy key setting page of project from GitLab
2. Input any characters in title field
3. Input content of 'RSA' session from flow.ci project setting page
4. Click 'Add Key' button
