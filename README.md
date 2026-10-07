# Agent Skills Library 🧠⚡

A public, curated collection of reusable skills for AI coding agents (Google Antigravity, Claude Code, Cursor, and custom agent runtimes).

Whenever a new skill is developed or needed across projects, it is added and versioned here so any project or team member can immediately discover and use it.

---

## 📦 Included Skills

| Skill | Description | Path |
| :--- | :--- | :--- |
| **`agent-reach`** | Multi-platform internet research & search across 16 platforms (Twitter/X, Reddit, Xiaohongshu, Bilibili, YouTube, GitHub, etc.) | [`skills/agent-reach`](./skills/agent-reach) |
| **`baby-steps`** | Disciplined, phase-by-phase execution methodology for incremental, safe, and verifiable progress. | [`skills/baby-steps`](./skills/baby-steps) |
| **`brag`** | Generates polished launch videos from web projects with music, motion, and social copy using Hyperframes. | [`skills/brag`](./skills/brag) |
| **`brag-slim`** | Zero-dependency, lightweight launch video maker using existing local tools. | [`skills/brag-slim`](./skills/brag-slim) |
| **`logo-design`** | Professional SVG brand & logo design system with optical testing, export tools, and 1,400+ categorized SVGs. | [`skills/logo-design`](./skills/logo-design) |

---

## 🚀 How to Use in Your Projects

### Method 1: Link in Workspace (`.agents/skills.json`)

To use this library in any project, add or update `.agents/skills.json` in that project's root:

```json
{
  "inherits": [
    {
      "path": "https://github.com/amuif/skills"
    }
  ]
}
```
Or as a git submodule:
```bash
git submodule add https://github.com/amuif/skills.git tools/skills
```
And point `.agents/skills.json` to the submodule:
```json
{
  "entries": [
    {
      "path": "tools/skills/skills"
    }
  ]
}
```

### Method 2: Global Configuration (Machine-wide)

To make all skills in this repo globally available to every agent session on your machine without configuring each workspace individually:

Add this repo's `skills` path to `~/.gemini/config/skills.json`:

```json
{
  "entries": [
    {
      "path": "~/Documents/antigravity/focused-maxwell/skills"
    }
  ]
}
```

---

## 🛠️ Adding a New Skill

Whenever you or the agent create a new skill, use the included scaffold helper:

### 1. Scaffold a New Skill
```powershell
.\scripts\new-skill.ps1 -Name "my-new-skill" -Description "Use this skill when..."
```

Or manually copy [`skills/_template/SKILL.md`](./skills/_template/SKILL.md) into a new folder `skills/<skill-name>/SKILL.md`.

### 2. Follow Skill Structure
```text
skills/<skill-name>/
├── SKILL.md          # Required: Frontmatter (name, description) + instructions
├── scripts/          # Optional: Python, PowerShell, or Bash utilities
├── references/       # Optional: In-depth documentation loaded on-demand
├── examples/         # Optional: Sample configurations or templates
└── resources/        # Optional: Assets or data files
```

### 3. Commit and Push
```bash
git add skills/<skill-name>
git commit -m "feat(skill): add <skill-name>"
git push origin main
```

---

## 📄 License

This repository is licensed under the [MIT License](./LICENSE).
