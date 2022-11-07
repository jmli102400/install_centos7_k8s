rm -f calico-3.13.1.yaml
wget https://kuboard.cn/install-script/calico/calico-3.13.1.yaml 
kubectl apply -f calico-3.13.1.yaml
