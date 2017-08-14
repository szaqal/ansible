#!/bin/bash

source commons.sh


echo "Source VM"

read SOURCE_VM

echo "Vm name"

read VM_NAME


set -x

function create_clone {
	virt-clone --auto-clone --original $1 --name $2
}

create_clone $SOURCE_VM $VM_NAME
