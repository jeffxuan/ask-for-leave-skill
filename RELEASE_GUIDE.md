# GitHub Release Guide

本文档说明如何将此 Skill 发布到 GitHub。

## 📦 项目结构

```
ask-for-leave-skill/
├── SKILL.md              # 核心 Skill 文件（必需）
├── README.md             # 项目说明文档
├── LICENSE               # MIT 许可证
├── CHANGELOG.md          # 版本更新日志
├── .gitignore           # Git 忽略文件
├── install.sh           # macOS/Linux 安装脚本
├── install.ps1          # Windows 安装脚本
└── examples/
    └── EXAMPLES.md      # 详细使用示例
```

## 🚀 发布步骤

### 1. 创建 GitHub 仓库

1. 登录 GitHub
2. 点击右上角 "+" → "New repository"
3. 填写仓库信息：
   - Repository name: `ask-for-leave-skill`
   - Description: `📧 AI Skill for generating professional leave request emails to professors - 面向教授的请假邮件生成器`
   - 选择 Public
   - 勾选 "Add a README file"（取消勾选，因为已有 README）
   - 选择 MIT License（取消勾选，因为已有 LICENSE）
4. 点击 "Create repository"

### 2. 初始化 Git 并推送

```bash
# 进入项目目录
cd ask-for-leave-skill

# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 创建首次提交
git commit -m "🎉 Initial release: Ask for Leave Skill v1.0.0

Features:
- Support for 5 leave scenarios (sick, personal, emergency, extended, academic)
- Bilingual templates (English/Chinese)
- Interactive email generation
- Professional writing guidelines
- Easy installation scripts"

# 添加远程仓库（替换为你的用户名）
git remote add origin https://github.com/YOUR_USERNAME/ask-for-leave-skill.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

### 3. 创建 Release

1. 在 GitHub 仓库页面，点击 "Releases" → "Create a new release"
2. 填写 Release 信息：
   - Tag version: `v1.0.0`
   - Release title: `v1.0.0 - Initial Release`
   - Description:

```markdown
# 🎉 Ask for Leave Skill v1.0.0

首个正式版本发布！

## ✨ 新功能

### 支持 5 种请假场景
- 🤒 **病假 (Sick Leave)** - 因身体不适无法上课
- 📋 **事假 (Personal Leave)** - 因个人事务无法上课
- 🚨 **紧急情况 (Emergency)** - 突发事件导致无法上课
- 🏥 **长期请假 (Extended Leave)** - 需要长期休病假
- 🎓 **学术活动 (Academic Event)** - 参加会议、演讲等

### 双语支持
- 英文邮件模板
- 中文邮件模板
- 中英文对照模式

### 专业模板
- 基于真实场景优化
- 符合学术邮件规范
- 包含完整结构和写作要点

### 易于使用
- 交互式生成流程
- 自动引导用户提供信息
- 一键安装脚本

## 📥 下载安装

### 方式一：直接下载
点击下方 "Assets" 中的 `ask-for-leave-skill-v1.0.0.zip` 下载

### 方式二：Git Clone
\`\`\`bash
git clone https://github.com/YOUR_USERNAME/ask-for-leave-skill.git
\`\`\`

### 方式三：安装到千帆 DuMate
\`\`\`bash
# macOS/Linux
./install.sh

# Windows PowerShell
.\install.ps1
\`\`\`

## 📖 使用方法

在千帆 DuMate 中直接说：
- "我需要请假"
- "I need to ask for leave"
- "明天无法上课"

AI 会自动引导你生成专业的请假邮件。

## 📚 文档

- [README.md](README.md) - 完整使用指南
- [examples/EXAMPLES.md](examples/EXAMPLES.md) - 详细使用示例
- [SKILL.md](SKILL.md) - 核心 Skill 文件

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📄 许可证

MIT License - 可自由使用、修改和分发
```

3. 点击 "Publish release"

### 4. 上传 Release Assets（可选）

创建 zip 包并上传：

```bash
# 在项目父目录执行
zip -r ask-for-leave-skill-v1.0.0.zip ask-for-leave-skill/ \
  -x "*.git*" \
  -x "*__pycache__*" \
  -x "*.pyc"
```

然后在 Release 页面上传这个 zip 文件。

## 📝 README 徽章

发布后，可以在 README.md 顶部添加徽章：

```markdown
[![GitHub release](https://img.shields.io/github/release/YOUR_USERNAME/ask-for-leave-skill.svg)](https://github.com/YOUR_USERNAME/ask-for-leave-skill/releases)
[![GitHub stars](https://img.shields.io/github/stars/YOUR_USERNAME/ask-for-leave-skill.svg)](https://github.com/YOUR_USERNAME/ask-for-leave-skill/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/YOUR_USERNAME/ask-for-leave-skill.svg)](https://github.com/YOUR_USERNAME/ask-for-leave-skill/issues)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
```

## 🔄 更新流程

后续更新时：

1. 修改代码
2. 更新 CHANGELOG.md
3. 提交更改：
   ```bash
   git add .
   git commit -m "✨ Add new feature"
   git push
   ```
4. 创建新的 Release（如 v1.1.0）

## 📢 推广建议

发布后可以：

1. **社交媒体分享**
   - Twitter/X
   - LinkedIn
   - 微博
   - 小红书

2. **社区推广**
   - Reddit (r/students, r/college)
   - Hacker News
   - Product Hunt

3. **文档网站**（可选）
   - 使用 GitHub Pages
   - 或 Vercel/Netlify

## ✅ 检查清单

发布前确认：

- [ ] README.md 中的链接已更新（替换 YOUR_USERNAME）
- [ ] 所有文件已保存
- [ ] CHANGELOG.md 已更新
- [ ] LICENSE 文件已包含
- [ ] 安装脚本已测试
- [ ] 示例文档完整

---

祝发布顺利！🎉
