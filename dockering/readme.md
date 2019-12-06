##### to start local vcer backend
```commandline
> docker stack deploy -c vcer-infrastructure-compose.yml vcer-infra
> docker stack deploy -c vcer-keycloak.yml vcer-keycloak
```

> `volume` is not working well for docker running on Mac OS, instead, use `bing mount` storage for mysql and mongdb, that are `./mount-volume/mysql-volume` and `./mount-volume/mongo-volume`.
