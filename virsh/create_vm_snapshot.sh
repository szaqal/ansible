#!/bin/bash

source commons.sh


function create_snapshot {
  virsh snapshot-create-as --domain  $1 --name "$2"
}

echo "Enter VM name"

read VM_NAME

echo "Enter snapshot name"

read SNAP_NAME

create_snapshot $VM_NAME $SNAP_NAME

