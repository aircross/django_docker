# Django Docker 运行环境
## 项目简介
- Base System alpine 3.15
- Python 3.10.2
- Django 4.0.2


**1、** 将代码复制到属主机器的/django目录



**2、** 执行以下命令启动服务
```shell
docker run -d --name=django --restart=always -v /django/:/django/ aircross/docker_django
```
> 以上命令 -v 挂载的目录是以 git clone 本仓库为例,也可以在任意位置手动创建 frpc.ini 文件,并修改命令中的挂载路径.

**3、** 默认启动端口为8080

**4、** 