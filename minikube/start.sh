#!/bin/bash

## set disk size
minikube config set disk-size 50GB

## Start
minikube start --driver=virtualbox --disk-size 40GB

## Install addons
minikube addons enable storage-provisioner-gluster
minikube addons enable ingress
minikube addons enable ingress-dns