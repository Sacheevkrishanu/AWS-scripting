## Create a new bucket

```sh
aws s3api create-bucket --bucket aclsacheev --region us-east-1
```

## Turn of Block Public Access for ACLs

```sh
aws s3api put-public-access-block \
--bucket aclsacheev \
--public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```

```sh
aws s3api get-public-access-block --bucket aclsacheev
```

## Change Bucket Ownership


```sh
aws s3api put-bucket-ownership-controls \
--bucket aclsacheev \
--ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```

## Change ACLs to allow for a user in another AWS Account

```sh
aws s3api put-bucket-acl \
--bucket aclsacheev \
--access-control-policy file:///workspace/AWS-scripting/s3/acls/policy.json
```

## accessing the canonical id on another account( do this in other accounts cloudshell)

aws s3api list-buckets --query Owner.ID --output text 

## Access Bucket from other account

```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://aclsacheev
aws s3 ls s3://aclsacheev
```

## Cleanup

```sh
aws s3 rm s3://aclsacheev/bootcamp.txt
aws s3 rb s3://aclsacheev
```