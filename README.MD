# linux_docker_hw

Build docker image:

```docker build -t alpine_netcat_image .```

Run docker containers:

```docker-compose up -d```

Verify commutication between containers:

```docker logs netcat_server```
```docker logs netcat_client```

To stop containers:

```docker-compose stop```

To delete containers and custom network:

```docker-compose down```