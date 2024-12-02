helm search repo

helm list -A

##############################################################################


helm repo add argo https://argoproj.github.io/argo-helm

helm search repo

helm install [NAME] [CHART] [flags]

helm upgrade --install --values values.yaml argocd argo/argo-cd --namespace aspcore
helm upgrade --values values.yaml argocd argo/argo-cd --namespace aspcore

helm list -A

helm --values values.yaml argocd argo/argo-cd --namespace aspcore

helm uninstall argocd --namespace aspcore


original vaules file ---

https://github.com/argoproj/argo-helm/blob/main/charts/argo-cd/values.yaml


##############################################################################

https://github.com/argoproj/argo-helm/tree/main/charts/argo-cd


$ helm repo add argo https://argoproj.github.io/argo-helm
"argo" has been added to your repositories

helm upgrade --install --values values.yaml argocd argo/argo-cd --namespace aspcore
...
##############################################################################

ingress with tls -

    server.insecure: false

https://argo-cd.readthedocs.io/en/stable/operator-manual/ingress/#ssl-passthrough-with-cert-manager-and-lets-encrypt

##############################################################################

credentials

admin
30XotT5iuLNTnlyT 


##############################################################################


##############################################################################

