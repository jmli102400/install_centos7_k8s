# install_centos7_k8s

介绍如何在centos7中部署k8s集群。

- docker.sh: 用来安装docker和docker-compose，需要在所有的节点上面执行
- install_k8s.sh: 用来安装k8s服务，包括kubeadm、kubelet、kubectl，也需要在所有的节点上面执行
- init_k8s.sh: 用来初始化master节点，注意主机名的变化，这个脚本只在master上面执行
- network.sh: 用来安装calico网络插件，只需要在master节点上面执行
