#!/bin/bash

s3Bucket="processorlambda$RANDOM"
zipFilename="processor@lambda.zip"

./build.sh $s3Bucket $zipFilename
./deploy.sh $s3Bucket $zipFilename
