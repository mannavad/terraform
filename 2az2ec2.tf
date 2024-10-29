#creating 2 instances at two az with help of alaias

provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  provider = aws.us-east-1
}
  

resource "aws_instance" "example2" {
  ami = "ami-04dd23e62ed049936"
  instance_type = "t2.micro"
  provider = aws.us-west-2
  
}
