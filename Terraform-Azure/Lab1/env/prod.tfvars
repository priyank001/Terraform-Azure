environment_env     = "prod"
application_name    = "Priyank-App - Prod"
instance_count      = 40
regions             = ["eastus", "westus"]
region_instance_count = {
  eastus = 5
  westus = 3
}
region_set         = ["eastus", "westus"]
enabled            = true
api_key            = "your_api_key_here"