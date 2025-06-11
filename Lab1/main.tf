resource "random_string" "password" {
  length  = 8
  special = false
  upper = false
}

locals {  
  birthday       = "2024-01-01"
  project_name = "${var.application_name}-${var.environment_env}"
}