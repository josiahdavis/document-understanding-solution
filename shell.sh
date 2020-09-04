
# this is where document is uploaded to
aws s3 ls s3://dusstack-dusstackdocumentss3bucket4tpr87vsjizdz5i-ki2qi1jk3j6d --recursive | grep charles-eaton
aws s3 ls s3://dusstack-dusstackdocumentss3bucket4tpr87vsjizdz5i-ki2qi1jk3j6d --recursive | grep leanne-del-toso

# Other s3 bucket
aws s3 ls s3://dusstack-dusstackcoviddatabucket4tpr87vsjizdz5i9m-1im2qwfvel50c --recursive | grep wiki
aws s3 ls s3://dusstack-dusstackbulkprocessingbucket4tpr87vsjizd-1mzvqomyeec24 --recursive | grep test2
aws s3 ls s3://dusstack-dusstacklogss3bucket4tpr87vsjizdz5i9mvbm-1hfr2n0xbhczk --recursive | grep wiki

# Put into documentDrop to auto process
aws s3 cp /Users/yihyap/Downloads/wiki.valid.raw.pdf s3://dusstack-dusstackbulkprocessingbucket4tpr87vsjizd-1mzvqomyeec24/documentDrop/


# Remove bucket (25 aug)
aws s3 rb s3://documentunderstandingcdktoolkit-stagingbucket-12ilo1bt92jto --force
aws s3 rb s3://dusstack-dusstacksampless3bucket57b4ae62-adnzt9hv9jg4 --force
aws s3 rb s3://dusstack-dusstackclientapps3bucket21682c58-9eodntygbgq5 --force
aws s3 rb s3://dusstack-dusstackbulkprocessingbuckete5027474-18143e6xzxypm --force
aws s3 rb s3://dusstack-dusstackdocumentss3bucket08ed97bd-mr8ebcji0gx7 --force
aws s3 rb s3://dusstack-dusstacklogss3bucketb83f3291-j7bmmayomiu8 --force


