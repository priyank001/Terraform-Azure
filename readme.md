# Terraform-Azure

This project contains Terraform configurations for provisioning and managing Azure cloud resources. It is designed to help automate the deployment of infrastructure on Microsoft Azure using Infrastructure as Code (IaC) best practices.

## Features

- Modular Terraform code for reusable Azure resource provisioning
- Support for multiple environments (dev, staging, prod)
- Version-controlled infrastructure definitions
- Easy customization via variables

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (v1.0 or later)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) (for authentication)
- An active Azure subscription

## Getting Started

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/Terraform-Azure.git
   cd Terraform-Azure
   ```

2. **Authenticate with Azure:**
   ```sh
   az login
   ```

3. **Initialize Terraform:**
   ```sh
   terraform init
   ```

4. **Review and customize variables:**
   - Edit the `variables.tf` file or provide a `terraform.tfvars` file.

5. **Plan the deployment:**
   ```sh
   terraform plan
   ```

6. **Apply the configuration:**
   ```sh
   terraform apply
   ```

## Project Structure

- `main.tf` - Main Terraform configuration file
- `variables.tf` - Input variables definition
- `outputs.tf` - Output values
- `modules/` - Reusable Terraform modules for Azure resources
- `environments/` - Environment-specific configurations

## Best Practices

- Use remote state storage (e.g., Azure Storage Account) for team collaboration.
- Keep sensitive data out of version control.
- Use modules to organize and reuse code.
- Follow Azure naming conventions and tagging policies.

## Documentation

- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Azure Documentation](https://docs.microsoft.com/en-us/azure/)

## License

This project is licensed under the MIT License.
