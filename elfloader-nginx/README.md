# Unikraft ELF Loader (NGINX)

Build and run the [Unikraft ELF Loader](https://github.com/unikraft/app-elfloader) with NGINX.
The ELF Loader uses the [Unikraft binary-compatibility layer](https://unikraft.org/docs/concepts/compatibility) in order to run native Linux binaries (ELFs) with Unikraft.

## Set Up

Set up the required repositories using the `setup.sh` script:

```console
./setup.sh
```

## Configure

To configure the kernel, use:

```console
make menuconfig
```

In the console menu interface chose the platform (KVM/QEMU or KVM/Firecracker).

## Build and Run

To build the image and start it, use the provided scripts in `.scripts/` directory:

```console
./.scripts/build.sh
./.scripts/run.sh
```

These scripts will build the `initrd.cpio` containing the extracted root filesystem using the Dockerfile, build the unikernel, and boot it using QEMU.
