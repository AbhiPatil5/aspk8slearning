install-kind:
	curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
	chmod +x ./kind
	sudo mv ./kind /usr/local/bin/kind

create-kind-cluster:
	kind create cluster --name asptest --config sampleaspcluster.yaml

deploy-ingress-controller:
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

delete-kind-cluster:
	kind delete cluster --name=asptest
