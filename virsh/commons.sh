#!/bin/bash

#Bridge interface name
BRIDGE_IFACE_NAME=br0

#Intereface that will be bridged endpoint 

ISO_HOME=/home/malczyk/isos

VM_UBUNTU_INSTALLATION_IMAGE=$ISO_HOME/ubuntu-16.04.2-server-amd64.iso
VM_CENTOS_INSTALLATION_IMAGE=$ISO_HOME/CentOS-7-x86_64-Minimal-1611.iso
VM_CENTOS_6_INSTALLATION_IMAGE=$ISO_HOME/CentOS-6.6-x86_64-minimal.iso

VM_SMALL_MEM=1512
VM_SMALL_CPU_QTY=1
VM_SMALL_DISK=30

#Root dir where VMs are stored
VM_PATH=/opt/libvirt
VM_OS_TYPE=linux
VM_UBUNTU_OS_VARIANT=ubuntu16.04
VM_CENTOS_OS_VARIANT=rhel7
