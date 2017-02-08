#!/bin/bash
source ./set_remote_state.sh
terraform get
terraform plan -var-file=local.tfvars -var-file=prod.tfvars
