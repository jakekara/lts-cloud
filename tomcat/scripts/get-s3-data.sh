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

## This doesn't work when I encapsulate the command
## as a string, even when I escape the include/exclude
## quotation marks. For now I'm just running the command
## directly, without storing it in a string

# CMD="aws s3 sync --profile=$1 \
#     s3://$2/let-them-speak/prod/blacklab/ ./s3/ \
#     --dryrun \
#     --exclude \"*\" --include \"*folia.zip\" \
#     "
# echo $CMD

# This version works
aws s3 sync --profile=$1 \
    s3://$2/let-them-speak/prod/blacklab/ ./s3/ \
    --exclude "*" --include "*folia.zip" \

# This happens in the image.
# echo "Unzipping folia files"
# unzip ./s3/folia.zip -d ./s3/lts



