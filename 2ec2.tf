#launch 2 ec2 instances

provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0866a3c8686eaeeba"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    count = 2
     tags = {
    Name = "HelloWorld-${count.index+1}"
     }


