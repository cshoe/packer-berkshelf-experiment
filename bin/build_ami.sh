#!/bin/bash
packer validate ../cookbook/hello-world/packer.json
rm -r ../cookbook/vendor
berks vendor ../cookbook/vendor/cookbooks --berksfile ../cookbook/hello-world/Berksfile
packer build \
    -var "aws_access_key_id=$1" \
    -var "aws_secret_key=$2" \
    -only=amazon-ebs ../cookbook/hello-world/packer.json
