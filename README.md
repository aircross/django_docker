# Django Docker 运行环境
## 项目简介
- Base System alpine 3.15
- Python 3.10.2
- Django 4.0.2


**1、** 使用 Docker 部署
   1.1. 安装docker

```shell
curl -fsSL https://get.docker.com | sh
# 设置开机自启
sudo systemctl enable docker.service
# 根据实际需要保留参数start|restart|stop
sudo service docker start|restart|stop
```






**2、** 将代码复制到属主机器的/django目录



**3、** 执行以下命令启动服务
```shell
docker run -d --name=django --restart=always -v /django/:/django/ aircross/docker_django
```
> 以上命令 -v 挂载的目录是以 git clone 本仓库为例,也可以在任意位置手动创建 frpc.ini 文件,并修改命令中的挂载路径.

默认启动端口为8080

**4、** 



## 版本更新
- latest 为最新版
- Tags 为历史版本

## 相关链接
更多frp相关信息可参考我的博客
- VPS推荐 [VPS.la](https://www.vps.la)