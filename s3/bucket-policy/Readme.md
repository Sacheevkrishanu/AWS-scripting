## Create a bucket

aws s3 mb s3://your-aws-bucket

## Create bucket policy

aws s3api put-bucket-policy --bucket your-aws-bucket --policy file://policy.json

# In the other account access the bucket

touch bootcamp.txt
aws s3 cp bootcamp.txt s3://your-aws-bucket
aws s3 ls s3://your-aws-bucket


## Cleanup

aws s3 rm s3://your-aws-bucket/bootcamp.txt
aws s3 rb s3://your-aws-bucket