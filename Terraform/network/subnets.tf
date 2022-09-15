
resource "aws_subnet" "PublicSubnet1" {
  cidr_block = "10.2.0.0/24"
  availability_zone = "${var.region}a"
  vpc_id = aws_vpc.rolax_vpc.id
  map_public_ip_on_launch = true
  tags = {
    Name = "rolax-resort-public-subnet-1"
  }
}

resource "aws_subnet" "PublicSubnet2" {
  cidr_block = "10.2.1.0/24"
  availability_zone = "${var.region}b"
  vpc_id = aws_vpc.rolax_vpc.id
  map_public_ip_on_launch = true
  tags = {
    Name = "rolax-resort-public-subnet-2"
  }
}

resource "aws_subnet" "PrivateSubnet1" {
  cidr_block = "10.2.2.0/24"
  availability_zone = "${var.region}a"
  vpc_id = aws_vpc.rolax_vpc.id
  map_public_ip_on_launch = false
  tags = {
    Name = "rolax-resort-private-subnet-1"
  }
}

resource "aws_subnet" "PrivateSubnet2" {
  cidr_block = "10.2.3.0/24"
  availability_zone = "${var.region}b"
  vpc_id = aws_vpc.rolax_vpc.id
  map_public_ip_on_launch = false
  tags = {
    Name = "rolax-resort-private-subnet-2"
  }
}