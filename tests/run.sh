#!/bin/bash

ANSIBLE_ROLES_PATH=../../ ansible-playbook test.yaml -e "@vars.yaml" -e "@secrets.yaml" -vvv
