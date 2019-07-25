Swarm
---
> precondition: create node machines correctly.

connect shell to a node manager, this is help to avoid copy assets, e.g. compose file into the node machine, then make all docker commands be executed on the node manager.
```commandline
> eval $(docker-manager env [node manager name])
```

deploy stack to the connected nodes
```commandline
> docker stack deploy -c docker-compose.yml [application name]
```