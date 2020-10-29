#!/bin/sh 
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/01_PreReq.sh
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/21_setup-volumes-agent.sh
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/22_KubeAdm_JoinAgent.sh
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/23_PrePull.sh
chmod +x *.sh
sudo ./01_PreReq.sh
sudo ./21_setup-volumes-agent.sh
sudo ./22_KubeAdm_JoinAgent.sh
sudo ./23_PrePull.sh