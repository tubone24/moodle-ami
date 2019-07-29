ENV = dev
TARGET = $2
BRANCH = $4
CD = cd packer/
REGION = ap-northeast-1
PROFILE = aws-training

PACKER_KEY_LOCATION = s3://aws-training-keypair-packer/
PACKER_KEY_NAME = packer.pem

get-keypair:
	aws s3 cp ${PACKER_KEY_LOCATION}${PACKER_KEY_NAME} . --profile ${PROFILE}

validate:
	@${CD} && \
		packer validate \
		-var-file=env-${ENV}-variables.json \
		-var-file=role-${TARGET}-variables.json \
		-var 'aws_key_file=$(CURDIR)/${PACKER_KEY_NAME}' \
		-var 'aws_profile=${PROFILE}' \
		ami-template.json

create-ami:
	@${CD} && \
		env AWS_PROFILE=${PROFILE} packer build \
		-var-file=env-${ENV}-variables.json \
		-var-file=role-${TARGET}-variables.json \
		-on-error=ask \
		-var 'aws_key_file=$(CURDIR)/${PACKER_KEY_NAME}' \
		-var 'aws_profile=${PROFILE}' \
		ami-template.json

init-vagrant:
	vagrant halt && vagrant destroy -f && vagrant up --provision && vagrant sandbox on
	if [ $? -gt 0 ]; then\
      vagrant vbguest && vagrant up && vagrant sandbox on \
    fi

test-local:
	@${CD} && \
		packer build -var-file=env-local-variables.json \
		-var-file=role-${TARGET}-variables.json \
		-var 'ssh_key=$(CURDIR)/.vagrant/machines/default/virtualbox/private_key' \
		ami-local-template.json
