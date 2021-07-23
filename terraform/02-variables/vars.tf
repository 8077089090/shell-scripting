variable "sample" {
  default = "India"
}
output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample
}
output "sample2" {
  value = "${var.sample} - From chandu"
}
// in above third case From chandu is a string added to variable , in that case we need to follow "${ } - string " this syntax