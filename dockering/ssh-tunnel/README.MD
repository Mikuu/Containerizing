SSH Tunnel container
---

we can use a container to build an SSH tunnel.

let's say we have following setup:

ServerA - a target server, e.g. a server holding MongoDB, in a private subnet, no public IP, not accessible from internet,
ServerB - a bastion server, e.g. a server holding a SSH server, in a pubic subnet, with pubic IP, accessible from internet,
localhost, from where we need start operations

> Preconditions, before we carry on, it need a SSH key file, e.g. `bastion.pem` to be accessible at localhost.

- first, we create an image which ENTRYPOINT is opening a SSH tunnel
```commandline
> docker image build -f Dockerfile --tag=ssh-tunnel .
```

- then, we run the container with a open SSH tunnel
```commandline
> docker container run -d --name my-ssh-tunnel ssh-tunnel 
```

- finally, we can run command inside the container with specific port, which is binding through SSH tunnel, e.g.
```commandline
> docker container exec my-ssh-tunnel mongodump --gzip --archive=dump.backup.gz --host=localhost --port=27016 --username=[username] --password=[password] --db=[database]
```
> in the Dockerfile, we already bind TargetHost:Port to our localhost:27016, so we can set --host=localhost & --port=27016 here. 
