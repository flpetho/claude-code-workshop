# Day 8: Customization & Advanced Features

## Learning Objectives

By the end of this session, you will:
1. Understand the power of customization in Claude Code
2. Create custom slash commands for your workflows
3. Learn about hooks (automation triggers)
4. Customize Claude Code's output style
5. Build your personal productivity system

## Recap: You've Come Far!

**Week 1:** Foundation (CLI, Claude Code basics, project organization)
**Days 5-7:** Real workflows (design docs, research, competitive analysis, PRDs)

**Today:** Make Claude Code work YOUR way!

## Why Customize?

### The Problem with Default Tools

Every team works differently:
- Different documentation formats
- Different approval processes
- Different file naming conventions
- Different workflows

**Default Claude Code** is powerful but generic.
**Customized Claude Code** is powerful AND tailored to YOUR way of working.

### Real Examples

**Marketing Team:**
- Custom command: `/blog-post` creates blog post template with SEO checklist
- Hook: Auto-formats all markdown files on save

**Design Team:**
- Custom command: `/component` creates component documentation
- Hook: Auto-adds design system links to all new files

**PM Team:**
- Custom command: `/prd` creates PRD template
- Hook: Auto-updates project index when new files are created

## Level 1: Slash Commands (Easy Customization)

### What Are Slash Commands?

Slash commands are shortcuts for common tasks.

**Built-in examples:**
```
/help - Get help
/clear - Clear conversation
```

**You can create custom ones:**
```
/design-spec - Create design specification
/meeting-notes - Format meeting notes
/competitive-analysis - Start competitive analysis
```

### Creating Your First Slash Command

#### Step 1: Understand the Structure

Slash commands are markdown files in `.claude/commands/` folder.

**File structure:**
```
.claude/
└── commands/
    ├── design-spec.md
    ├── meeting-notes.md
    └── competitive-analysis.md
```

**File naming:** Command name = file name
- `design-spec.md` → `/design-spec` command
- `meeting-notes.md` → `/meeting-notes` command

#### Step 2: Create Commands Folder

```bash
mkdir -p ~/.claude/commands
```

This creates the folder in your home directory, making commands available in ALL your projects!

#### Step 3: Create Your First Command

```bash
cd ~/.claude/commands
touch design-spec.md
open design-spec.md
```

**Add this content:**
```markdown
Create a comprehensive design specification with these sections:

# [Feature Name] - Design Specification

## Overview
Brief description of the feature

## User Problem
What problem does this solve?

## User Flow
Step-by-step user journey

## Screens Required
List all screens needed

## Components
UI components and their properties

## Interactions
- Tap targets
- Animations
- Transitions
- Micro-interactions

## Accessibility
- Screen reader support
- Keyboard navigation
- Color contrast requirements (WCAG AA)
- Touch targets (44x44px minimum)

## Edge Cases
List potential edge cases and how to handle them

## Success Metrics
How will we measure if this feature is successful?

## Open Questions
List any unresolved questions

Use proper markdown formatting with tables where appropriate.
Ask me for the feature name and any details I have, then create the spec with placeholders for sections I need to fill in.
```

#### Step 4: Test Your Command

```bash
cd ~/Documents
mkdir test-project
cd test-project
claude
```

Then in Claude Code:
```
/design-spec
```

Claude Code reads your command file and executes those instructions!

### More Useful Slash Commands

#### Meeting Notes Command

**File:** `~/.claude/commands/meeting-notes.md`

```markdown
Transform my rough meeting notes into a professionally formatted document with this structure:

# [Meeting Title] - [Date]

## Attendees
List of people in the meeting

## Discussion Topics
Organized by topic with key points under each

## Decisions Made
Clear list of decisions with ✅ checkmarks

## Action Items
Table format:
| Task | Owner | Due Date | Status |
|------|-------|----------|--------|
| [Task] | [Name] | [Date] | ⏳ Pending |

## Follow-up Items
Things to revisit or discuss in future meetings

## Next Meeting
When and what to cover

Ask me to share my rough notes, then create the formatted version.
```

#### Competitive Analysis Command

**File:** `~/.claude/commands/competitive-analysis.md`

