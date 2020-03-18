#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.173/g' package/base-files/files/bin/config_generate
git clone http://github.com/Lienol/openwrt-package
cd lede
./scripts/feeds update -a
./scripts/feeds install -a
