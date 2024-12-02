# step initial kuberntes cluster and install argocd
### package requirement
1. kind cli(kubernetes in docker)
2. helm cli

### step to install
1. providsion kubernetes cluster by kind(kubernetes in docker) `kind create cluster --image kindest/node:v1.30.6@sha256:b6d08db72079ba5ae1f4a88a09025c0a904af3b52387643c285442afb05ab994`
2. add argo-cd helm repository `helm repo add argo https://argoproj.github.io/argo-helm`
3. install argo-cd with helm `helm install argo-cd argo/argo-cd --values ./helm-values/values-argocd.yaml --create-namespace --namespace mgmt --version 7.4.7`
