#! /bin/bash

rm -rfd ./rootfs/rootfs.tar.gz
cd rootfs; tar cvfz ../rootfs.tar.gz *; cd ..
mv ./rootfs.tar.gz ./out
sudo docker rmi -f "duan/yos:dev"
sudo docker build -t "duan/yos:dev" ./out
