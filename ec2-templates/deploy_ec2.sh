#!/bin/bash

STACK_NAME="lilpaws-web-test-ec2"
TEMPLATE_FILE="ec2_template.yaml"
REGION="us-east-1"

# Read the VPC ID as input
read -p "Enter VPC ID: " VPC_ID

# Deploy CloudFormation Stack with VPC ID parameter
aws cloudformation deploy \
  --template-file $TEMPLATE_FILE \
  --stack-name $STACK_NAME \
  --capabilities CAPABILITY_NAMED_IAM \
  --region $REGION \
  --parameter-overrides VPCID=$VPC_ID

if [ $? -eq 0 ]; then
  echo "EC2 Stack deployed successfully!"
else
  echo "EC2 Stack deployment failed!"
fi
