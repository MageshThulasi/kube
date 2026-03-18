# Step 1
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
helm repo ls

# Step 2
helm search repo argo

# Step 3
helm template argocd argo/argo-cd --version 7.7.3 -n argocd --set crds.install=false > ~/argo-helmtemplate.yaml
kubectl apply -f ~/argo-helmtemplate.yaml
