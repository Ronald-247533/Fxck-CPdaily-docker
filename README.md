# Fxck-CPdaily-docker

# 接[上集](https://github.com/Ronald-247533/FxxkToday) 完成了dockerfile的书写

## 分为两部分

### First

程序docker使用了alpine作为builder 减少docker镜像大小 便于在物联网设备上使用 编译架构为armv8 64bit
为了保护隐私 使用了第二部分

### Second

使用first作为builder 进行配置config.yml与定时任务
