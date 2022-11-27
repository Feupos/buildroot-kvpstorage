# buildroot-kvpstorage

To build with buildroot, clone buildroot repository in the same directory tree.

With menuconfig, enable C++ and boost.

```bash
make qemu_arm_versatile_defconfig
make BR2_EXTERNAL=../buildroot-kvpstorage menuconfig
make
```


You can then start the system with

```bash
qemu-system-arm -M versatilepb -kernel output/images/zImage -dtb output/images/versatile-pb.dtb -drive file=output/images/rootfs.ext2,if=scsi -append "root=/dev/sda console=ttyAMA0,115200" -nographic
```
