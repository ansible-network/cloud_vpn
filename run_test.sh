#!/bin/bash

ANSIBLE_ROLES_PATH=../ ansible-playbook -e "@vars.yaml" test.yaml -vvv
