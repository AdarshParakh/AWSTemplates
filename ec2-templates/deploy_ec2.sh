#!/bin/bash

STACK_NAME="lilpaws-web-test-ec2"
TEMPLATE_FILE="ec2_template.yaml"
REGION="us-east-1"

# Deploy CloudFormation Stack
aws cloudformation deploy \
  --template-file $TEMPLATE_FILE \
  --stack-name $STACK_NAME \
  --capabilities CAPABILITY_NAMED_IAM \
  --region $REGION

if [ $? -eq 0 ]; then
  echo "EC2 Stack deployed successfully!"
else
  echo "EC2 Stack deployment failed!"
fi
