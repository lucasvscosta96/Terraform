//Configure provider

provider "aws"{
    access_key = "AKIATMB4WPJM57CRNCMX" 
    secret_key = "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"
    region     = "us-east-1"
}

resource "aws_s3_bucket" "b" {
    bucket = "first_bucket_terraform"
    acl    = "private"
    tags{
        Name = "MY bucket" 
        Environment = "Dev"
    }
}
