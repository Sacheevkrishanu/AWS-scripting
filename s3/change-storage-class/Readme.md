## Create a bucket

aws s3 mb s3://sacheevclass

## Create a file

echo "hello world" > hello.txt
aws s3 cp hello.txt s3://sacheevclass

## Changing storage class

aws s3 cp hello.txt s3://sacheevclass --storage-class STANDARD_IA

## Clean up

aws s3 rm s3://sacheevclass/hello.txt
aws s3 rb s3://sacheevclass