```markdown
Help me set up a competitive analysis project with this structure:

Create these folders:
```
competitive-analysis/
├── competitors/
│   └── [create subfolder for each competitor]
├── analysis/
├── synthesis/
└── templates/
```

Then create:
1. A competitor analysis template in templates/competitor-template.md
2. A feature comparison template in templates/feature-comparison-template.md
3. A README.md explaining the project structure

Ask me which competitors to analyze, then set up the complete structure.
```

#### Component Documentation Command

**File:** `~/.claude/commands/component-doc.md`

```markdown
Create component documentation for a design system component with:

# [Component Name]

## Overview
Purpose and when to use

## Variants
All variants with descriptions

## Props/Properties
Table of all props with types, defaults, and descriptions

## States
All interactive states (default, hover, active, disabled, etc.)

## Sizes
Available sizes and when to use each

## Usage Guidelines
Do's and Don'ts

## Accessibility
Keyboard navigation, screen reader support, ARIA attributes

## Code Examples
Basic and advanced usage examples

## Related Components
Links to related components

Ask me for component details, then generate comprehensive documentation.
```

### Best Practices for Slash Commands

**1. Make them specific to your workflow**
```
✅ /design-spec-mobile - For mobile-specific specs
✅ /prd-internal - For internal PRDs
❌ /doc - Too generic
```

**2. Include clear instructions**
Commands should tell Claude Code exactly what to create, including:
- Structure/sections
- Format requirements
- What to ask the user for

**3. Use templates**
Commands can reference template files:
```markdown
Using the template in templates/my-template.md, create...
```

**4. Keep them updated**
As your workflows evolve, update your commands:
```bash
open ~/.claude/commands/design-spec.md
# Update the sections or format
```

## Level 2: Hooks (Advanced Automation)

### What Are Hooks?

Hooks are scripts that run automatically at specific times:
- When Claude Code starts
- Before Claude Code responds
- After you submit a prompt
- When a file is created/edited

**Think of them as:** "When X happens, automatically do Y"

### Common Hook Uses

**For UX/PM professionals:**

1. **Auto-format files**
   - When: After any file is written
   - Do: Ensure consistent formatting

2. **Update project index**
   - When: New file is created
   - Do: Add file to project README

3. **Enforce naming conventions**
   - When: File is created
   - Do: Check file follows naming rules

4. **Add metadata**
   - When: File is created
   - Do: Add date, author, version info

### Hook Example: Auto-update Project Index

This is an advanced feature - Don't worry if it seems complex now. You can always come back to this after mastering basic Claude Code usage.

**File:** `.claude/hooks/post-write.sh` (in your project)

```bash
#!/bin/bash
# This hook runs after any file is written

# Update the project README with new files
echo "Updating project index..."

# This is a simplified example
# Real implementation would be more robust
```

**Note:** Hooks require bash scripting knowledge. For most UX/PM work, slash commands are sufficient!

### When to Use Hooks vs. Commands

**Use Slash Commands when:**
- You want to trigger something manually
- Task is occasional (not every time)
- Simple, straightforward automation

**Use Hooks when:**
- Want automation without thinking about it
- Task should happen every time
- Complex workflows with multiple steps

**For most UX/PM professionals:** Start with slash commands. They're powerful and easy!

## Level 3: Customizing Output Style

### Response Styles

You can customize how Claude Code responds to you.

### Creating a Custom Style

**File:** `~/.claude/settings.json`

```json
{
  "response_style": "professional",
  "tone": "helpful",
  "format_preferences": {
    "use_emoji": false,
    "markdown_style": "github",
    "code_blocks": "always_highlight"
  }
}
```

**Or just ask Claude Code:**
```
I prefer responses without emoji. Can you remember that?
```

Claude Code will adapt its style!

## Building Your Personal Productivity System

### The 80/20 Rule

20% of Claude Code features will handle 80% of your work.

**Focus on:**
1. 3-5 custom slash commands for your most common tasks
2. Well-organized project templates
3. Clear file naming conventions
4. Maybe 1-2 simple hooks

**Don't worry about:**
- Complex automation (unless you love that stuff)
- Every possible feature
- Over-engineering your setup

### Your Productivity System Template

**Step 1: Identify your top 5 repetitive tasks**

