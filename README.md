# Ask for Leave - 面向教授的请假邮件生成器

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Skill](https://img.shields.io/badge/Skill-Ask%20for%20Leave-blue.svg)](https://github.com/yourusername/ask-for-leave-skill)

一个帮助留学生撰写专业、得体的请假邮件的 AI Skill，适用于向国外教授请假的各种场景。

## ✨ 功能特点

- 🎯 **多场景支持**：病假、事假、紧急情况、长期请假、学术活动
- 🌍 **双语支持**：提供英文、中文、中英文对照三种模式
- 📝 **专业模板**：基于真实场景优化的邮件模板
- 🤖 **交互式生成**：智能引导用户提供信息，自动生成完整邮件
- ✅ **写作指导**：提供时机、内容、语气、格式等写作要点

## 📋 适用场景

| 场景 | 英文 | 中文 | 说明 |
|------|------|------|------|
| 病假 | Sick Leave | 病假 | 因身体不适无法上课 |
| 事假 | Personal Leave | 事假 | 因个人事务无法上课 |
| 紧急情况 | Emergency | 紧急情况 | 突发事件导致无法上课 |
| 长期请假 | Extended Leave | 长期请假 | 需要长期休病假 |
| 学术活动 | Academic Event | 学术活动 | 参加会议、演讲等 |

## 🚀 快速开始

### 方式一：直接使用（推荐）

如果你使用的是支持 Skill 的 AI 助手（如千帆 DuMate），可以直接说：

```
我需要请假，明天无法上课
```

或使用英文触发词：

```
I need to ask for leave
I need to take a sick day
I will be absent from class
```

AI 会自动识别并引导你完成请假邮件的生成。

### 方式二：手动安装

#### 1. 下载 Skill

```bash
# 克隆仓库
git clone https://github.com/yourusername/ask-for-leave-skill.git

# 或直接下载 ZIP
wget https://github.com/yourusername/ask-for-leave-skill/archive/refs/heads/main.zip
```

#### 2. 安装到千帆 DuMate

**macOS / Linux:**
```bash
# 创建 skills 目录（如果不存在）
mkdir -p ~/Library/Application\ Support/qianfan-desktop-app/qianfan_desk_xdg/global/data/skills/

# 复制 skill 文件
cp -r ask-for-leave-skill ~/Library/Application\ Support/qianfan-desktop-app/qianfan_desk_xdg/global/data/skills/ask-for-leave
```

**Windows:**
```powershell
# 创建 skills 目录（如果不存在）
New-Item -ItemType Directory -Force -Path "$env:APPDATA\qianfan-desktop-app\qianfan_desk_xdg\global\data\skills"

# 复制 skill 文件
Copy-Item -Recurse -Path "ask-for-leave-skill" -Destination "$env:APPDATA\qianfan-desktop-app\qianfan_desk_xdg\global\data\skills\ask-for-leave"
```

#### 3. 重启应用

安装完成后，重启千帆 DuMate 应用即可使用。

### 方式三：作为参考文档使用

即使不安装到 AI 助手，你也可以：

1. 直接查看 `SKILL.md` 文件中的模板
2. 复制适合的模板进行修改
3. 参考写作要点自己撰写邮件

## 📖 使用示例

### 示例 1：病假

**用户输入：**
```
我需要请假，明天无法上课
```

**AI 响应：**
```
好的，我来帮你生成请假邮件。请提供以下信息：
1. 请假类型：病假 / 事假 / 紧急情况 / 长期请假 / 学术活动？
2. 语言：英文 / 中文 / 中英文对照？
3. 教授姓名？
4. 课程名称？
5. 你的姓名和学号？
6. 具体原因？
```

**用户输入：**
```
病假，英文，Professor Smith，Advanced Mathematics，张三，2023001，发烧
```

**AI 生成：**
```
Subject: Absence from Advanced Mathematics - Zhang San

Dear Professor Smith,

I hope this email finds you well.

I am writing to inform you that I will be unable to attend your Advanced Mathematics class on [Date] due to illness. I have been experiencing a high fever and need to rest at home.

I have already checked the syllabus to ensure I stay up to date with the course material. I will make sure to catch up on the lecture notes and submit any assignments by the deadline.

If there are any in-class activities or quizzes scheduled for that day, please let me know if there is an alternative way to make up for them.

Thank you for your understanding. I apologize for any inconvenience this may cause.

Best regards,
Zhang San
2023001
Advanced Mathematics
```

### 示例 2：学术活动请假

**用户输入：**
```
我要参加学术会议，需要请假
```

**AI 会引导你提供：**
- 会议名称和地点
- 会议时间
- 你的角色（演讲者/参会者）
- 课程信息

然后生成专业的学术活动请假邮件。

## 📚 模板预览

### 病假邮件模板（英文）

```
Subject: Absence from [Course Name] - [Your Name]

Dear Professor [Last Name],

I hope this email finds you well.

I am writing to inform you that I will be unable to attend your [Course Name] class on [Date] due to illness...

[查看完整模板请见 SKILL.md]
```

### 事假邮件模板（英文）

```
Subject: Request for Absence - [Course Name] - [Your Name]

Dear Professor [Last Name],

I hope you are doing well.

I am writing to request permission to be absent from your [Course Name] class on [Date]...

[查看完整模板请见 SKILL.md]
```

## 💡 写作要点

### ✅ 应该做的

- ✅ 尽早发送邮件（至少课前几小时）
- ✅ 保持简洁，教授很忙
- ✅ 诚实说明原因
- ✅ 主动说明补救措施
- ✅ 使用正式、专业的语言
- ✅ 检查拼写和语法

### ❌ 不应该做的

- ❌ 编造虚假理由
- ❌ 过于随意（如 "Hey Prof"）
- ❌ 过于卑微或过度道歉
- ❌ 等到最后一刻才通知
- ❌ 邮件主题不清晰

## 🤝 贡献指南

欢迎贡献！你可以：

1. **报告问题**：发现 bug 或有改进建议，请 [提交 Issue](https://github.com/yourusername/ask-for-leave-skill/issues)
2. **提交改进**：fork 本仓库，改进后提交 Pull Request
3. **分享模板**：有更好的邮件模板，欢迎分享

### 贡献步骤

```bash
# 1. Fork 本仓库

# 2. 克隆你的 fork
git clone https://github.com/yourusername/ask-for-leave-skill.git

# 3. 创建分支
git checkout -b feature/your-feature

# 4. 进行修改
# 编辑 SKILL.md 或其他文件

# 5. 提交更改
git add .
git commit -m "Add: your feature description"

# 6. 推送到 GitHub
git push origin feature/your-feature

# 7. 创建 Pull Request
```

## 📄 许可证

本项目采用 [MIT 许可证](LICENSE)。

## 🙏 致谢

感谢所有贡献者和用户的反馈与支持！

## 📮 联系方式

- **问题反馈**：[GitHub Issues](https://github.com/yourusername/ask-for-leave-skill/issues)
- **功能建议**：[GitHub Discussions](https://github.com/yourusername/ask-for-leave-skill/discussions)

---

**如果这个项目对你有帮助，请给一个 ⭐️ Star！**
