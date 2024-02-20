resource "aws_s3_bucket" "b" {
  bucket = "mrsachin12345"
  acl    = "public"


  versioning {
    enabled = true
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = 40
  tags = {
    Name = "sachin-ebs"
  }
}
