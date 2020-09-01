#!/bin/bash

array=(vm01 vm02 vm03 vm04)

env="prod"
zone="europe-west2-c"

for item in ${array[*]}
do
    gcloud compute instances add-labels $item --labels=env=$env --zone=$zone
done