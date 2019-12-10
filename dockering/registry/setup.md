##### create self-signed certificates
- create certificates
```commandline
> mkdir -p certs

> openssl req \
 -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key \
 -x509 -days 365 -out certs/domain.crt
```

> Be sure to use the name myregistrydomain.com as a CN, e.g. registry.ariman.com

- add certificates to Docker daemon (OS specified - https://docs.docker.com/registry/insecure/)
```commandline
# for MacOS, use self generated certificates,
> sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ./certs/domain.crt
> cp ./certs/domain.crt ~/.docker/certs.d/registry.ariman.com:5000/client.cert
> cp ./certs/domain.key ~/.docker/certs.d/registry.ariman.com:5000/client.key

# or, use the certificates from registry server,
> sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ./registry-server-certs/domain.crt
> cp ./registry-server-certs/domain.crt ~/.docker/certs.d/registry.ariman.com:5000/client.cert
> cp ./registry-server-certs/domain.key ~/.docker/certs.d/registry.ariman.com:5000/client.key

# for Linux, use self generated certificates,
> cp ./certs/domain.crt /etc/docker/certs.d/myregistrydomain.com:5000/ca.crt

# or, use the certificates from registry server,
> cp ./registry-server-certs/domain.crt /etc/docker/certs.d/myregistrydomain.com:5000/ca.crt
```

##### create user for basic authenticate
```commandline
> mkdir auth

> docker run \
  --entrypoint htpasswd \
  registry:2 -Bbn testuser testpassword > auth/htpasswd
```

##### create registry as standalone container
```commandline
> docker run -d \
  -p 5000:5000 \
  --restart=always \
  --name registry \
  -v "$(pwd)"/auth:/auth \
  -e "REGISTRY_AUTH=htpasswd" \
  -e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" \
  -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
  -v "$(pwd)"/certs:/certs \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
  -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
  registry:2
```

##### stop and remove registry
```commandline
> docker container stop registry && docker container rm -v registry
```

##### login & logout to registry
```commandline
> docker login registry.ariman.com:5000
> docker logout registry.ariman.com:5000
```
> If encounter the error `Error saving credentials: error storing credentials - err` on Mac, check this: https://blog.csdn.net/xufwind/article/details/88756557

##### push image to registry
- create self image into local image registry, or pull image from Docker Hub to local image registry, e.g. alpine
```commandline
> docker pull alpine
```

- tag local image with a new name with registry info
```commandline
> docker tag alpine registry.ariman.com:5000/alpine
```

- push the new tag/image to registry
```commandline
> docker push registry.ariman.com:5000/alpine
```

- then, the image can be pulled from ourselves' registry
```commandline
> docker pull registry.ariman.com:5000/alpine
```