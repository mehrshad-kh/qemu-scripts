#!/bin/zsh

# -smp: number of processor cores
# -cdrom: ISO file
# -drive: hard disk file
# if: interface
# q35 is the latest machine type.
qemu-system-x86_64 \
    -m 6G \
    -vga virtio \
    -display default,show-cursor=on \
    -usb \
    -device usb-tablet \
    -smp 2 \
    -cdrom ubuntu.iso \
    -drive file=ubuntu.qcow2,if=virtio \
    -cpu host \
    -machine type=q35,accel=hvf
