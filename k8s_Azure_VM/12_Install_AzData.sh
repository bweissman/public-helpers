#!/bin/bash
set -Eeuo pipefail
apt-get install gnupg ca-certificates curl wget software-properties-common apt-transport-https lsb-release -y
curl -sL https://packages.microsoft.com/keys/microsoft.asc |
gpg --dearmor |
tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null
add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/18.04/prod.list)"
apt-get update
apt-get install -y azdata-cli
apt-get install -y mssql-tools unixodbc-dev
