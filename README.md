# Terraform AWS EC2 Instance Deployment

This repository includes Terraform code for deploying an Amazon EC2 instance and associated resources, as well as a bash script for setting up user authentication on the instance.

## Prerequisites

- Terraform installed on your local machine
- AWS account with necessary permissions to create desired resources
- AWS CLI configured with your AWS credentials

## Infrastructure Overview

The Terraform code creates the following resources:

- **VPC:** A Virtual Private Cloud (VPC) to provide a private network for AWS resources.
- **Subnet:** A subnet within the VPC to divide your network into sub-networks.
- **Internet Gateway:** An Internet Gateway to provide a route for traffic between your VPC and the internet.
- **Route Table:** A Route Table to determine where network traffic is directed.
- **Security Group:** A Security Group to act as a virtual firewall for your EC2 instance, controlling inbound and outbound traffic.
- **EC2 Instance:** An Amazon EC2 instance, which is a virtual server in Amazon's Elastic Compute Cloud (EC2) for running applications on the AWS infrastructure.

The bash script provided is used as user data for the EC2 instance. It checks if it's being run as root, sets a password for the 'ubuntu' user, adds the 'ubuntu' user to the sudo group, enables password authentication for SSH, and restarts the SSH service.

## Usage

1. Clone this repository to your local machine.
2. Navigate to the directory containing the Terraform code.
3. Initialize the Terraform directory using the command `terraform init`.
4. Create an execution plan with `terraform plan`.
5. Apply the plan with `terraform apply`. You will be prompted to confirm the action by typing `yes`.
6. Once the infrastructure is created, you can connect to your EC2 instance.

Remember to run `terraform destroy` when you no longer require these resources to avoid unnecessary AWS charges.

