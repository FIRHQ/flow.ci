
Edit
关于手动build 的接口
地址

/projects/{project_id}/manual_hook

参数

名称  必须  说明
api_token  是  用户的api_token
branch  是  启动的分支
flow_id  否  启动的flow的标记，不填写，则为默认flow（用户暂时只有默认flow）
user_commit_data  否  用户的自定义参数，此处以hash形式传输 如 {“a”: 1, “b”: “Hello world”}
