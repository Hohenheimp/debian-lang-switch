#!/bin/bash
# 一键切换 Debian 系统语言到简体中文 UTF-8
set -e

echo "=== 切换系统语言到中文（zh_CN.UTF-8） ==="

# 1. 更新软件包列表
sudo apt update

# 2. 安装 locales（如果没装的话）
sudo apt install -y locales

# 3. 启用 zh_CN.UTF-8 与 en_US.UTF-8（去掉注释）
sudo sed -i 's/^# *\(zh_CN.UTF-8 UTF-8\)/\1/' /etc/locale.gen || true
sudo sed -i 's/^# *\(en_US.UTF-8 UTF-8\)/\1/' /etc/locale.gen || true

# 4. 生成 locale
sudo locale-gen

# 5. 设置默认语言
sudo bash -c 'cat > /etc/default/locale <<EOF
LANG=zh_CN.UTF-8
LANGUAGE=zh_CN:zh
LC_ALL=zh_CN.UTF-8
EOF'

# 6. 临时应用当前会话（立即生效，但只对当前 shell）
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:zh
export LC_ALL=zh_CN.UTF-8

echo "=== 系统语言已设置为中文（临时），建议重启使设置完全生效 ==="
read -p "是否立即重启系统? (y/n): " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
    sudo reboot
else
    echo "已设置完毕。请在合适时间重启系统以使设置永久生效。"
fi
