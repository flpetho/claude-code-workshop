# Project Orchestration System

This document explains the full `init-new-project.sh` orchestration system that the workshop's `workshop-init-project.sh` is based on.

## Overview

The orchestration system is a sophisticated project initialization framework that creates professional project structures with planning templates, automated agents, and git hooks.

**Workshop version**: Simplified wrapper focusing on essentials
**Full version**: Complete professional setup with advanced features

## Full System Capabilities

The complete `init-new-project.sh` (located at `~/Sites/claude-tools/scripts/`) creates:

### 1. Planning System

**`.planning/` directory** with templates:

- `HANDOFF.md` - Project handoff documentation
- `TECHNICAL-STACK.md` - Technology decisions and rationale
- `PROJECT-CHECKLIST.md` - Implementation tracking
- `ARCHITECTURE.md` - System architecture documentation

**Purpose**: Structured thinking before coding

### 2. Agent System

**`.claude/agents/` directory** with symlinked agents:

- Orchestration agents for complex workflows
- Specialized agents for specific tasks
- Shared across all projects (single source of truth)

**Symlinks**: Point to `~/Sites/claude-tools/agents/`
- Update once, all projects benefit
- Consistent behavior across projects

### 3. Git Automation

**Hooks** in `.git/hooks/`:

- `post-commit` - Auto-update STATE.md with project status
- `pre-push` - Validation checks before pushing
- `commit-msg` - Enforce commit message format

### 4. Project Documentation

**Auto-generated files**:

- `README.md` - Professional project README
- `STATE.md` - Current project state (auto-updated)
- `.gitignore` - Comprehensive ignore rules
- `LICENSE` - Optional license file

### 5. Initial Commit

**Automatic**:
- Git repo initialized
- All template files committed
- Professional commit message
- Ready to push to remote

## How It Works

### Script Flow

1. **Validate input**: Check project name provided
2. **Create directory**: `~/Sites/projects/PROJECT_NAME`
3. **Initialize git**: `git init && git branch -m main`
4. **Copy templates**: From `~/Sites/claude-tools/templates/`
5. **Create symlinks**: Link shared agents
6. **Install hooks**: Copy git hooks to `.git/hooks/`
7. **Generate docs**: Create README, .gitignore
8. **Initial commit**: Commit all files
9. **Success message**: Instructions for next steps

### Template System

**Location**: `~/Sites/claude-tools/templates/`

```
templates/
├── planning/
│   ├── HANDOFF.md
│   ├── TECHNICAL-STACK.md
│   └── PROJECT-CHECKLIST.md
├── agents/
│   └── orchestration/ (symlinked)
├── hooks/
│   ├── post-commit
│   └── pre-push
└── common/
    ├── README.template.md
    └── .gitignore.template
```

**Customization**: Edit templates once, all new projects get updates

### Agent Orchestration

**Shared agents** at `~/Sites/claude-tools/agents/`:

```
agents/
├── orchestration/
│   ├── project-planner.md
│   ├── technical-reviewer.md
│   └── documentation-generator.md
├── specialized/
│   ├── code-reviewer.md
│   ├── test-generator.md
│   └── refactoring-assistant.md
└── README.md
```

**Project symlinks**:
```bash
.claude/agents/orchestration -> ~/Sites/claude-tools/agents/orchestration
```

**Benefits**:
- Update agent once, affects all projects
- Consistent workflows across projects
- Easy to evolve practices

### Git Hooks

**post-commit** hook:

```bash
#!/bin/bash
# Auto-update STATE.md after each commit

# Get recent changes
CHANGES=$(git log -1 --stat --oneline)

# Update STATE.md
cat > STATE.md << EOF
# Project State

**Last Updated**: $(date)

## Recent Changes

$CHANGES

## Status

[Auto-generated project status]
EOF

# Add to git (doesn't commit to avoid loop)
git add STATE.md
```

**Purpose**: Always know project state without manual updates

## Workshop Simplification

**Workshop version** (`workshop-init-project.sh`) omits:

- ❌ Planning templates (too complex for 5-day workshop)
- ❌ Orchestration agents (not covered in basics)
- ❌ Git hooks (avoid automation complexity)
- ❌ STATE.md auto-updates (manual is fine for learning)

**Workshop version includes**:

