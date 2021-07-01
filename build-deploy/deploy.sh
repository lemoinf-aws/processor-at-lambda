#!/bin/bash

s3Bucket=$1
zipFilename=$2

stack_name="processor-at-lambda-stack"
aws cloudformation create-stack \
  --stack-name $stack_name \
  --template-body file://./cloud-formation.yaml \
  --parameters \
     ParameterKey=S3BucketParameter,ParameterValue=$s3Bucket \
     ParameterKey=S3KeyCodeZipFileParameter,ParameterValue=$zipFilename \
  --capabilities CAPABILITY_NAMED_IAM
