install-ingress:
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml --namespace ingress-nginx
test.ingress: 
	kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml --namespace ingress-nginx