Examples:
1. Creating design specs
2. Formatting meeting notes
3. Starting competitive analyses
4. Documenting components
5. Writing user stories

**Step 2: Create slash command for each**

```bash
cd ~/.claude/commands
touch design-spec.md
touch meeting-notes.md
touch competitive-analysis.md
touch component-doc.md
touch user-stories.md
```

Fill each with your standard format/instructions.

**Step 3: Create project templates**

```
~/Documents/project-templates/
├── design-project-template/
│   ├── CLAUDE.md
│   ├── README.md
│   ├── specs/
│   ├── flows/
│   └── templates/
├── research-project-template/
│   ├── CLAUDE.md
│   ├── interviews/
│   ├── analysis/
│   └── synthesis/
└── competitive-analysis-template/
    ├── CLAUDE.md
    ├── competitors/
    └── analysis/
```

**Step 4: Document your system**

Create `~/.claude/my-system.md`:

```markdown
# My Claude Code System

## My Custom Commands
- `/design-spec` - Create design specification
- `/meeting-notes` - Format meeting notes
- `/competitive-analysis` - Set up competitive analysis
- `/component-doc` - Document design system component
- `/user-stories` - Create user story document

## My Project Templates
- Design project: ~/Documents/project-templates/design-project-template/
- Research project: ~/Documents/project-templates/research-project-template/
- Competitive analysis: ~/Documents/project-templates/competitive-analysis-template/

## My File Naming Conventions
- Design specs: `[feature-name]-spec.md`
- User flows: `[flow-name]-flow.md`
- Meeting notes: `meeting-YYYY-MM-DD.md`
- Research synthesis: `synthesis-[topic].md`

## My Typical Workflows
1. Design new feature: `/design-spec` → create spec → create flows → review
2. Meeting notes: Take rough notes → `/meeting-notes` → clean up
3. Research synthesis: Organize interviews → Claude Code to find themes
```

### Maintaining Your System

**Monthly review:**
```bash
cd ~/.claude/commands
ls -la
```

Ask yourself:
- Which commands do I use most?
- Which haven't I used?
- What new commands would be useful?
- Are my command instructions still accurate?

**Update as needed:**
```bash
open ~/.claude/commands/design-spec.md
# Update sections, add new requirements
```

## Advanced: Sharing with Your Team

### Team Slash Commands

Want everyone on your team to use the same commands?

**Option 1: Project-specific commands**

Create commands in project folder:
```
my-project/
└── .claude/
    └── commands/
        ├── design-spec.md
        └── meeting-notes.md
```

These only work in this project, but can be committed to git!

**Option 2: Share personal commands**

Document your commands in a shared location:
```markdown
# Team Claude Code Commands

Copy these files to ~/.claude/commands/:

## Design Spec Command
[Share content of design-spec.md]

## Meeting Notes Command
[Share content of meeting-notes.md]
```

Team members copy commands to their local setup.

## Practice Exercise

See [day-08-customization-exercise.md](../exercises/day-08-customization-exercise.md) for hands-on practice creating custom commands.

## Success Checklist

By the end of Day 8, you should be able to:

- [ ] Understand why customization matters
- [ ] Create custom slash commands
- [ ] Know the difference between commands and hooks
- [ ] Build a personal productivity system with 3-5 commands
- [ ] Customize Claude Code's behavior
- [ ] Share commands with team members
- [ ] Maintain your custom setup

## Tomorrow: Day 9

**We'll cover:**
- Common issues and how to fix them
- When to use Claude Code vs. other tools
- Best practices for long-term success
- Getting unstuck when things go wrong
- Where to get help

**Homework (Optional):**
1. Create 3 custom slash commands for your most common tasks
2. Test them on real work
3. Document your personal system
4. Share one command with your team

## Key Takeaways

1. **Start simple** - 3-5 commands handle most use cases
2. **Customize for YOUR workflow** - Not generic best practices
3. **Slash commands > hooks** for most UX/PM work
4. **Document your system** - Future you will thank you
5. **Share with team** - Multiply your impact
6. **Maintain regularly** - Systems evolve with your work

**You now have the tools to make Claude Code work exactly the way you want!**

---

*Questions? Share your custom commands in the workshop channel!*
