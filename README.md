# Fxck-CPdaily-docker

# 疫情结束 封档留存

# 接[上集](https://github.com/Ronald-247533/FxxkToday) 完成了dockerfile的书写

## 分为两部分

### First

程序docker使用了alpine作为builder 减少docker镜像大小 便于在物联网设备上使用 编译架构为armv8 64bit
为了保护隐私 将整体程序分成了两个docker images

注意：个人针对CarltonHere的代码进行魔改 并制作的docker image
first作为second的底包 不需要运行 编译即可

```
docker build -t first ./First/
```

### Second

使用first作为builder 进行配置config.yml与定时任务

在360v6上启动指令为

```
docker build -t fxcktoday ./Second/

docker run -itd -v /dev:/dev fxcktoday
```

注意：本人使用lean所编译的360v6固件 此固件内置docker 感谢lean等人对openwrt与qsdk的支持

lean对于安全问题采用了一刀切的办法 因此container 是不能出网的

这里参考了[这篇文章](https://zhuanlan.zhihu.com/p/446948929)

## dockerhub
![image](https://user-images.githubusercontent.com/57500568/188304885-ef34ce66-1763-4aac-8747-bea411a85b80.png)

