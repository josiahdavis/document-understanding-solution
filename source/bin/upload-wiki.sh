#!/bin/bash

# This script should be executed after "setup-wiki.sh"
# It will trigger Kendra processing job by moving pdf/policy to bulkprocessing bucket.

covidbucket=$(aws s3 ls | cut -d ' ' -f 3 |grep coviddatabucket)
kendraFolder="s3://${covidbucket}/documents/Wiki"
echo "Kendra source folder: ${kendraFolder}"

bulkprocessbucket=$(aws s3 ls | cut -d ' ' -f 3 |grep bulkprocessingbucket)
bulkFolderDocumentDrop="s3://${bulkprocessbucket}/documentDrop/"
echo "Document drop folder: ${bulkFolderDocumentDrop}"
bulkFolderPolicyDrop="s3://${bulkprocessbucket}/kendraPolicyDrop/"
echo "Policy drop folder: ${bulkFolderPolicyDrop}"

aws s3 sync ${kendraFolder}/pdf/ ${bulkFolderDocumentDrop}
aws s3 sync ${kendraFolder}/policy/ ${bulkFolderPolicyDrop}
