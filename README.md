# debian-lang-switch

一键将 Debian 系统语言切换为简体中文（zh_CN.UTF-8）。

## 🚀 一行命令切换语言

在 Debian 或 Ubuntu 系统中，您可以使用以下命令直接切换系统语言：

```bash
curl -fsSL https://github.com/Hohenheimp/debian-lang-switch/raw/main/set-chinese.sh | bash
```

该命令将自动下载并执行 `set-chinese.sh` 脚本，完成语言切换。

## 🛠️ 手动安装步骤

如果您更倾向于手动操作，请按照以下步骤进行：

1. 下载脚本：

   ```bash
   wget https://github.com/Hohenheimp/debian-lang-switch/raw/main/set-chinese.sh
   ```

2. 赋予执行权限：

   ```bash
   chmod +x set-chinese.sh
   ```

3. 运行脚本：

   ```bash
   ./set-chinese.sh
   ```

4. 重启系统以完全生效。

## ✅ 兼容性

适用于 Debian、Ubuntu 及多数基于 Debian 的发行版。
