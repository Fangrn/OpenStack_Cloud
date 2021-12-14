# 废弃.......
误操作导致，电脑磁盘格式化.....未备份。目前来看这个东西使用意义不是很大
# OpenStack_Cloud
🤖毕设项目，基于OpenStack的云桌面平台,代码暂时先不放(✍代码写的太烂了💩)，目前正在重构🤪

## 主要功能

- [x] 在线注册、登录云平台
- [x] 申请相应配置的虚拟机
- [x] 虚拟机创建、删除、修改等
- [x] 云主机启动、关闭、暂停、挂起、恢复等
- [x] 云平台OpenStack集群监控、告警
- [x] 虚拟机实例性能监控、告警
- [x] 支持用户使用论坛、文章功能等等等........(功能很多有点乱七八糟的)

## 总体架构图

(乱画的)

![](http://s-o.oss-cn-shanghai.aliyuncs.com/picture/1.png)

**主要说明如下：**

**(1) 本系统底层服务器为Linux服务器一切服务组件均建立于它的上面，是本系统最为重要的核心部分，主要为各个服务模块提供计算存储网络等资源。**

**(2) OpenStack集群主要有KVM和OpenStack共同组成，OpenStack的部署方式是属于多节点分布式部署，KVM为OpenStack提供镜像服务支持，即本系统所有集成软件环境镜像均有KVM制作后上传至OpenStack平台中。OpenStack为该云桌面系统提供云桌面。**

**(3) 监控平台的组成主要分为Prometheus和Grafana组成二者相互结合组成了监控平台，主要负责监控以及告警的功能。**

**(4) Apache guacamole远程连接是基于Docker搭建，它给系统用户提供了云桌面的不同连接方式供用户选择使用，主要附加在用户平台模块。**

**(5) 云桌面系统管理平台由MySQL+ Java + Thymeleaf编写所采用tomcat服务器运行。**

**(6) 用户平台主要是由VUE+MySQL+Java编写基于tomcat服务器运行。**

**(7) Nginx服务器在本系统中，其作用除了解析前端静态网页外。还负责反向代理负载均衡的作用，目的是为了使系统能够达到高可用。**

**(8) 使用的客户端可以是电脑、平板或手机等目前主流操作系统平台均可接入云桌面使用。**

## 主要界面

(1)云桌面列表界面

 ![](http://s-o.oss-cn-shanghai.aliyuncs.com/picture/2.png)

管理员在后台登录后可以查看当前云桌面系统中的所有云主机实例，不同的云主机实例有不同的系统图标，云主机所处不同状态时页面上显示不同的状态给以区分。

(2)磁盘列表界面

![](http://s-o.oss-cn-shanghai.aliyuncs.com/picture/3.png) 

(3)快照、镜像列表界面

![](http://s-o.oss-cn-shanghai.aliyuncs.com/picture/4.png) 

(4)实例详情界面

![](http://s-o.oss-cn-shanghai.aliyuncs.com/picture/5.png)

点击云主机实例后会跳转到云主机实例界面

在此界面可以对云主机进行远程连接使用，关机、重启、挂起、暂停等操作。点击登录后使用默认的novnc进行登录云桌面。

![](http://s-o.oss-cn-shanghai.aliyuncs.com/picture/7.png)

支持常用办公软件、社交软件的使用(deepin牛逼🤪)

点击更多登录方式可以选择使用apache guacamole进行远程连接，apache guacamole支持多种登录连接方式，主要展示SSH的远程连接，其他的不再过多重复的展示。

![](http://s-o.oss-cn-shanghai.aliyuncs.com/picture/8.png) 

(5)云桌面创建界面

支持主流操作系统镜像以及应用镜像的创建以及使用

![](http://s-o.oss-cn-shanghai.aliyuncs.com/picture/9.png)

![](http://s-o.oss-cn-shanghai.aliyuncs.com/picture/10.png)

------

断断续续写了三个月，目前整个项目重写了一部分，进行了部分的修正与调整，同时也增加了很多新的功能。总的来说还有挺长一段路要走🤯️🤯️🤯️

