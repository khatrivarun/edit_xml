#!/bin/bash
ansible-playbook -vvvv -i inventory xml_process.yaml --extra-vars '@vars.json'
