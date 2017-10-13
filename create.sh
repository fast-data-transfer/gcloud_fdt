#!/bin/bash

# create a list of instances

INSTANCE_LIST=$(echo fdt{1..40})
echo gcloud compute instances create ${INSTANCE_LIST} --async --machine-type=f1-micro --image-family=centos-7 --image-project=centos-cloud --metadata-from-file startup-script=startup-script.sh
