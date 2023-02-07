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

#Modify default IP
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

#Rename design
#sed -i '  _____     _____  _ _  __   __     _   
# |  __ \   |  __ \(_) | \ \ / /    | |  
# | |__) |__| |  | |_| |_ \ V / _ __| |_ 
# |  ___/ _ \ |  | | | __| > < | '__| __|
# | |  |  __/ |__| | | |_ / . \| |  | |_ 
# |_|   \___|_____/|_|\__/_/
#                P  E  D  I  T  X  R  T
#-----------------------------------------------------
# %D %V, %C
# -----------------------------------------------------' package/base-files/files/etc/banner
