#!/usr/bin/env bash

echo
echo "Pulling s3 data"
echo "---------------"

if [ $# -lt 2 ]
then
    echo "usage: $0 AWS_PROFILE S3_BUCKET"
    exit 1
else
    echo "Using profile '$1'" 
    echo "Using bucket '$2'"   
fi

echo 

mkdir -p ./s3

echo "Copying files from AWS..."
CMD="aws s3 sync --profile=$1 s3://$2/let-them-speak/prod/blacklab/folia.zip ./s3/folia.zip"
# echo $CMD
$CMD

echo "Unzipping folia files"
unzip .s3/folia.zip -d ./s3/lts



