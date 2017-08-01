#!/bin/bash

source commons.sh


function create_snapshot {
  virsh snapshot-create  $1
}

echo "Enter VM name"

read VM_NAME

create_snapshot $VM_NAME
