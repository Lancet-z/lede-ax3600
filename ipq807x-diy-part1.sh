#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: lede_diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
rm -rf feeds/luci/themesluci-theme-argon
rm -rf feeds/luci/applications/luci-app-netdata
#openclash
echo 'src-git openclash https://github.com/vernesong/OpenClash.git' >>feeds.conf.default
#主题列表
echo 'src-git Rinze https://github.com/Lancet-z/luci-theme-Rinze.git' >>feeds.conf.default
#netdata汉化版
echo "src-git cups https://github.com/sirpdboy/luci-app-netdata" >> feeds.conf.default
#argon主题
echo "src-git jerryk https://github.com/jerrykuku/openwrt-package" >> feeds.conf.default
