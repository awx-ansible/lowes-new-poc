#!/bin/bash
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.24.5/manifests/tigera-operator.yaml
sleep 5
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.24.5/manifests/custom-resources.yaml
