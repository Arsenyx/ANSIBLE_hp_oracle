#!/bin/bash
echo "=== virsh: snapshot all vms ==="
for i in $(virsh list --all | awk '(NR>2)' | awk '{print $2}'); do virsh snapshot-create $i; done
virsh list --all

