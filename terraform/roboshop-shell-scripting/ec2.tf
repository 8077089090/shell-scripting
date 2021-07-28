resource "aws_spot_instance_request" "terraforminstance" {
  ami                    = "ami-074df373d6bafa625"
  count                  =length(var.COMPONENTS)
  instance_type          = "t3.micro"
  spot_price             = "0.0031"
  wait_for_fulfillment   = true


  tags                   = {
    Name                 =element(var.COMPONENTS, count.index)
  }
}
resource "aws_ec2_tag" "nametag" {
  count = length(var.COMPONENTS)
  resource_id = element(aws_spot_instance_request.terraforminstance.*.spot_instance_id, count.index)
  key         = "Name"
  value       = element(var.COMPONENTS, count.index )
}