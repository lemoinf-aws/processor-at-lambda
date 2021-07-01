#!/bin/bash

s3Bucket=$1
s3Uri="s3://$s3Bucket"
aws s3 mb $s3Uri

zipFilename=$2
zip $zipFilename ../*.py
aws s3 cp $zipFilename $s3Uri
