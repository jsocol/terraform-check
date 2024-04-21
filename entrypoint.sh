#!/bin/sh

set -ex

terraform fmt -check -recursive -diff "$1"
terraform validate "$1"
