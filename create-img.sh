#!/bin/zsh

filename='ubuntu.qcow2'
if [[ -e $filename ]]; then
    >&2 echo "error: $filename already exists"
    exit 0
fi

qemu-img create -f qcow2 ubuntu.qcow2 50G

exit 0
