#!/bin/bash

STACK_NAME="lilpaws-network-stack"
TEMPLATE_FILE="network_stack.yaml"
REGION="us-east-1"

# Deploy CloudFormation Stack
aws cloudformation deploy \
  --template-file $TEMPLATE_FILE \
  --stack-name $STACK_NAME \
  --capabilities CAPABILITY_NAMED_IAM \
  --region $REGION

if [ $? -eq 0 ]; then
  echo "Network Stack deployed successfully!"
else
  echo "Network Stack deployment failed!"
fi
