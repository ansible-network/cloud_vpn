#!/bin/bash

ANSIBLE_ROLES_PATH=../ ansible-playbook -e "@providers.yaml" -e "@vars.yaml" test.yaml
