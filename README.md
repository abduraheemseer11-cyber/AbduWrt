# AutoBuildImmortalWrt

快速构建自定义 ImmortalWrt 固件的 GitHub Actions 工作流。

## 主要功能

- 🎯 自定义固件大小（推荐 1GB-2GB，默认 1GB）
- 🐳 可选预装 Docker
- 🛒 可选集成应用商店（luci-app-store）
- 🔧 支持添加第三方软件包
- 🌐 支持选择 LuCI 版本（24.10.0-24.10.5）
- 🔌 支持多机型（Rockchip、Raspberry Pi、x86-64 等）
- 📱 支持 ISO 安装器格式
- 🌍 支持自定义管理地址 IP
- 📞 支持 PPPoE 拨号配置

## 快速开始

1. Fork 本项目
2. 点击 Actions 选择相应工作流
3. 点击 Run workflow 并填入参数
4. 等待构建完成后从 Releases 下载固件

## 固件默认属性

| 设备类型 | 配置 | 说明 |
|---------|------|------|
| 单网口 | DHCP | 自动获得 IP |
| 多网口 | WAN=DHCP, LAN=192.168.100.1 | eth0 为 WAN，其余为 LAN |
| 防火墙 | WAN 入站开启 | 首次调试后建议关闭 |

## 重要说明

- **旁路由用户**：单网口采用 DHCP 模式，使用前需在上级路由查看分配的 IP
- **多网口设备**：可自定义 LAN IP，避免与光猫或其他路由器冲突，大多数用户无需修改
- **防火墙配置**：初期为便利设置开启，完成调试后建议关闭（网络 → 防火墙 → WAN 入站 → 拒绝）
- **自定义配置**：所有网络属性可通过 `files/etc/uci-defaults/99-custom.sh` 修改

## 支持的机型

查看完整列表：[SUPPORT.md](SUPPORT.md)

## 相关项目

- [RunFilesBuilder](https://github.com/wukongdaily/RunFilesBuilder) - Run 插件生成器
- [DockerTarBuilder](https://github.com/wukongdaily/DockerTarBuilder) - Docker 离线镜像生成器
- [img-installer](https://github.com/wukongdaily/img-installer) - ISO 安装器
