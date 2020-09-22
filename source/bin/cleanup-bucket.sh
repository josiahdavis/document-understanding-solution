# Use this script to delete all DUS buckets after tearing down cloudformation script.
#
# Step 1: Delete cloudformation script (DUSClientStack, DUSStack, DocumentUnderstandingCDKToolkit). CFN will highlight bucket cannot be deleted as it is not empty
# Step 2: Run this script to delete bucket manually
# Step 3: Delete cloudformation script again.

s3list=$(aws s3 ls | cut -d ' ' -f 3 |grep dusstack)
echo ${s3list}

for i in ${s3list}
do
    echo "Deleting ${i}..."
    aws s3 rb "s3://${i}" --force
done

s3cdk=$(aws s3 ls | cut -d ' ' -f 3 |grep documentunderstandingcdktoolkit)

for i in ${s3cdk}
do
    echo "Deleting ${i}..."
    aws s3 rb "s3://${i}" --force