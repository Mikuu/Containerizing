#!/usr/bin/env bash
case $1 in
    "vcer-master") 
        docker tag sandbox-vcer-master:0.0.1 registry.ariman.com:5000/sandbox-vcer-master:0.0.1
        docker push registry.ariman.com:5000/sandbox-vcer-master:0.0.1
        ;;
    "vcer-authorizer")
        docker tag sandbox-vcer-authorizer:0.0.1 registry.ariman.com:5000/sandbox-vcer-authorizer:0.0.1
        docker push registry.ariman.com:5000/sandbox-vcer-authorizer:0.0.1
        ;;
    "vcer-coordinator")
        docker tag sandbox-vcer-coordinator-multi-cg:0.0.1 registry.ariman.com:5000/sandbox-vcer-coordinator-multi-cg:0.0.1
        docker push registry.ariman.com:5000/sandbox-vcer-coordinator-multi-cg:0.0.1
        ;;
    "vcer-slaving")
        docker tag sandbox-vcer-slaving-multi-cg:0.0.1 registry.ariman.com:5000/sandbox-vcer-slaving-multi-cg:0.0.1
        docker push registry.ariman.com:5000/sandbox-vcer-slaving-multi-cg:0.0.1
        ;;
    "vcer-slave")
        docker tag sandbox-vcer-slave:0.0.1 registry.ariman.com:5000/sandbox-vcer-slave:0.0.1
        docker push registry.ariman.com:5000/sandbox-vcer-slave:0.0.1
        ;;
    "vcer-storage")
        docker tag sandbox-vcer-storage:0.0.1 registry.ariman.com:5000/sandbox-vcer-storage:0.0.1
        docker push registry.ariman.com:5000/sandbox-vcer-storage:0.0.1
        ;;
    "vcer-ui")
        docker tag sandbox-vcer-ui:0.0.1 registry.ariman.com:5000/sandbox-vcer-ui:0.0.1
        docker push registry.ariman.com:5000/sandbox-vcer-ui:0.0.1
        ;;
    *)   echo "...not recognized.";;
esac
