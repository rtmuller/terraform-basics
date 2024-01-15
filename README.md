# Terraform Basics

This project uses Terraform to provision and manage resources on AWS. The main components of the project are as follows:

1. `main.tf`: This file contains the main resource definitions for the project. It creates an AWS instance with the specified AMI and instance type. The instance is tagged with the name provided in the `vm_name` variable and a `Terraform` tag.

2. `backend.tf`: This file configures the backend for Terraform. In this project, we are using the local backend.

3. `provider.tf`: This file configures the AWS provider for Terraform. It specifies the required version of the provider and sets the region and profile to be used.

4. `variables.tf`: This file defines the variables used in the project. It includes the `region` and `vm_name` variables, with default values of `us-east-1` and `vm01` respectively.

5. `.gitignore`: This file specifies the files and directories that should be ignored by Git. It includes local `.terraform` directories and `.tfstate` files.

To use this project, you will need to have Terraform installed and an AWS account. You may need to adjust the `region` and `vm_name` variables to suit your needs.

Please note that this project is a basic example of using Terraform with AWS and may not be suitable for production use without further modifications.
