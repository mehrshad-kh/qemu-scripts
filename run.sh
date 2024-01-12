#!/bin/zsh

# -smp: number of processor cores
# -drive: hard disk file
# if: interface
# q35 is the latest machine type.
qemu-system-x86_64 \
    -m 6G \
    -vga virtio \
    -display default,show-cursor=on \
    -usb \
    -device usb-tablet \
    -smp 4 \
    -drive file=ubuntu.qcow2,if=virtio \
    -cpu host \
    -machine type=q35,accel=hvf \
    -virtfs local,path=$HOME/qemu/shared,mount_tag=Shared,security_model=mapped-xattr
