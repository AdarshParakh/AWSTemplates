# Network CloudFormation Template

This folder contains an AWS CloudFormation template to create a VPC with public and private subnets.

## Resources Created:
- VPC
- Public Subnet
- Private Subnet
- Internet Gateway
- Route Tables (for public and private subnets)

## Prerequisites:
- AWS CLI installed and configured on your machine.

## Deployment:

1. Clone the repository or navigate to the local folder where the `deploy_network.sh` script and `network_stack.yaml` are located.
2. Open your terminal and run the following command:

```bash
./deploy_network.sh
