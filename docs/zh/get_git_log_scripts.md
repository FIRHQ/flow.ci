# 获取git log作为changelog的解决办法



* 在项目里的 **工作流** 里进入flow的流程设置，然后选择 “+” （记得选择到你要用到git log的之前）

* 然后，搜索 **自定义脚本** 添加一个自定义脚本，将以下脚本复制到插件中，保存：

```

export CHANGE_LOG=$(git log --pretty=format:"%s" -1 $describe)

```

* 然后将 **$CHANGE_LOG** 这个变量设置到之后要用到的插件里就可以了
