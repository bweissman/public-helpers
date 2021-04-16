#!/bin/bash
apt install -y nfs-kernel-server
mkdir -p /mnt/nfs_share
chown -R nobody:nogroup /mnt/nfs_share/
chmod 777 /mnt/nfs_share/
echo '/mnt/nfs_share  10.10.0.0/16(rw,sync,no_subtree_check,no_root_squash)' > exports
chmod 644 exports
mv exports /etc/exports
exportfs -a
systemctl restart nfs-kernel-server
mkdir /mnt/nfs_share/pod
mkdir /mnt/nfs_share/sql1
chmod 777 /mnt/nfs_share/pod
chmod 777 /mnt/nfs_share/sql1
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/nfs.pv.yaml
wget https://raw.githubusercontent.com/bweissman/public-helpers/master/k8s_Azure_VM/nfs.pvc.yaml
kubectl apply -f nfs.pv.yaml
kubectl apply -f nfs.pvc.yaml