variable "sample" {
  default = "India"
}
output "sample" {
  value = var.sample
}

output "sample" {
  value = "$(var.sample)"
}