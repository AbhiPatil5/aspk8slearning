#helm search repo
#
#helm list -A
#
###############################################################################
#
#
#helm repo add argo https://argoproj.github.io/argo-helm
#helm repo remove argo 
#helm search repo

create-namespace-aspcore:
	kubectl create namespace aspcore

deploy-argocd:
	helm repo add argo https://argoproj.github.io/argo-helm

#	helm install --values values.yaml argocd argo/argo-cd --namespace aspcore

	helm upgrade --install --values values.yaml argocd argo/argo-cd --namespace aspcore

delete-argocd:
	helm uninstall argocd --namespace aspcore