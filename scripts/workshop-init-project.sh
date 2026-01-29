#!/bin/bash

# Workshop Project Initialization Script
# Simplified wrapper for Claude Code 101 Workshop
# Creates professional project structure for UX/PM professionals

set -e  # Exit on error

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if project name provided
if [ -z "$1" ]; then
    echo "Usage: workshop-init-project.sh PROJECT_NAME"
    echo ""
    echo "Example: workshop-init-project.sh meeting-notes-tool"
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$HOME/Sites/projects/$PROJECT_NAME"

# Check if project already exists
if [ -d "$PROJECT_DIR" ]; then
    echo -e "${YELLOW}⚠️  Project '$PROJECT_NAME' already exists at $PROJECT_DIR${NC}"
    echo "Please choose a different name or delete the existing project."
    exit 1
fi

echo -e "${BLUE}🚀 Creating workshop project: $PROJECT_NAME${NC}"
echo ""

# Create project directory
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

# Initialize git repository
echo -e "${BLUE}📦 Initializing git repository...${NC}"
git init
git branch -m main

# Create basic structure
echo -e "${BLUE}📁 Creating project structure...${NC}"

# Create .claude directory for commands
mkdir -p .claude/commands

# Create project README
cat > README.md << 'EOF'
# PROJECT_NAME_PLACEHOLDER

Workshop project for Claude Code 101

## What This Is

[Describe your tool/prototype here]

## Target Users

[Who will use this?]

## Key Features

- Feature 1
- Feature 2
- Feature 3

## Technologies

- HTML/CSS/JavaScript for prototypes
- Markdown for documentation

## Setup

This project was created as part of the Claude Code 101 workshop.

## Usage

[How to use your tool]

## Development

Built with [Claude Code](https://claude.com/code) - AI assistant for UX/PM professionals.

## Author

Created during Claude Code 101 Workshop (January 2026)

---

🤖 **Built with Claude Code** - Empowering UX/PM professionals to build tools and prototypes.
EOF

# Replace placeholder with actual project name
sed -i '' "s/PROJECT_NAME_PLACEHOLDER/$PROJECT_NAME/g" README.md

# Create CLAUDE.md for project context
cat > CLAUDE.md << 'EOF'
# Project Context

This is a workshop project for the Claude Code 101 training.

## What We're Building

[Describe your tool/prototype here - be specific about the problem it solves]

## Target Users

[Who will use this tool?]
- User type 1
- User type 2

## Key Features

- Feature 1: [What it does]
- Feature 2: [What it does]
- Feature 3: [What it does]

## Technologies

- HTML/CSS/JavaScript for interactive prototypes
- Markdown for documentation
- Git/GitHub for version control

## Project Type

[Choose one: Research Tool, Design Tool, Product Tool, Analysis Tool, Documentation System]

## Workshop Day

[Which day is this from? Day 1-5]

## Notes for Claude Code

[Any additional context that would help Claude Code understand your project]

## File Structure

```
/
├── README.md           # Project documentation
├── CLAUDE.md          # This file - project context
├── [your-files-here]  # Your actual tool files
└── .claude/           # Claude Code configuration
    └── commands/      # Custom slash commands
```

## Development Guidelines

1. **Build, don't just document**: Focus on creating working prototypes
2. **Iterate quickly**: Get something working, then improve it
3. **Use Git frequently**: Commit after each meaningful change
4. **Be specific in prompts**: Tell Claude Code exactly what you need

## Next Steps

1. Add your tool files (HTML, CSS, JS, etc.)
2. Create custom slash commands in `.claude/commands/`
3. Test your tool
4. Commit and push to GitHub
5. Share with your team!

---

**Remember**: Claude Code is here to help you build. Don't hesitate to ask for help, iteration, or explanation!
EOF

# Create .gitignore
cat > .gitignore << 'EOF'
# macOS
.DS_Store
.AppleDouble
.LSOverride

# Thumbnails
._*

# Files that might appear in the root of a volume
.DocumentRevisions-V100
.fseventsd
.Spotlight-V100
.TemporaryItems
.Trashes
.VolumeIcon.icns
.com.apple.timemachine.donotpresent

# Directories potentially created on remote AFP share
.AppleDB
.AppleDesktop
Network Trash Folder
Temporary Items
.apdisk

# Node modules (if using npm/node)
node_modules/
npm-debug.log*

# Environment variables
.env
.env.local
.env.*.local

# IDE
.vscode/
.idea/
*.swp
*.swo
*~

# Logs
*.log

# Temporary files
tmp/
temp/
*.tmp
EOF

# Create placeholder for tool files
mkdir -p src

cat > src/.gitkeep << 'EOF'
# This file keeps the src/ directory in git
# Delete this file when you add your first real file
EOF

# Initial git commit
echo -e "${BLUE}💾 Creating initial commit...${NC}"
git add .
git commit -m "Initial commit: Workshop project setup

Created project structure for Claude Code 101 workshop.

- README.md with project documentation
- CLAUDE.md with project context for Claude Code
- .gitignore for common exclusions
- .claude/commands/ for custom slash commands
- src/ directory for tool files

Ready to build!

Co-Authored-By: Claude Code Workshop <noreply@claude.com>" > /dev/null 2>&1

echo ""
echo -e "${GREEN}✅ Project initialized successfully!${NC}"
echo ""
echo -e "${BLUE}📋 Next steps:${NC}"
echo ""
echo "1. Navigate to your project:"
echo -e "   ${YELLOW}cd $PROJECT_DIR${NC}"
echo ""
echo "2. Open in Claude Code:"
echo -e "   ${YELLOW}claude${NC}"
echo ""
echo "3. Start building your tool!"
echo "   Tell Claude Code what you want to create."
echo ""
echo "4. Create a GitHub repository:"
echo "   - Go to github.com"
echo "   - Click 'New repository'"
echo "   - Name it: $PROJECT_NAME"
echo "   - Don't initialize with README (we already have one)"
echo "   - Follow GitHub's instructions to push existing repository"
echo ""
echo -e "${GREEN}Happy building! 🚀${NC}"
echo ""
echo "---"
echo "Workshop: Claude Code 101"
echo "Project: $PROJECT_NAME"
echo "Location: $PROJECT_DIR"
echo ""
