#!/bin/sh

set -e

ROOT="."

echo "Creating folder structure under $ROOT ..."

# Directories
mkdir -p \
  "$ROOT/argocd/bootstrap" \
  "$ROOT/argocd/apps" \
  "$ROOT/argocd/projects" \
  "$ROOT/argocd/helm-values/jenkins" \
  "$ROOT/argocd/helm-values/minio"

# Files
touch \
  "$ROOT/README.md" \
  "$ROOT/argocd/bootstrap/platform-root-app.yaml" \
  "$ROOT/argocd/apps/kustomization.yaml" \
  "$ROOT/argocd/apps/jenkins-dev-app.yaml" \
  "$ROOT/argocd/apps/jenkins-stg-app.yaml" \
  "$ROOT/argocd/apps/jenkins-prd-app.yaml" \
  "$ROOT/argocd/apps/minio-tfstate-app.yaml" \
  "$ROOT/argocd/projects/platform-project.yaml" \
  "$ROOT/argocd/helm-values/jenkins/dev-values.yaml" \
  "$ROOT/argocd/helm-values/jenkins/stg-values.yaml" \
  "$ROOT/argocd/helm-values/jenkins/prd-values.yaml" \
  "$ROOT/argocd/helm-values/minio/tfstate-values.yaml"

echo "✅ platform-gitops structure created successfully."
