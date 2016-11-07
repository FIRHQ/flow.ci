
# 手动触发构建 Webhook 地址

flow.ci 支持多种构建触发条件，你可以在 flows 设置中的 Trigger 配置相应的触发条件。除此之外，你可以通过 WebHook 接口触发项目构建，以下是 WebHook 触发构建的 API 接口和相应的参数。

> Post https://api.flow.ci/projects/{project_id}/manual_hook

## 参数

<table>
    <tr>
        <td>名称</td>
        <td>必填</td>
        <td>说明</td>
    </tr>
      <tr>
        <td>api_token</td>
        <td>是</td>
        <td>用户的 API Token</td>
    </tr>
      <tr>
        <td>branch</td>
        <td>是</td>
        <td>设置构建的分支</td>
    </tr>
      <tr>
        <td>user_commit_data</td>
        <td>否</td>
        <td>用户的自定义参数，此处以 hash 形式传输，如 {“a”: 1, “b”: “Hello world”}</td>
    </tr>
</table>
    

