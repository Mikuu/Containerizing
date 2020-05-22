Container Metrics
---

- setup cAdvisor with below commands, and verify at `http://localhost:8080`
```commandline
> docker run -d --volume=/:/rootfs:ro --volume=/var/run:/var/run:ro --volume=/sys:/sys:ro --volume=/var/lib/docker/:/var/lib/docker:ro --volume=/dev/disk/:/dev/disk:ro --publish=8080:8080 --name=cadvisor google/cadvisor:latest
```

- setup Prometheus with customized configuration, and verify at `http://localhost:9090`
```commandline
> docker run -d --name prom -p 9090:9090 -v "$(pwd)/prometheus.yml":/etc/prometheus/prometheus.yml  prom/prometheus
```

- setup Grafana, and verify at `http://localhost:3000`
```commandline
> docker run -d --name prom-dashboard -p 3000:3000 grafana/grafana
```

- setup Node-Exporter, and verify at `http://localhost:9100`
```commandline
> docker run -d --name node-exporter -p 9100:9100 prom/node-exporter
```

then, in Grafana do the following steps:
1. Create a data source with Prometheus,
2. Import a dashboard with the JSON data locally.
