output "first_block" {
  value = [for i in var.vkvishnu:i]
}

output "second_block" {
  value = [for n in var.var_vpc:n]
}