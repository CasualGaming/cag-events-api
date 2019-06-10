#!/bin/bash

set -e # Exit on error

# Activate venv and deactivate on exit
source manage/activate-venv.sh
trap deactivate EXIT

set -eu # Exit on error and undefined var is error

# Run linter
yamllint openapi.yaml
