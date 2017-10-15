#!/bin/bash

# create a list of instances

#INSTANCE_TYPE=f1-micro
INSTANCE_TYPE=n1-standard-4

INSTANCE_LIST=$(echo fdt{1..40})
echo gcloud compute instances create ${INSTANCE_LIST} --async --machine-type=${INSTANCE_TYPE} --image-family=centos-7 --image-project=centos-cloud --metadata-from-file startup-script=startup-script.sh
