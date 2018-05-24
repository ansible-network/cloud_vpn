#!/bin/bash

ANSIBLE_ROLES_PATH=../ ansible-playbook -e "@vars.yaml" -e "@secrets.yaml" test.yaml -vvv
