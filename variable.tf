variable "vkvishnu" {
  type=list(string)
  description = "pass value for variable"
}
variable "ami" {
  type=list(string)
  description = "pass value"
}

# variable for map 
variable "MAP" {
  type = map(any)
  description = "pass map key and values :"
}
# variable for nested map
variable "NestedMAP" {
  type =map(any)
  description = "pass value for nested map"
}

# variable for vpc resource
variable "var_vpc" {
  type=map(any)
  description = "pass value for var_vpc variable"
}

# variable for volume resource
variable "vol_var" {
  type=set(any)
  description = "pass value for vol_var variable"
}