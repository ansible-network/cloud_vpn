#!/bin/bash

ANSIBLE_ROLES_PATH=../ ansible-playbook -e "@provider.yaml" -e "@vars.yaml" test.yaml -vvv
