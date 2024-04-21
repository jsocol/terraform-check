#!/bin/sh

set -ex

terraform fmt -check -recursive -diff "$1"
terraform init
terraform validate "$1"
