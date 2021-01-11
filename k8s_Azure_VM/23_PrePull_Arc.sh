#!/bin/bash
set -Eeuo pipefail
export DOCKER_REGISTRY="mcr.microsoft.com"
export DOCKER_REPOSITORY="mssql/bdc"
export ARCDOCKER_TAG="public-preview-dec-2020"
ARCIMAGES=(
	arc-sqlmi
	arc-controller
	arc-monitor-fluentbit
	arc-monitor-telegraf
	arc-monitor-collectd      
	arc-postgres-12
	arc-server-controller
	arc-service-proxy
	arc-bootstrapper
	arc-control-watchdog
	arc-monitor-kibana
	arc-monitor-elasticsearch
	arc-monitor-grafana
	arc-monitor-influxdb            
)
for arcimage in "${ARCIMAGES[@]}";
do
    docker pull $DOCKER_REGISTRY/arcdata/$arcimage:$ARCDOCKER_TAG
done

