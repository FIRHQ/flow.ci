## 5.2 插件的 Inputs & Outputs

在不同的插件中可能会看到有 Inputs 与 Custom Outputs 的设置，这里讲解一下 Inputs 与 Custom Outputs 的作用。

### Inputs 

Inputs 的作用是设置这个插件需要使用的环境变量值，环境变量作用域为整个插件。

<img src="https://dn-shimo-image.qbox.me/p3G8Em3QZOEnQxAE.png!thumbnail" width=680>

### Custom Outputs 

Custom Outputs 分为两部分：Define template 和 Define Outputs 两个部分。

<img src="https://dn-shimo-image.qbox.me/ZPzBCvJrFGovUTLr.png!thumbnail" width=680>

Define Outputs 的作用是将脚本要产出的结果输出，Outputs 变量的作用域为从定义到整个 flow 跑完。

<b>什么样的值需要设置为 Outputs?</b>

- 后面插件需要再次使用的变量
- 此插件需要输出显示的内容
 

Define Template 是用通过 html  样式将 Outputs 在 flow 中更清晰的显示出来，如下图的代码质量检测结果。

<img src="https://dn-shimo-image.qbox.me/7ehi78DwLUAPYgY6.png!thumbnail" width=680>

