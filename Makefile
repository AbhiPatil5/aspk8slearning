create kind cluster:
	kind create cluster --name asptest --config sampleaspcluster.yaml

deploy ingress controller:
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

delete kind cluster:
	kind delete cluster --name=asptest
