#!/bin/bash
terraform get
terraform refresh -var-file=local.tfvars -var-file=dev.tfvars
