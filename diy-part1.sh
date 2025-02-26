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

# Clone the necessary repositories
git clone https://github.com/peditx/luci-theme-peditx package/luci-theme-peditx
git clone https://github.com/peditx/luci-app-themeswitch package/luci-app-themeswitch
git clone https://github.com/peditx/luci-theme-carbonpx package/luci-theme-carbonpx

# Add new feed sources
echo 'src-git passwall https://github.com/peditx/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/peditx/openwrt-passwall2' >>feeds.conf.default
echo 'src-git passwall-packages https://github.com/peditx/openwrt-passwall-packages' >>feeds.conf.default
