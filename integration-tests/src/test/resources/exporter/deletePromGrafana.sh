#!/bin/bash -x
# Copyright 2019, Oracle Corporation and/or its affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upload
monitoringExporterDir=$1
domainNS=$2
samplesDir=${monitoringExporterDir}/src/samples/kubernetes/deployments


kubectl delete -f ${samplesDir}/coordinator_${domainNS}.yaml
kubectl delete -f ${samplesDir}/prometheus-deployment.yaml
kubectl delete -f ${samplesDir}/grafana-deployment.yaml
sleep 30

echo "Run the script [deletePromGrafana.sh] ..."