#!/bin/bash
INSTALL_DIR="/app/vendor/awscli"
chmod +x /app/vendor/awscli-bundle/install
/app/vendor/awscli-bundle/install -i $INSTALL_DIR
chmod u+x $INSTALL_DIR/bin/aws

export PATH=~/vendor/awscli/bin:$PATH

mkdir ~/.aws

cat >> ~/.aws/credentials << EOF
[default]
aws_access_key_id = $AWS_KEY
aws_secret_access_key = $AWS_SECRET_KEY
EOF

cat >> ~/.aws/config << EOF
[default]
region = $AWS_REGION
EOF
