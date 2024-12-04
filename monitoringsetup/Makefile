# https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/README.md
# helm search repo
# helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
# helm repo remove  prometheus-community
# helm list -A


create-namespace-aspmonitoring:
	kubectl create namespace aspmonitoring

deploy-prometheus:
#   helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
	helm upgrade --install prometheus --values values.yaml  prometheus-community/kube-prometheus-stack --namespace aspmonitoring

delete-prometheus:
	helm uninstall prometheus
	kubectl delete crd alertmanagerconfigs.monitoring.coreos.com
	kubectl delete crd alertmanagers.monitoring.coreos.com
	kubectl delete crd podmonitors.monitoring.coreos.com
	kubectl delete crd probes.monitoring.coreos.com
	kubectl delete crd prometheusagents.monitoring.coreos.com
	kubectl delete crd prometheuses.monitoring.coreos.com
	kubectl delete crd prometheusrules.monitoring.coreos.com
	kubectl delete crd scrapeconfigs.monitoring.coreos.com
	kubectl delete crd servicemonitors.monitoring.coreos.com
	kubectl delete crd thanosrulers.monitoring.coreos.com