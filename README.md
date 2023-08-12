# TF-Project# 

This is  my personal project where I practice my IaC with Terraform.

This repository contains Terraform code to create an AWS Virtual Private Cloud (VPC) infrastructure. The code deploys a VPC, subnets (both private and public), route tables, internet gateways, NAT gateway, security groups, and SSH key pair. This infrastructure provides a foundation for hosting resources securely within an isolated network environment on AWS.

Prerequisites
Terraform installed on your local machine.
AWS account credentials configured for Terraform to use.

Components
AWS Provider Configuration
The AWS provider is configured with the desired region for resource deployment.

VPC Configuration
The VPC resource is defined with the specified CIDR block and associated tags.

Subnets
Private and public subnets are created based on the provided subnet configuration. These subnets are associated with their respective route tables.

Route Tables
Separate route tables are created for public and private subnets. The public route table is associated with the internet gateway, while the private route table is associated with the NAT gateway.

Internet Gateway
An internet gateway is created and associated with the VPC to allow resources in public subnets to communicate with the internet.

NAT Gateway
A NAT gateway is deployed in a public subnet to enable private subnet instances to initiate outbound traffic to the internet while remaining private.

Security Groups
Two security groups are created: ingress-ssh allows SSH access to instances and vpc-web allows web traffic on ports 80 and 443.

SSH Key Pair
An SSH key pair is generated and stored locally as MyAWSKey.pem.

Customization
Modify the variables.tf file to adjust the VPC settings, subnet configurations, and other parameters according to your requirements.

Note
Make sure to manage your AWS credentials securely, preferably by using environment variables or a credential file.
Be cautious when exposing services to the public internet. Security groups and network ACLs should be configured carefully to ensure proper access control.

=====================================================

Terraform Command used in this project are:

Initialize Terraform:
--> terraform init

Formating Terraform
--> terraform  validate

Deploy the infrastructure by executing the following commands:
terraform plan
terraform apply

To destroy the infrastructure when no longer needed, run:
terraform destroy
