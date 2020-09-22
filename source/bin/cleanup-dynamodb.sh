# Clean up dynamodb after cloudformation script is destroy

ddbtables=$(aws dynamodb list-tables |jq -r ."TableNames[]")

for i in ${ddbtables}
do
    echo ${i}
    aws dynamodb delete-table --table-name ${i}
done

