#!/bin/bash
if [ -z "$1" ]; then
  APP_ENV="prod"
else
  APP_ENV=$1
fi

S3_BUCKET="ardi-$APP_ENV-terraform-state"
S3_KEY="$APP_ENV-terraform.tfstate"
AWS_PROFILE="ardi"

terraform remote config \
    -backend=s3 \
    -backend-config="bucket=$S3_BUCKET" \
    -backend-config="key=$S3_KEY" \
    -backend-config="region=eu-west-1" \
    -backend-config="profile=$AWS_PROFILE"

