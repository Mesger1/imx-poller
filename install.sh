#!/bin/sh
sudo mount -o remount,rw /
sudo update-rc.d -f imx-poller remove
sudo apt-get install git
git clone https://github.com/gerdmestdagh/imx-poller
cd imx-poller
sudo cp dat/* /etc
sudo cp ./devregs /usr/bin
sudo cp ./imx-poller /etc/init.d
sudo update-rc.d -f imx-poller start 1 S .
cd ..
rm -rf imx-watchdog
