1. Create a docker image to run the code
2. Edit the config and deployment or pod kubernetes yaml files as required
3. Run `minikube start`  to start the local kubernetes cluster
4. To view in a web dashboard, run `minikube dashboard` 
5. Run `kubectl apply -f python-program-config-map.yaml` to create the configmap
6. `kubectl get configmaps` and then `kubectl get configmaps <name> -o yaml` to view the configmap
7. Alternatively you can also check in the web dashboard
8. now create a deployment using `kubectl apply -f python-kubernetes-deployment.yaml`

9. Here if your pod is failing due to **ErrImageNeverPull** error, that means kubernetes is unable to fnd the image the you build locally. This will happen because you built the image locally, but the kubernetes will be looking for the image inside the minikube docker
10. Run this `eval $(minikube docker-env)` and then build the image again so it will be built inside the minikube docker

