#!/bin/bash

# Define the base and overlay directories
BASE_DIR="base"
OVERLAY_DIR="overlays"
ENVIRONMENTS=("dev" "prod")

# Create the base directory and files
mkdir -p $BASE_DIR
cat <<EOF > $BASE_DIR/kustomization.yaml
resources:
  - deployment.yaml
  - service.yaml
  - ingress.yaml
EOF

# Create dummy deployment and service files
cat <<EOF > $BASE_DIR/deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app
  namespace: kustmyapp
spec:
  replicas: 1
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
      - name: my-app
        image: nginx
EOF

cat <<EOF > $BASE_DIR/service.yaml
apiVersion: v1
kind: Service
metadata:
  name: my-app
  namespace: kustmyapp
spec:
  selector:
    app: my-app
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
EOF

# Create an Ingress resource
cat <<EOF > $BASE_DIR/ingress.yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: my-app-ingress
  namespace: kustmyapp
spec:
  rules:
  - host: myapp.example.com
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: my-app
            port:
              number: 80
EOF

# Create overlay directories and files for each environment
for ENV in "${ENVIRONMENTS[@]}"; do
  mkdir -p $OVERLAY_DIR/$ENV
  cat <<EOF > $OVERLAY_DIR/$ENV/kustomization.yaml
resources:
  - ../../base
patchesJson6902:
  - target:
      group: apps
      version: v1
      kind: Deployment
      name: my-app
    path: deployment-patch.yaml
EOF

  cat <<EOF > $OVERLAY_DIR/$ENV/deployment-patch.yaml
- op: replace
  path: /spec/replicas
  value: 2
EOF
done

echo "Kustomize directories and files have been created."