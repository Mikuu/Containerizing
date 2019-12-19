Nginxinc/Kubernetes-ingress controller Setup
---

#### Setup ingress controller

- download the latest stable release from the [official page](https://github.com/nginxinc/kubernetes-ingress/releases)

after download the source code, get into the `deployments` folder.

- follow [the official guide](https://github.com/nginxinc/kubernetes-ingress/blob/master/docs/installation.md) to complete
all the setup for ingress controller.

as a summary, you need to execute all below commands:
```commandline
> kubectl apply -f common/ns-and-sa.yaml
> kubectl apply -f common/default-server-secret.yaml
> kubectl apply -f common/nginx-config.yaml
> kubectl apply -f common/custom-resource-definitions.yaml
> kubectl apply -f rbac/rbac.yaml
> kubectl apply -f deployment/nginx-ingress.yaml   # this deploy the ingress controller
> kubectl apply -f service/nodeport.yaml   # this deploy a NodePort service to access the ingress controller
```

