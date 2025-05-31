## 🔐 S3 Checksums with AWS CLI

This guide demonstrates how to use checksums with S3 to ensure data integrity during uploads.

---

### ✅ Create a New S3 Bucket


aws s3 mb s3://checksums-examples-ab-2342


echo "Hello Mars" > myfile.txt

md5sum myfile.txt
# Output: 8ed2d86f12620cdba4c976ff6651637f  myfile.txt

aws s3 cp myfile.txt s3://checksums-examples-ab-2342

aws s3api head-object \
--bucket checksums-examples-ab-2342 \
--key myfile.txt

bundle exec ruby crc.rb

sha1sum myfile.txt

aws s3api put-object \
--bucket="checksums-examples-ab-2342" \
--key="myfilesha1.txt" \
--body="myfile.txt" \
--checksum-algorithm="SHA1" \
--checksum-sha1="YzI4Y2NjMmM1ZTIxNDAzNjgwNjAxNGRmOWZiNDM2MzRmM2U3NzBiMg=="
