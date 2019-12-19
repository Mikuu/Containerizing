Setup single web application
---

#### Create Pods

```commandline
> kubectl apply -f deployment.yaml
```

> this deployment.yaml are using a private registry which needs basic authentication, so before create the deployment, it
> needs create the imagePullSecret. Check https://kubernetes.io/docs/concepts/containers/images/#using-a-private-registry
> for detailed steps.
>
> check the [official guide](https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/) for create 
Deployment.

#### Create Service

create a ClusterIP service, this makes the application can't be accessed externally, later we will use ingress to expose it

```commandline
> kubectl apply -f service.yaml
```

> check the official guide about creating Service [here](https://kubernetes.io/docs/tasks/access-application-cluster/service-access-application-cluster/), or [with configuration file here](https://kubernetes.io/docs/concepts/services-networking/service/)

#### Create Ingress

create a ingress source to expose the application

```commandline
> kubectl apply -f ingress.yaml
```

#### Access application

##### with ingress-nginx controller

- find the ingress-nginx service node port with below command, marked as <nodePort>,

```commandline
> kubectl get service -n ingress-nginx
```

- find a node's external/accessible IP, marked as <nodeIp>,

- add DNS record to /etc/hosts
 ```commandline
<nodeIp> web-demo.ingress.k8s.ariman.com
```
> the hostname `web-demo.ingress.k8s.ariman.com` is defined in `ingress.yaml`

- access the application with browser at `http://web-demo.ingress.k8s.ariman.com:<nodePort>`, or with command
```commandline
> curl http://web-demo.ingress.k8s.ariman.com:<nodePort>
```
> since we are using Nginx in ingress, so it must use hostname, not IP, in access request.

##### with kubernetes-ingress controller

- as the similar with above, find the service ( which expose kubernetes-ingress controller) node port, marked as <nodePort>,
```commandline
> kubectl get service -n nginx-ingress
```

- the rest steps are all the same as above with ingress-nginx controller, just repeat them.

 

