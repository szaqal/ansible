#!/bin/bash

source commons.sh

set -x

function create_vm {
virt-install \
--virt-type kvm \
--name $1 \
--ram ${VM_SMALL_MEM} \
--vcpus ${VM_SMALL_CPU_QTY} \
--network bridge=${BRIDGE_IFACE_NAME} \
--cdrom ${VM_CENTOS_INSTALLATION_IMAGE} \
--disk path=${VM_PATH}/$1,size=${VM_SMALL_DISK} \
--graphics vnc \
--os-type ${VM_OS_TYPE} \
--os-variant ${VM_CENTOS_OS_VARIANT} \
}


echo "Enter vm name"

read VM_NAME

create_vm $VM_NAME;
