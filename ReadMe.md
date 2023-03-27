# This repository contains some of the handson examples that I have tried with some extra and new implementations
## Pre-requisites 
1. `Docker` to be installed. [Guide to docker setup](https://docs.docker.com/get-docker/)
2. I have used `minikube` for kubernetes [Guide to Minikube setup](https://minikube.sigs.k8s.io/docs/start/)

Repo is divided into following folder structure
```bash
.
├── ReadMe.md
├── data  #this is where I store sample data files, this folder will be used as a volume
│   └── ratings.csv
├── dockerfiles #this folder contains various Dockerfiles required for my hands-on practice. All images are simple images
│   └── Dockerfile_without_volumes
├── how_to_run #Markdown files here will explain each step by step proc for running the pods or deployments (including docker)
│   └── steps_without_volumes.md
├── kubernetes #This folder contains all the files required for kubernetes
│   ├── KUBERNETES-Cheat-Sheet-2022.pdf
│   ├── config
│   │   └── python-program-config-map.yaml
│   └── python-kubernetes-deployment-without-volumes.yaml
├── requirements.txt #a requirements file for dockerimages for python packages
├── scripts #this file contains python scripts that can be used, this folder will also be used as a volume to fetch code
│   └── kub_sample_without_volumes.py
└── shell #this folder contains all the shell scripts that are required for my practice
    └── entrypoint_without_volumes.sh
```


## Background
This repository may contain some sample and simple docker and kubernetes YAML files, the motivation for me behind this is to try out different things and save it here with all the steps included on how to perform the process. So it will be useful for my reference in future.

### First app
Please refer to the steps mentioned here: [steps_without_volumes.md](https://github.com/SrikarManthatti/docker-practice-sample/blob/master/how_to_run/steps_without_volumes.md)

In this scenario, the main case is to use the ConfigMap in kubernetes to create some variables and access them into the pod and further send it to the python script as parameters