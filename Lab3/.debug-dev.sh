# Set the subscription
# Removed the ARM SUbscription ID for security reasons

# Set the application/envrionment variables
export TF_VAR_application_name="Priyank-App"
export TF_VAR_environment_name="dev"

# Set the Backend


# Running the Terraform commands
terraform init \
    -backend-config="resource_group_name=rg-Priyank-App-Prod-rg-prod" \
    -backend-config="storage_account_name=steb1mistorage" \
    -backend-config="container_name=tfstate" \
    -backend-config="key=Priyank-App-dev"

terraform $*