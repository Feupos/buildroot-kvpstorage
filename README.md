# buildroot-kvpstorage

To build with buildroot, clone buildroot repository in the same directory tree.

Run the commands from the buildroot diractory.

Replace X.Y.Z with the desired release version of the application

```bash
export RELEASE_VERSION=v<X.Y.Z>
make BR2_EXTERNAL=../buildroot-kvpstorage qemu_arm_versatile_kvpstorage_defconfig
make menuconfig
make
```

You can then start the system with

```bash
qemu-system-arm -M versatilepb -kernel output/images/zImage -dtb output/images/versatile-pb.dtb -drive file=output/images/rootfs.ext2,if=scsi -append "root=/dev/sda console=ttyAMA0,115200" -nographic
```
