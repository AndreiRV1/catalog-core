#!/bin/bash
sudo qemu-system-x86_64 \
    -nographic \
    -m 128 \
    -cpu max \
    -netdev bridge,id=en0,br=virbr0 -device virtio-net-pci,netdev=en0 \
    -append "elfloader_qemu-x86_64 netdev.ip=172.44.0.2/24:172.44.0.1::: vfs.fstab=[ \"initrd0:/:extract::ramfs=1:\" ] -- /usr/bin/nginx" \
    -kernel workdir/build/elfloader_qemu-x86_64 \
    -initrd ./initrd.cpio
