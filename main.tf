# Resource for count loop
resource "aws_instance" "web_first" {
    count= length(var.vkvishnu)
    ami  = var.ami[count.index]
    instance_type = "t2.micro"
    tags = {
      Name = var.vkvishnu[count.index],
      Owner= "vishnu"
  }
}   


# Resource  , for_each loop used for map
resource "aws_instance" "web_second" {  
    for_each = var.MAP
    ami  = each.value.ami
    instance_type = each.value.instance_type
    tags = {
      Name = each.value.name
      Owner= each.key
  }
}

# Resource  , for_each loop used for nestedmap
resource "aws_instance" "web_third" {   
    for_each = var.NestedMAP
    ami  = each.value.ami.ami
    instance_type = each.value.instance_type
    tags = {
      Name = each.value.name
      Owner= each.key
  }
}

# resource, aws_vpc
resource "aws_vpc" "web_fourth" {
  cidr_block  = "10.0.0.0/24"
  for_each    =  var.var_vpc
  instance_tenancy = "default"

  tags = {
    name =each.value,
    owner=each.key
  }
}

# resource, Volume
resource "aws_ebs_volume" "web_fifth" {
  for_each = toset(var.vol_var)
  availability_zone = "ap-south-1a"
  size              = 32

  tags = {
    owner = "visnu_vol",
    name = each.key
  }
}