
# 手动触发构建 Webhook 地址

> /projects/{project_id}/manual_hook

## 参数

<table>
    <tr>
        <td>名称</td>
        <td>必须</td>
        <td>说明</td>
    </tr>
      <tr>
        <td>api_token</td>
        <td>是</td>
        <td>用户的api_token</td>
    </tr>
      <tr>
        <td>branch</td>
        <td>是</td>
        <td>启动的分支</td>
    </tr>
      <tr>
        <td>flow_id</td>
        <td>否</td>
        <td>启动的flow的标记，不填写，则为默认flow(用户暂时只有默认flow)</td>
    </tr>
      <tr>
        <td>user_commit_data</td>
        <td>否</td>
        <td>用户的自定义参数，此处以hash形式传输 如 {“a”: 1, “b”: “Hello world”}</td>
    </tr>
</table>
    

