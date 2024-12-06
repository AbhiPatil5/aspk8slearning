deploy-wordpress:
	kubectl apply -f wordpressnamespace.yaml
	kubectl apply -f mysql-secret.yaml
	kubectl apply -f mysql-pv-pvc.yaml
	kubectl apply -f mysql-statefulset.yaml
	kubectl apply -f mysql-service.yaml
	kubectl apply -f wordpress-pv-pvc.yaml
	kubectl apply -f wordpress-deployment.yaml

patch-pvpvc:
	kubectl patch pvc -n wordpress mysql-pvc -p '{"metadata": {"finalizers": null}}'
	kubectl patch pv -n wordpress mysql-pv  -p '{"metadata": {"finalizers": null}}'
	kubectl patch pvc -n wordpress wordpress-pvc -p '{"metadata": {"finalizers": null}}'
	kubectl patch pv -n wordpress wordpress-pv -p '{"metadata": {"finalizers": null}}'

delete-wordpress:
	kubectl delete pvc -n wordpress mysql-pvc	
	kubectl delete pv -n wordpress mysql-pv --grace-period=0 --force	
	kubectl delete pvc -n wordpress wordpress-pvc	
	kubectl delete pv -n wordpress wordpress-pv --grace-period=0 --force
	kubectl delete Secret -n wordpress mysql-secret
	kubectl delete Service -n wordpress mysql-service
	kubectl delete StatefulSet -n wordpress mysql
	kubectl delete Deployment -n wordpress wordpress
	kubectl delete namespace wordpress

