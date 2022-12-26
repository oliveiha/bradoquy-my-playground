#!/bin/bash

## install
helm repo add jenkins https://charts.jenkins.io

## Pull jenkins chart
helm pull --untar jenkins/jenkins

## for minikube pv create
kubectl apply -f pv.yml -n jenkins 

## deploy jenkins
helm upgrade --install jenkins -f values.yaml /jenkins/ -n jenkins --create-namespace
