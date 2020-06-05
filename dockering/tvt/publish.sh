docker image tag tvt-file-service:latest ariman/tvt-file-service:latest
docker image tag tvt-slave:latest ariman/tvt-slave:latest
docker image tag tvt-dashboard:latest ariman/tvt-dashboard:latest
docker image tag tvt-exchange:latest ariman/tvt-exchange:latest

docker image push ariman/tvt-file-service:latest
docker image push ariman/tvt-slave:latest
docker image push ariman/tvt-dashboard:latest
docker image push ariman/tvt-exchange:latest
