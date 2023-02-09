#!/bin/bash
#
# Copyright (c) 2019-2023 PeDitX <https://peditx.ir>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/PeDitX/PeDitXrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
git clone https://github.com/peditx/luci-theme-peditx package/luci-theme-peditx
# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git haibo https://github.com/haiibo/openwrt-packages' >>feeds.conf.default
