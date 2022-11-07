# install_centos7_k8s

介绍如何在centos7中部署k8s集群。

- install_docker.sh: 用来安装docker和docker-compose，最先执行，需要在所有的节点上面执行
- install_k8s.sh: 用来安装k8s服务，包括kubeadm、kubelet、kubectl，第二个执行，也需要在所有的节点上面执行
- init_k8s.sh: 用来初始化master节点，注意主机名的变化，在上面脚本都完成之后，再只在master上面该脚本执行
- network.sh: 用来安装calico网络插件，只需要在master节点上面执行
