#!/bin/bash

make
rmmod vault
insmod ./vault.ko
rm /dev/vault0
mknod /dev/vault0 c 250 0
echo "oneringtorulethemall" > /dev/vault0
echo $(cat /dev/vault0)


