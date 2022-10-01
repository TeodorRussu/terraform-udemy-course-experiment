resource "aws_vpc" "development-vpc"{
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name"="development"
  }
}

resource "aws_subnet" "dev-subnet-1" {
  cidr_block = "10.0.10.0/24"
  vpc_id     = aws_vpc.development-vpc.id
  tags = {
    "Name"="development-subnet-1"
  }
}

output "development-vpc-arn"{
  value = aws_vpc.development-vpc.arn
}

output "development-subnet-1-arn"{
  value = aws_subnet.dev-subnet-1.arn
}

