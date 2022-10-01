resource "aws_vpc" "development-vpc"{
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name"="development"
  }
}

resource "aws_subnet" "dev-subnet-1" {
  cidr_block = "10.0.10.0/24"
  vpc_id     = aws_vpc.development-vpc.id
}