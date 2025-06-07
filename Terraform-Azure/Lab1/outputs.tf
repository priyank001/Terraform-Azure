# output "birthday" {
#   value = local.birthday
    
# }

# output "Second_birthday" {
#   value = local.birthday
# }

# output "application_name" {
#   value = local.birthday
  
# }

output environment_env {
  value = "${var.environment_env}"
}

output "application_name" {
  value = "${var.application_name}"
}

output "api_key" {
  value     = var.api_key
  sensitive = true
  
}

output "primary_region" {
  value = var.regions[1]
}

output "primary_region_instance_count" {
  value = var.region_instance_count["westus"]
}