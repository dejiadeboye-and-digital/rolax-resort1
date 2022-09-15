
# Create a VPC
resource "aws_vpc" "rolax_vpc" {
  cidr_block = "10.2.0.0/16"
  tags = {
    Name = "rolax-resort"
  }
}

output "vpc_id" {
    value = aws_vpc.rolax_vpc.id
}