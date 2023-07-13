#!/bin/sh

BOARD_DIR="$(dirname $0)"
echo ${TARGET_DIR}/lib/modules/

# Remove buildroot specific things
rm -rf ${TARGET_DIR}/lib/modules/5.0.1/kernel/
rm ${TARGET_DIR}/lib/modules/5.0.1/*.*
rm -rf ${TARGET_DIR}/etc/init.d
mkdir ${TARGET_DIR}/etc/init.d

# move drivers
mv ${TARGET_DIR}/lib/modules/5.0.1/extra/* ${TARGET_DIR}/lib/modules/

# Add mount points
mkdir ${TARGET_DIR}/mnt/logo ${TARGET_DIR}/mnt/custom ${TARGET_DIR}/mnt/usb ${TARGET_DIR}/mnt/mtd ${TARGET_DIR}/mnt/web

# Add xmeye files
cp ${BOARD_DIR}/fstab ${TARGET_DIR}/etc/fstab
cp ${BOARD_DIR}/rcS ${TARGET_DIR}/etc/init.d/rcS
cp ${BOARD_DIR}/dnode ${TARGET_DIR}/etc/init.d/dnode
cp ${BOARD_DIR}/loadmod ${TARGET_DIR}/etc/init.d/loadmod

chmod +x ${TARGET_DIR}/etc/init.d/rcS
chmod +x ${TARGET_DIR}/etc/init.d/dnode
chmod +x ${TARGET_DIR}/etc/init.d/loadmod