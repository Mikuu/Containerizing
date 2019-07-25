#!/usr/bin/env bash
docker run -d --network vcer-network --name vcer-authorizer  sandbox-vcer-authorizer:0.0.1
docker run -d --network vcer-network --name vcer-storage  --mount source=vcer-storage-volume,target=/vcer-storage sandbox-vcer-storage:0.0.1
docker run -d --network vcer-network --name vcer-slave sandbox-vcer-slave:0.0.1