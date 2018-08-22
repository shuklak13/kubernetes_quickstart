#!/bin/bash
gcloud config set compute/zone us-central1-b
gcloud config set project gentle-studio-213723 
gcloud container clusters create cluster1
gcloud container clusters get-credentials cluster1
kubectl run hello-server --image gcr.io/google-samples/hello-app:1.0 --port 8080
kubectl expose deployment hello-server --type LoadBalancer   --port 80 --target-port 8080
kubectl get service hello-server
