这是一个示例项目

# 构建

go build -o bin\start .\cmd\main.go



# 给jenkins 用户docker访问的权限 
```
sudo groupadd docker
sudo usermod -aG docker jenkins
newgrp docker
```		