variable "sample" {
  default = "India"
}
output "sample" {
  value = var.sample
}

output "sample1" {
  value = "${var.sample}"
}