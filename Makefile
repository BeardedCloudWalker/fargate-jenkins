.SHELL := /bin/bash
PLAN=.terraform/fargate-jenkins.tfplan 

default: help

init: 
	terraform init \
	-backend-config="region=us-west-2" \
	-backend-config="bucket=jw-aws-terraform-state-us-west-2" \
	-backend-config="key=terraform/jenkins-fargate/terraform.tfstate"

plan:
	terraform plan \
	-var-file=terraform.tfvars \
	-out $(PLAN)

apply: plan
	terraform apply $(PLAN)

destroy:
	terraform destroy

clean:
	rm -rf .terraform