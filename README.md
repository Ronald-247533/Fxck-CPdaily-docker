# Fxck-CPdaily-docker

# 接[上集](https://github.com/Ronald-247533/FxxkToday) 完成了dockerfile的书写

## 分为两部分

### First

程序docker使用了alpine作为builder 减少docker镜像大小 便于在物联网设备上使用 编译架构为armv8 64bit
为了保护隐私 将整体程序分成了两个docker images

注意：个人针对CarltonHere的代码进行魔改 并制作的docker image

### Second

使用first作为builder 进行配置config.yml与定时任务

在360v6上启动指令为

```
docker builde -t fxcktoday ./Second/

docker run -itd -v /dev:/dev fxcktoday
```

注意：本人使用lean所编译的360v6固件 此固件内置docker 感谢lean等人对openwrt与qsdk的支持

lean对于安全问题采用了一刀切的办法 因此container 是不能出网的

这里参考了[这篇文章](https://zhuanlan.zhihu.com/p/446948929)
