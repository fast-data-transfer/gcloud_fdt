#!/bin/bash

# list IPs of instances

gcloud compute instances list | awk '{print $1,$5}' | sed '1d' 
