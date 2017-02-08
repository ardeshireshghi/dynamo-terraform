#!/bin/bash
resource=$1
source ./set_remote_state.sh
terraform get

if [ -z $resource ]; then
  terraform destroy -var-file=local.tfvars -var-file=prod.tfvars
else
  terraform destroy -var-file=local.tfvars -var-file=prod.tfvars -target=$resource
fi
