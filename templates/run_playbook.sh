#!/bin/bash

cd project
ANSIBLE_HOST_KEY_CHECKING=False ANSIBLE_PERSISTENT_COMMAND_TIMEOUT=60 ansible-playbook -i ../inventory playbook.yaml -vvv
