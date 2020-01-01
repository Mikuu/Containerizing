start vcer system
---

##### start infra services, including mongodb, zookeeper and kafka
```commandline
> docker stack deploy -c vcer-infra-external-network-compose.yml vcer-infra
```

##### start slave cluster, including coordinator, slaving and slaves
```commandline
> docker stack deploy -c vcer-cluster-compose.yml vcer-cluster
```

##### start backend services, including master, authorizer and storage
```commandline
> docker stack deploy -c vcer-backend-compose.yml vcer-backend
```

##### start keycloak
```commandline
> docker stack deploy -c vcer-keycloak-5-compose.yml vcer-keycloak-5
```
> keycloak v5 is not working well with MySQL database, try v8 later with Postgres later.

##### start ui
just manually start.


### Latest Update.
cluster is working.
need integrate coordinator with master, code change is done, but not yet ran, blocked by the com.docker.hyperkit high CPU
usage, swarms can't be run together on a single MacBook, need run on real nodes.

Code completed only for trigger compare and harvest results, harvested resources clean has not been implemented or checked.