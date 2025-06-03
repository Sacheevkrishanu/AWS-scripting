# Create Website 1

## Create a bucket

```sh
aws s3 mb s3://sacheevweb
```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket sacheevweb \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy

```sh
aws s3api put-bucket-policy --bucket sacheevweb --policy file://bucket-policy.json
```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket sacheevweb --website-configuration file://website.json
```

## Upload our index.html file and include a resource that would be cross-origin

aws s3 cp index.html s3://sacheevweb

## View the website and see if the index.html is there.


It this for ca-central-1
http://sacheevweb.s3-website.ca-central-1.amazonaws.com

Other regions might ue a hyphen instead
http://sacheevweb.s3-website-us-east-1.amazonaws.com


# Create Website 2

```sh

aws s3 mb s3://sacheevweb2

```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket sacheevweb2 \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy

```sh

aws s3api put-bucket-policy --bucket sacheevweb2 --policy file://bucket-policy2.json


```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket sacheevweb2 --website-configuration file://website.json
```

## Upload our javascript file

aws s3 cp hello.js s3://sacheevweb2

## Create API Gateway with mock response and then test the endpoint


curl -X POST -H "Content-Type: application/json" https://1x8jilwgce.execute-api.us-east-1.amazonaws.com/prod/hello



## Set CORS on our bucket

aws s3api put-bucket-cors --bucket sacheevweb --cors-configuration file://cors.json