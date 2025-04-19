#!/bin/bash

kubectl create rolebinding smart-home-developer --role=smart-home-developer --user=user1

kubectl create clusterrolebinding cluster-admin --clusterrole=cluster-admin --user=user2 --user=user3
kubectl create clusterrolebinding cluster-secret --clusterrole=cluster-secret --user=user3