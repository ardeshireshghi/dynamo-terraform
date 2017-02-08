#!/bin/bash
source ./set_remote_state.sh
terraform get
terraform apply -var-file=local.tfvars -var-file=prod.tfvars
