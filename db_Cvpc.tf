provider "aws" {
    region = "us-east-1"
}
data "aws_subnet_ids" "example" {
  vpc_id = "vpc-0086218496a761216"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = "custome_db_subnet"    # specially created under the RDS with multi AZ 
 }