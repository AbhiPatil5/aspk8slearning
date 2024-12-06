create-namespace-wordpress:
	kubectl create namespace wordpress

add-wordpress-helm-repo:
	helm repo add groundhog2k https://groundhog2k.github.io/helm-charts/

install-wordpress-helm:	
#	helm install wordpress-release groundhog2k/wordpress --version=0.8.4
	helm upgrade --install wordpress-release --values wordpressvalues.yaml groundhog2k/wordpress --version=0.8.4 --namespace wordpress

install-wordpress-helm-12:	
	helm upgrade --install wordpress-release --values wordpressvalues.yaml groundhog2k/wordpress --version=0.12.1 --namespace wordpress

uninstall-wordpress-helm:
	helm uninstall wordpress-release



