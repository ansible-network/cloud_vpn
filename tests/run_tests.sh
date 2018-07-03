#!/bin/bash

if [ -z $1 ]; then
    ansible-playbook test.yaml -e "@secrets.yaml"
else
    ansible-playbook test.yaml -e "@$1"
fi
