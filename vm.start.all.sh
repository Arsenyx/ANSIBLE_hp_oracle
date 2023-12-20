#!/bin/bash
echo "=== starting all kvm vms that contain the word $1 ==="
#for i in $(virsh list --all | grep $i | awk '{print $2}'); do virsh start $i; done

for i in `virsh list --all|awk '{print $2}'|grep -v Name`; do virsh start $i; done
virsh list --all

