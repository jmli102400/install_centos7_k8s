# 这里使用yml文件初始化master
cat <<EOF >./kubeadm-config.yaml 
apiVersion: kubeadm.k8s.io/v1beta2 
kind: ClusterConfiguration 
kubernetesVersion: v1.19.10 
imageRepository: registry.cn-hangzhou.aliyuncs.com/google_containers 
controlPlaneEndpoint: "k8s.master:6443" 
networking:   
  serviceSubnet: "10.96.0.0/16"   
  podSubnet: "172.18.0.1/16"   
  dnsDomain: "cluster.local" 
EOF

# 使用上面创建的配置文件，初始化master节点
kubeadm init --config=kubeadm-config.yaml --upload-certs

# 根据执行结果提示，开始配置kubectl
# 这是因为kubectl是完全独立于集群的，它是用来管理集群的，所以在生产中，这个命令一般是状态跳板机或者自己笔记本(mac笔记本)上面的
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
