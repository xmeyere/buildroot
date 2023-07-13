#!/bin/sh
echo Creating ${BINARIES_DIR}/romfs-x.img
mkimage -A arm -O linux -T kernel -C gzip -a 00200000 -e 00340000  -n linux -d ${BINARIES_DIR}/rootfs.squashfs ${BINARIES_DIR}/romfs-x.cramfs.img