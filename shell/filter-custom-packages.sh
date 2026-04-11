#!/bin/sh
# Shared helper for filtering unsupported third-party packages per target.
# Build scripts should source this and call filter_custom_packages with a target name.

filter_custom_packages() {
  target="$1"
  if [ -z "$CUSTOM_PACKAGES" ] || [ -z "$target" ]; then
    return 0
  fi

  case "$target" in
    rockchip|rockchip-armv8|rockchip_armv8)
      unsupported="luci-app-ssr-plus luci-i18n-nikki-zh-cn nikki momo luci-app-momo luci-i18n-momo-zh-cn luci-app-mosdns luci-i18n-mosdns-zh-cn luci-app-bandix luci-i18n-bandix-zh-cn luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn luci-app-haproxy-tcp luci-app-homeproxy luci-app-netwizard"
      ;;
    raspberrypi|bcm27xx|rpi|aarch64_cortex-a53|aarch64_cortex-a72|aarch64_cortex-a76)
      unsupported="luci-app-ssr-plus luci-i18n-nikki-zh-cn nikki momo luci-app-momo luci-i18n-momo-zh-cn luci-app-mosdns luci-i18n-mosdns-zh-cn luci-app-bandix luci-i18n-bandix-zh-cn luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn luci-app-haproxy-tcp luci-app-homeproxy luci-app-netwizard"
      ;;
    *)
      unsupported=""
      ;;
  esac

  if [ -n "$unsupported" ]; then
    filtered=""
    for pkg in $CUSTOM_PACKAGES; do
      skip="no"
      for bad in $unsupported; do
        if [ "$pkg" = "$bad" ]; then
          echo "⚠️ 过滤不支持的 ${target} 包: $pkg"
          skip="yes"
          break
        fi
      done
      if [ "$skip" = "no" ]; then
        filtered="$filtered $pkg"
      fi
    done
    CUSTOM_PACKAGES="$filtered"
  fi
}
