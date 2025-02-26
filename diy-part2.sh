#!/bin/bash
#
# Copyright (c) 2019-2023 PeDitX <https://peditx.ir>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/peditx/PeDitXrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Change default IP to 10.1.1.1
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate

# Change banner
echo "   
 ______      _____   _      _    _     _____       
(_____ \    (____ \ (_)_   \ \  / /   / ___ \      
 _____) )___ _   \ \ _| |_  \ \/ /   | |   | | ___ 
|  ____/ _  ) |   | | |  _)  )  (    | |   | |/___)
| |   ( (/ /| |__/ /| | |__ / /\ \   | |___| |___ |
|_|    \____)_____/ |_|\___)_/  \_\   \_____/(___/ 
                                                   
                                  P A S S W A L L                                                                                         
telegram : @PeDitX" > package/base-files/files/etc/banner

# Set timezone and time
sed -i 's/^.*zonename=.*$/uci set system.@system[0].zonename="Asia\/Tehran"/' package/base-files/files/etc/config/system
sed -i 's/^.*timezone=.*$/uci set system.@system[0].timezone="<+0330>-3:30"/' package/base-files/files/etc/config/system

# Change hostname
sed -i 's/^.*hostname=.*$/uci set system.@system[0].hostname="PeDitXOS"/' package/base-files/files/etc/config/system

# Update openwrt_release
sed -i 's/DISTRIB_ID=.*/DISTRIB_ID="PeDitXOS"/' package/base-files/files/etc/openwrt_release
sed -i 's/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION="PeDitX OS telegram:@peditx"/' package/base-files/files/etc/openwrt_release

# Reload configuration
sed -i 's/^.*reload_config.*$/\/sbin\/reload_config/' package/base-files/files/etc/rc.local
