#!/bin/bash
mkdir /home/precon/.kube
echo y | pscp -pw Passw0rdPassw0rd -l precon 10.10.1.4:/home/precon/.kube/config /home/precon/.kube
pscp -pw Passw0rdPassw0rd -l precon 10.10.1.4:/home/precon/agent_join.sh 31_Agent_join.sh
chmod +x 31_Agent_join.sh
./31_Agent_join.sh
chown 1000:1000 /home/precon/.kube/config