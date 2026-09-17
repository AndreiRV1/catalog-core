#!/bin/bash
DOCKER_BUILDKIT=1 docker build -o rootfs .
./workdir/unikraft/support/scripts/mkcpio initrd.cpio ./rootfs/
make -j $(nproc)
