#!/bin/bash

for SERVICES in mesos-slave ionate-iptables; do
    systemctl restart $SERVICES
    systemctl enable $SERVICES
    systemctl status $SERVICES
done
