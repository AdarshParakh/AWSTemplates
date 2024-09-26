#!/bin/bash

STACK_NAME="lilpaws-web-test-s3"
TEMPLATE_FILE="lilpawswebtests3.yaml"

# Deploy the CloudFormation stack
aws cloudformation deploy \
  --template-file $TEMPLATE_FILE \
  --stack-name $STACK_NAME \
  --capabilities CAPABILITY_NAMED_IAM \
  --region us-east-1

if [ $? -eq 0 ]; then
  echo "LilPaws S3 Stack deployed successfully!"
else
  echo "Stack deployment failed!"
fi
