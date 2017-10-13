#!/bin/bash

gcloud compute instances list | awk '{print $1,$2,$3,$4,$6}' | sed '1d' 
