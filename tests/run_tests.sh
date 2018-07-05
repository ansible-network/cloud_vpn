#!/bin/bash

if [ -z $1 ]; then
    ansible-playbook "$1"
else
    ansible-playbook test.yaml
fi
