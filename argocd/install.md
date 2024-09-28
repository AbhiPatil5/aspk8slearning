helm search repo

helm list -A

-------------------------------------------------


helm repo add argo https://argoproj.github.io/argo-helm


helm upgrade --values values.yaml argocd argo/argo-cd --namespace aspcore


helm uninstall argocd --namespace aspcore

-------------------------------------------------



