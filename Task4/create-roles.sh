#!/bin/bash

kubectl create namespace smart-home
kubectl create role smart-home-developer --verb=get,list,watch --resource=pods,services,deployments,configmaps --namespace=smart-home

kubectl create clusterrole cluster-secret --verb=get,list,watch,create,update,patch,delete --resource=secrets
kubectl create clusterrole cluster-admin --verb=get,list,watch,create,update,patch,delete --resource=pods,services,deployments,configmaps

