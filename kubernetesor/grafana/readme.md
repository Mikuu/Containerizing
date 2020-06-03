Deploy a Grafana server
---

#### Create Deployment (will also create Pod)

```commandline
> kubectl apply -f deployment.yaml
```
this Pod exposes a HostPort，making it accessible within the cluster through NodeIP:HostPort, e.g.: curl http://<NodeIp>:<HostPort>/login

#### Create Service

```commandline
> kubectl apply -f service.yaml
```
this Service use type NodePort, making it accessible from outside through NodeIP:NodePort

#### Create Ingress

create a ingress source to expose Grafana at url `grafana.ingress.k8s.ariman.com`, before access this url, it must add corresponding mapping record in /etc/hosts, the IP should be any one of the work node.

```commandline
> kubectl apply -f ingress.yaml
```
