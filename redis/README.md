# redis 使用

## 构建
这里我使用的是阿里云提供的镜像服务，在阿里云上面使用该 `Dockerfile` 进行构建，然后在云主机上面使用 `docker` 登录到阿里云镜像仓库，再将构建好的镜像 `pull` 到云主机，就可以使用了。

## 使用
当下载好镜像后，使用下面的命令进行使用吧。

```shell
$ docker run -p 6388:6379 --name redis -d registry-internal.cn-hangzhou.aliyuncs.com/****/redis:[镜像版本号]
```

这样就创建了一个运行的容器。我们可以试试 `redis` 服务

```shell
$ redis-cli -p 6388
```

> 我主机上面也是安装了 `redis` 的，所以可以直接用 `redis-cli` 连接容器中的 `redis`。

好, `redis` 运行正常。

如何进入到正在运行的容器里面呢？我们可以使用 `docker exec` 工具。

```shell
$ docker exec -it CONTAINER_ID /bin/bash
```

> 上面的 CONTAINER_ID 可以使用 docker ps 查看。

ok ，先告一段路吧，未完待续。
