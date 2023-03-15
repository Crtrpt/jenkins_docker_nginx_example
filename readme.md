这是一个示例项目

![上图](./diagram.svg)

# 构建

go build -o bin\start .\cmd\main.go



# 给jenkins 用户docker访问的权限 
```
sudo groupadd docker
sudo usermod -aG docker jenkins
newgrp docker
```		
#增加webhooktrigger 插件

```
Optional token. If it is specified then this job can only be triggered if that token is supplied when invoking http://JENKINS_URL/generic-webhook-trigger/invoke. It can be supplied as a:
Query parameter /invoke?token=TOKEN_HERE
A token header token: TOKEN_HERE
A Authorization: Bearer header Authorization: Bearer TOKEN_HERE
```
外部请求相应的url 即可触发相应的构建

# 注意更新配置之后需要重启nginx的配置
