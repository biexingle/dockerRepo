# Java Development Kit on Docker

镜像的构建和下载说明参见 `redis` 中的 `README.md`。

下载好后可以使用 `docker images` 查看。

## 使用

```shell
$ docker run -i --name java -d registry.cn-hangzhou.aliyuncs.com/tanc/java
```

启动容器过后，使用 `docker ps -a` 进行查看运行的容器。

```shell
$ docker exec -it java /bin/bash
```

上面的命令可以进入到容器，就可以使用 `java` 等命令。。。
