resource "aws_s3_bucket" "example" {
    bucket = "sacheevterra"



    tags = {
        Name = "My bucket"
        Environment = "Dev"
    }
}