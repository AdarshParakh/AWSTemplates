# EC2 CloudFormation Template for LilPaws

This folder contains an AWS CloudFormation template to deploy an EC2 instance with a security group that allows SSH and HTTP access.

## Prerequisites

Before deploying the template, ensure that you have:
- AWS CLI installed and configured on your machine.
- A valid EC2 Key Pair in the region you wish to deploy the instance.
- The correct VPC ID where the EC2 instance will be deployed.

## Deployment

Follow these steps to deploy the EC2 stack:

1. Clone the repository or navigate to the local folder where the `deploy_ec2.sh` script and `ec2_template.yaml` are located.

2. Open your terminal and run the following command:

    ```bash
    ./deploy_ec2.sh
    ```

3. The script will deploy the EC2 instance and create a security group that allows SSH (port 22) and HTTP (port 80) access.

4. After deployment, the script will output the public IP address of the EC2 instance.

## Cleanup

To delete the stack and all associated resources, run:

```bash
aws cloudformation delete-stack --stack-name lilpaws-web-test-ec2 --region us-east-1
