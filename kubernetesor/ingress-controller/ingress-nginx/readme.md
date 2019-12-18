Kubernetes/Ingress-nginx Controller Setup
---

check [official document](https://kubernetes.github.io/ingress-nginx/deploy/) for full guid.

- Create ingress controller and other resources

```commandline
> kubectl apply -f mandatory.yaml
```

the original yaml file use `quay.io/kubernetes-ingress-controller/nginx-ingress-controller`, which is in google's server,
blocked by GFW. If your deployment environment can't get access to it, you need download the image to your private registry
first, then deployment with the image from your private registry, e.g. `registry.ariman.com:5000`.

given you already download the official image into your private registry, e.g. `registry.ariman.com:5000/nginx-ingress-controller`, there are 2 ways to use that image, pull at deploying, OR use existed image:

`pull at deploying`:
```commandline
> kubectl apply -f mandatory.pull-at-deploying.yaml
``` 

to `use existed image`, you need firstly manually pull the controller image to all the nodes' local docker image repos,
```commandline
> docker pull registry.ariman.com:5000/nginx-ingress-controller
```
then, deploy without pulling image:
```commandline
> kubectl apply -f mandatory.with-local-image.yaml
```

- Create ingress-nginx service
```commandline
> kubectl apply -f service-nodeport.yaml
```

