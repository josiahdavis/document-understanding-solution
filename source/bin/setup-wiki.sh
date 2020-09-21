#!/bin/bash

covidbucket=$(aws s3 ls | cut -d ' ' -f 3 |grep coviddatabucket)
kendraFolder="s3://${covidbucket}/documents/Wiki"
echo "Kendra folder: ${kendraFolder}"

# Copy full wiki data to S3, this process take about 5 minutes
time aws s3 cp ../samples/Wiki ${kendraFolder} --recursive