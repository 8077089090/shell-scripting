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
// Now in below example, we are not giving any value to variable so in this case terraform asks to enter value after execution
variable "test" {}
output "test" {
  value = var.test
}