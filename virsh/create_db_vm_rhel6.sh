#!/bin/bash

source commons.sh

#set -x

function create_vm {
virt-install \
--virt-type kvm \
--name $1 \
--ram 8192 \
--vcpus 2 \
--network bridge=br0 \
--cdrom ${VM_CENTOS_6_INSTALLATION_IMAGE} \
--disk path=${GM_PATH}/$1,size=100  \
--os-type linux \
--os-variant rhel6 
}

echo "Enter vm name";

read VM_NAME

create_vm $VM_NAME
