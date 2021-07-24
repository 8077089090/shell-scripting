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


variable "string" {
  default = "Hello"
}

variable "number" {
  default = 10
}

variable "boolean" {
  default = false
}

output "data-types" {
  value = "String = ${var.string} , Number = ${var.number} , Boolean = ${var.boolean}"
}

variable "TRAINING" {
  default = "DevOps"
}

variable "TRAININGS" {
  default = [ "DevOps", "AWS" ]
}

variable "TRAINING-DETAILS" {
  default = {
    AWS = "6AM EST"
    DEVOPS = "8AM EST"
  }
}

output "TRAINING" {
  value = var.TRAINING
}

output "FIRST-TRAINING" {
  value = var.TRAININGS[0]
}

output "SECOND-TRAINING" {
  value = var.TRAININGS[1]
}

output "TRAINING-DETAILS" {
  value = "AWS TIMING - ${var.TRAINING-DETAILS["AWS"]} , DEVOPS TIMING - ${var.TRAINING-DETAILS ["DEVOPS"]}"
}

output "TRAININGS" {
  value = var.TRAININGS
}

// data comes from different sources
// Variables from tfvars

variable "FRUITS" {}

output "FRUITS" {
  value = var.FRUITS
}

variable "COUNTRY" {}
output "COUNTRY" {
  value = var.COUNTRY
}

variable "SEASON" {}
output "SEASON" {
  value = var.SEASON
}