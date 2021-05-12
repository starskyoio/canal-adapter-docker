# canal-adapter-docker
canal-adapter docker镜像

# 运行
```
docker run --name canal-adapter \
-v /etc/canal/adapter/conf:/usr/share/canal/adapter/conf \
-d nexus:8082/com.cdhr/canal-adapter:1.1.5
```
