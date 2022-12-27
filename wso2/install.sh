#!/bin/bash

## add repo
helm repo add wso2 https://helm.wso2.com && helm repo update

## install
helm install wso2 wso2/am-single-node --version 4.1.0-1 --namespace wso2 --create-namespace