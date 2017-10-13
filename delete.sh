#!/bin/bash

# delete a list of instances

INSTANCE_LIST=$(echo fdt{1..2})
gcloud compute instances delete  $INSTANCE_LIST