- ✅ Git initialization
- ✅ Basic .claude/commands/ structure
- ✅ Simple README and CLAUDE.md templates
- ✅ .gitignore for common files
- ✅ Initial commit

## Using Full System (Post-Workshop)

### Installation

**Get the full system**:

```bash
git clone [orchestration-system-repo] ~/Sites/claude-tools
cd ~/Sites/claude-tools
./install.sh
```

**Adds**:
- Scripts to PATH
- Templates
- Shared agents
- Git hooks

### Creating Projects

**With full system**:

```bash
init-new-project.sh my-new-project
cd ~/Sites/projects/my-new-project

# Planning phase
open .planning/HANDOFF.md
open .planning/TECHNICAL-STACK.md

# Development
# (STATE.md auto-updates after commits)

# Review before PR
.claude/agents/orchestration/technical-reviewer.md
```

### Customizing Templates

**Edit templates**:

```bash
cd ~/Sites/claude-tools/templates/planning
code HANDOFF.md
```

**All future projects get updates!**

### Creating Custom Agents

**Add shared agent**:

```bash
cd ~/Sites/claude-tools/agents/specialized
touch my-custom-agent.md
```

Edit agent with specialized instructions.

**Available in all projects automatically** (via symlinks)

## Benefits of Full System

### For Individuals

- ✅ Consistent project structure
- ✅ Professional documentation automatically
- ✅ Git best practices enforced
- ✅ Specialized agents always available

### For Teams

- ✅ Standardized practices
- ✅ Onboarding new projects fast
- ✅ Shared agent improvements
- ✅ Collective knowledge codified

### For Organizations

- ✅ Governance through templates
- ✅ Compliance documentation built-in
- ✅ Auditable project history
- ✅ Scalable best practices

## Adoption Path

**Workshop (Week 1)**:
- Basic project setup
- Manual processes
- Learn fundamentals

**Post-Workshop (Month 1)**:
- Continue with workshop approach
- Build 2-3 more projects
- Get comfortable with basics

**Advanced (Month 2+)**:
- Install full orchestration system
- Customize templates for your needs
- Share with team

**Team Rollout (Month 3+)**:
- Team adopts shared templates
- Collaborate on agent improvements
- Standardize practices

## Maintenance

### Updating Templates

```bash
cd ~/Sites/claude-tools/templates
# Edit templates
git add .
git commit -m "Update project templates"
git push
```

### Sharing with Team

**Setup team repository**:

```bash
# Create team repo
gh repo create org/claude-tools

# Push templates
git remote add origin git@github.com:org/claude-tools.git
git push -u origin main
```

**Team members install**:

```bash
git clone git@github.com:org/claude-tools.git ~/Sites/claude-tools
~/Sites/claude-tools/install.sh
```

### Versioning

**Tag releases**:

```bash
git tag -a v1.0.0 -m "Initial release"
git push origin v1.0.0
```

**Install specific version**:

```bash
cd ~/Sites/claude-tools
git checkout v1.0.0
./install.sh
```

## Troubleshooting

### "Symlinks not working"

**Check**:
```bash
ls -la .claude/agents/
```

**Should see**:
```
orchestration -> /Users/you/Sites/claude-tools/agents/orchestration
```

**Fix**:
```bash
rm .claude/agents/orchestration
ln -s ~/Sites/claude-tools/agents/orchestration .claude/agents/
```

### "Hooks not executing"

**Check permissions**:
```bash
ls -la .git/hooks/
```

**Make executable**:
```bash
chmod +x .git/hooks/post-commit
```

### "Templates not found"

**Verify installation**:
```bash
ls ~/Sites/claude-tools/templates/
```

**Reinstall**:
```bash
cd ~/Sites/claude-tools
./install.sh
```

## Resources

**Full system documentation**: Check `~/Sites/claude-tools/README.md` after installation

**Examples**: `~/Sites/claude-tools/examples/`

**Support**: Internal FamilySearch #claude-tools channel

---

**Note for workshop participants**:

The full orchestration system is powerful but complex. Master the workshop basics first (project setup, Git, custom commands) before exploring the full system.

When you're ready for more automation and standardization (after building 3-5 projects), the full system will accelerate your workflow significantly.

**Start simple. Grow into complexity when needed.**
