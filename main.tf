module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.ec2_instance_name

  instance_type = "t3.micro"
  key_name      = var.key_name
  monitoring    = true
  subnet_id     = "subnet-0e9d8ffc4dc0398ad"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}