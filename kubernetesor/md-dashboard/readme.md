Setup React application
---

- Create Pods

```commandline
> kubectl apply -f deployment.yaml
```

> this deployment.yaml are using a private registry which needs basic authentication, so before create the deployment, it
> needs create the imagePullSecret. Check https://kubernetes.io/docs/concepts/containers/images/#using-a-private-registry
> for detailed steps.

check the [official guide](https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/) for create 
Deployment.

- Create Service

create a NodePort type service, which expose port 31001:
```commandline
> kubectl apply -f service.yaml
```

check the official guide about creating Service [here](https://kubernetes.io/docs/tasks/access-application-cluster/service-access-application-cluster/), or [with configuration file here](https://kubernetes.io/docs/concepts/services-networking/service/)

- Access application
find any one node's external/accessible IP, open browser at `http://<node-IP>:31001`. 

