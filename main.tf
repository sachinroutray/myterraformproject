provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIASWMLG5DVYTRKFJN7"
  secret_key = "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"
}

resource "aws_instance" "one" {
  ami                    = "ami-06b72b3b2a773be2b"
  instance_type          = "t2.medium"
  key_name               = "terraproject"
  vpc_security_group_ids = [aws_security_group.three.id]
  availability_zone      = "ap-south-1a"
  user_data              = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "hai all this is my website created by terraform infrastructure by sachin in server-1" > /var/www/html/index.html
EOF
  tags = {
    Name = "swiggy-01"
  }
}


resource "aws_instance" "two" {
  ami                    = "ami-06b72b3b2a773be2b"
  instance_type          = "t2.medium"
  key_name               = "terraproject"
  vpc_security_group_ids = [aws_security_group.three.id]
  availability_zone      = "ap-south-1b"
  user_data              = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "hai all this is my website created by terraform infrastructure by sachin in server-2" > /var/www/html/index.html
EOF
  tags = {
    Name = "swiggy-02"
  }
}

