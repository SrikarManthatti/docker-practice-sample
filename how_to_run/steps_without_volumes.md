## Scenario

In this scenario the following are covered 
1. Create a docker python image which contains artifacts in it
2. Scripting and creating a kubernetes `configmap` with two parameters in it
3. Scripting and creating a kubernetes `deployment`, which refers to the values in `configmap` as environment variables
4. After reading the values from `configmap`, passing those as the parameters to the python artifact inside the docker container

## Required files

dockerfiles/Dockerfile_without_volumes..........................==> This file contains the docker image script <br>
kubernetes/config/python-program-config-map.yaml................==> This file contains the configuration values/parameters required for by the artifact and kubernetes deployment file <br>
kubernetes/python-kubernetes-deployment-without_volumes.yaml....==> This file contains the deployment scripts for kub pods<br>
scripts/kub_sample_without_volumes.py...........................==> This file contains the python scripts that will just print some values and parameters <br>
shell/entrypoint_without_volumes.sh.............................==> This file contains the shell script which will accept the arguments (command line) and then run the python script by passing those<br>


## Steps to follow
1. Create a docker image to run the code (using docker build and tag the docker image with name ``sri-dock-vol``). If you wish to give your own name/tag to the image, please change it accordingly in the deployment file.
2. Edit the config and deployment or pod kubernetes yaml files as required
3. Run `minikube start`  to start the local kubernetes cluster
4. To view in a web dashboard, run `minikube dashboard` 
5. Run `kubectl apply -f python-program-config-map.yaml` to create the configmap
6. `kubectl get configmaps` and then `kubectl get configmaps <name> -o yaml` to view the configmap
7. Alternatively you can also check in the web dashboard
8. now create a deployment using `kubectl apply -f python-kubernetes-deployment-without-volumes.yaml`

9. Here if your pod is failing due to **ErrImageNeverPull** error, that means kubernetes is unable to fnd the image the you build locally. This will happen because you built the image locally, but the kubernetes will be looking for the image inside the minikube docker
10. Run this `eval $(minikube docker-env)` and then build the image again so it will be built inside the minikube docker

