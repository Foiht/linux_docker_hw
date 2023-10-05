# linux_docker_hw

Build docker image:

```docker build -t alpine_netcat_image .```

Run docker containers:

```docker-compose up -d```

Verify commutication beatween containers:

```docker logs netcat_server```
```docker logs netcat_client```

Save docker image localy:

```docker save -o ./alpine_netcat_image.tar alpine_netcat_image```
