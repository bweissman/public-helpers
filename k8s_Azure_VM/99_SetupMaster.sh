#!/bin/sh
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/01_PreReq.sh
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/11_KubeAdm_Master.sh
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/12_Install_AzData.sh
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/13_SetupNFS.sh
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/rbac.yaml
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/local-storage-provisioner.yaml
# Azure CSI

chmod +x *.sh
sudo ./01_PreReq.sh
sudo ./11_KubeAdm_Master.sh
sudo ./12_Install_AzData.sh
sudo ./13_SetupNFS.sh


