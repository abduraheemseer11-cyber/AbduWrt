#!/bin/sh
# 树莓派无线配置脚本
# Raspberry Pi wireless configuration initialization script

LOGFILE="/etc/config/wireless-init-log.txt"
echo "Starting wireless configuration at $(date)" >> $LOGFILE

# 检查是否存在无线接口
if ! uci show wireless >/dev/null 2>&1; then
    echo "No wireless interfaces found" >> $LOGFILE
    exit 0
fi

# 获取第一个无线接口的设备名称
DEVICE=$(uci show wireless.radio0.device 2>/dev/null)
if [ -z "$DEVICE" ]; then
    echo "Failed to detect wireless radio device" >> $LOGFILE
    exit 1
fi

echo "Detected wireless device: radio0" >> $LOGFILE

# 配置无线接口以支持 AP 模式
uci set wireless.default_radio0=wifi-iface
uci set wireless.default_radio0.device='radio0'
uci set wireless.default_radio0.network='lan'
uci set wireless.default_radio0.mode='ap'
uci set wireless.default_radio0.ssid='OpenWrt'
uci set wireless.default_radio0.encryption='psk2'
uci set wireless.default_radio0.key='password'
uci set wireless.default_radio0.isolate='0'

# 配置无线设备参数
uci set wireless.radio0.txpower='20'
uci set wireless.radio0.country='CN'
uci set wireless.radio0.channel='auto'

# 确保无线接口被启用
uci set wireless.radio0.disabled='0'

# 提交配置
uci commit wireless

echo "Wireless configuration completed successfully" >> $LOGFILE

