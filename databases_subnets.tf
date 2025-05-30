resource "aws_subnet" "database_subnet_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.96.0/20"
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s-database-subnet-1a", var.project_name)
  }
}

resource "aws_subnet" "database_subnet_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.112.0/20"
  availability_zone = format("%sb", var.region)

  tags = {
    Name = format("%s-database-subnet-1b", var.project_name)
  }
}

resource "aws_subnet" "database_subnet_1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.128.0/20"
  availability_zone = format("%sc", var.region)

  tags = {
    Name = format("%s-database-subnet-1b", var.project_name)
  }
}