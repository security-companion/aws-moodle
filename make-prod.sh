#/bin/sh

aws cloudformation deploy --template-file templates/00-master.yaml --stack-name moodle-prod --parameter-overrides file://parameters.json --capabilities CAPABILITY_NAMED_IAM --disable-rollback --notification-arns arn:aws:sns:eu-west-2:431219440852:test
#aws cloudformation deploy --template-file templates/00-master.yaml --stack-name moodle-prod --parameter-overrides file://parameters.json --capabilities CAPABILITY_NAMED_IAM --notification-arns arn:aws:sns:eu-west-2:431219440852:test --force-upload
aws cloudformation describe-stack-events --stack-name moodle-prod --output json > results.json
