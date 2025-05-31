## create a bucket

aws s3 mb s3://sacheevmetadata

## Create a new file

echo "hello Mars" > hello.txt

## Create a file with metadata

aws s3api put-object --bucket sacheevmetadata --key hello.txt --body hello.txt --metadata planet=mars

## get meta data through ehad object

aws s3api head-object --bucket sacheevmetadata --key hello.txt 
