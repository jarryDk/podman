#!/bin/bash

if [ ! -n $MY_VAULT_PASSWORD ]; then
    echo -n " Please enter the password for ansible vault: "; read -s userPass; export MY_VAULT_PASSWORD=$userPass
else
    echo "MY_VAULT_PASSWORD was already set"
fi

echo "Starting playbook postgress_as_systemd.yml ..."

ansible-playbook postgress_as_systemd.yml -K