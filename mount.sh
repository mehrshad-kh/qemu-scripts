#!/bin/bash
# For use on Linux guest againt a macOS host.

sudo mount -t 9p -o trans=virtio,version=9p2000.L Shared $HOME/qemu/shared/
