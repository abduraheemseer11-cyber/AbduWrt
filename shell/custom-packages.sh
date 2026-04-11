#!/bin/bash
# ============= imm仓库外的第三方插件==============
# ============= 若启用 则打开注释 ================
# ============= 但此文件也可以处理仓库内的软件去留 本质上是做了一个PACKAGES字符串的拼接 ================

# 各位注意 如果你构建的固件是硬路由 此文件的注释要酌情考虑是否打开 因为硬路由的闪存空间有限 若构建出来过大或者构建失败 记得调整本文件的注释
# 考虑到istore商店的集成与否 属于高频操作 故 目前已将集成store的操作放置在 工作流的UI 选项 用户自行勾选 则集成  不勾选则不集成 以减少修改此文件的次数

# 高级卸载 by YT Vedio Talk
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-uninstall"
# 极光主题 by github eamonxg
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora"
# 去广告adghome
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adguardhome"
# 代理相关
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-passwall-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ssr-plus"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nikki-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-nekobox"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES momo luci-app-momo luci-i18n-momo-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash"
# CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-homeproxy-zh-cn"  # 移除，不兼容bcm27xx和某些rockchip
# 分区扩容 by sirpdboy 
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"
# 酷猫主题 by sirpdboy 
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-kucat"
# MosDNS
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-mosdns luci-i18n-mosdns-zh-cn"
# Turbo ACC 网络加速
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"
# 设置向导 by sirpdboy  (移除 - 不兼容ARM64)
# CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-netwizard luci-i18n-netwizard-zh-cn"
# Bandix流量监控 by timsaya
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-bandix luci-i18n-bandix-zh-cn"
# IPTV 流媒体转发服务器 - rtp2httpd by stackia
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn"
# 静态文件服务器dufs
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dufs-zh-cn"
# SmartDNS
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-smartdns-zh-cn"
# 高级重启
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-advanced-reboot luci-i18n-advanced-reboot-zh-cn"
# 动态域名解析
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-zh-cn"
# UPnP
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-upnp luci-i18n-upnp-zh-cn"
# 网络唤醒
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"
# 轻量级广告过滤
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"
# 系统监控
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-netdata-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nlbwmon-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-statistics-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-watchcat-zh-cn"
# Web终端
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ttyd-zh-cn"
# 定时重启
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES haproxy"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-haproxy-tcp-zh-cn"
