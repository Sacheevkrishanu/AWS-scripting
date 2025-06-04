## Create a bucket

aws s3 mb s3://sacheevclient


### Run our our SDK ruby script

bundle exec ruby encrypt.rb


# Cleanup 

aws s3 rm s3://sacheevclient/hello.txt
aws s3 rb s3://sacheevclient