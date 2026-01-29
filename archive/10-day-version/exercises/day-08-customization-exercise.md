# Day 8 Exercise: Create Your Custom Command System

## Exercise Overview

**Duration**: 30 minutes
**Goal**: Build 3 custom slash commands for your workflow
**Difficulty**: Intermediate

## Scenario

You want to streamline your three most common tasks:
1. Creating user research synthesis documents
2. Starting new feature documentation
3. Formatting weekly status updates

You'll create custom commands for each!

## What You'll Learn

1. How to create slash command files
2. Writing effective command instructions
3. Testing and refining commands
4. Building a reusable command library

## Step-by-Step Instructions

### Part 1: Set Up Commands Folder (3 min)

**Step 1: Create commands directory**
```bash
mkdir -p ~/.claude/commands
```

**Step 2: Navigate to commands folder**
```bash
cd ~/.claude/commands
```

**Step 3: Verify location**
```bash
pwd
```

Should show: `/Users/[your-username]/.claude/commands`

### Part 2: Create Research Synthesis Command (10 min)

**Step 4: Create command file**
```bash
touch research-synthesis.md
open research-synthesis.md
```

**Step 5: Write command content**

Add this to the file:
```markdown
Help me synthesize user research findings into a structured document.

Ask me:
1. Where are my research files located? (folder path)
2. What was the research question/goal?
3. How many participants?

Then create a file called `research-synthesis.md` with:

# Research Synthesis: [Research Topic]

## Research Overview
- **Research question:** [Question]
- **Participants:** [Number] participants
- **Date range:** [Dates]
- **Methods:** [Interviews/Surveys/etc]

## Key Themes

Read all research files and identify 5-7 major themes.

For each theme:

### Theme: [Theme Name]

**Frequency:** [X out of Y participants mentioned this]

**Description:**
[What this theme is about]

**Supporting Evidence:**
- "[Quote from participant]" - Participant [number]
- "[Quote from participant]" - Participant [number]

**Implications:**
[What this means for our product/design]

## Themes Summary Table

| Theme | Frequency | Priority | Impact |
|-------|-----------|----------|--------|
| [Theme 1] | X/Y (percentage) | High/Med/Low | [Impact description] |

## Recommendations

Based on the themes identified:

### High Priority
1. [Recommendation 1]
   - **Why:** [Rationale]
   - **Evidence:** [Supporting theme]

### Medium Priority
[... continue]

## Participant Profiles

Brief summary of participant demographics and characteristics.

## Next Steps
[Recommended actions based on findings]

## Appendix
- Link to raw research files
- Research methodology details

Use proper markdown formatting with tables and bullet points.
After creating the synthesis, show me a summary of the key findings.
```

**Step 6: Test the command**

```bash
# Navigate to a test project
cd ~/Documents
mkdir research-test
cd research-test

# Create some fake research files
mkdir interviews
echo "Participant mentioned difficulty finding settings" > interviews/participant-01.txt
echo "Participant wanted faster checkout" > interviews/participant-02.txt

# Start Claude Code
claude
```

Then use your command:
```
/research-synthesis
```

Answer the questions Claude Code asks, and watch it create your synthesis document!

**Step 7: Refine if needed**

```bash
# Exit Claude Code
exit

# Edit command if you want to improve it
cd ~/.claude/commands
open research-synthesis.md
# Make changes, save
```

### Part 3: Create Feature Documentation Command (8 min)

**Step 8: Create feature doc command**
```bash
cd ~/.claude/commands
touch feature-doc.md
open feature-doc.md
```

**Step 9: Write command content**

```markdown
Help me create complete documentation for a new feature.

Ask me:
1. What's the feature name?
2. Brief description (1-2 sentences)?
3. What's the main user problem this solves?

Then create a folder structure and files:

```
features/[feature-name]/
├── overview.md
├── user-stories.md
├── design-spec.md
└── success-metrics.md
```

## overview.md content:

```markdown
# Feature: [Feature Name]

## One-Liner
[Brief description]

## Problem Statement
[User problem]

## Solution Overview
[How this feature solves the problem]

## Target Users
- Primary: [Description]
- Secondary: [Description]

## Key Benefits
1. [Benefit 1]
2. [Benefit 2]
3. [Benefit 3]

## Status
⏳ Planning / 🔄 In Progress / ✅ Complete

## Links
- [User Stories](./user-stories.md)
- [Design Spec](./design-spec.md)
- [Success Metrics](./success-metrics.md)
```

## user-stories.md content:

```markdown
# User Stories: [Feature Name]

## Must Have (P0)

### Story 1
**As a** [user type]
**I want to** [action]
**So that** [benefit]

**Acceptance Criteria:**
- [ ] Criterion 1
- [ ] Criterion 2

## Should Have (P1)
[... continue with same format]

## Nice to Have (P2)
[... continue with same format]
```

## design-spec.md content:

```markdown
# Design Specification: [Feature Name]

## User Flow
[Step by step flow]

## Screens Required
1. [Screen 1] - [Purpose]
2. [Screen 2] - [Purpose]

## Components
[List UI components needed]

## Interactions
[Key interactions]

## Edge Cases
[List edge cases]

## Accessibility
[Requirements]
```

## success-metrics.md content:

```markdown
# Success Metrics: [Feature Name]

## Primary Metrics

| Metric | Baseline | Target | Timeline |
|--------|----------|--------|----------|
| [Metric 1] | [Current] | [Goal] | [When] |

## Secondary Metrics
[... continue]

## How We'll Measure
[Tracking methods]
```

After creating all files, show me a summary of what was created and next steps.
```

**Step 10: Test feature doc command**

```bash
cd ~/Documents
mkdir feature-test
cd feature-test
claude
```

Use command:
```
/feature-doc
```

### Part 4: Create Status Update Command (7 min)

**Step 11: Create status update command**
```bash
cd ~/.claude/commands
touch status-update.md
open status-update.md
```

**Step 12: Write command content**

```markdown
Help me create a weekly status update from my rough notes.

Ask me to share my rough notes about what I accomplished this week.

Then create a formatted status update called `status-update-[current-date].md`:

# Weekly Status Update - [Date Range]

## Summary
[2-3 sentence overview of the week]

## Completed This Week ✅

### [Project/Feature 1]
- [Accomplishment 1]
- [Accomplishment 2]

### [Project/Feature 2]
- [Accomplishment 1]

## In Progress 🔄

### [Project/Feature 1]
- [What's in progress]
- **Status:** [Percentage complete or phase]
- **Blocker:** [Any blockers or None]

## Planned for Next Week 📅

### [Project/Feature 1]
- [ ] [Task 1]
- [ ] [Task 2]

## Blockers & Risks ⚠️

| Issue | Impact | Mitigation | Owner |
|-------|--------|------------|-------|
| [Issue 1] | High/Med/Low | [Strategy] | [Name] |

## Metrics & Progress 📊

| Metric | Last Week | This Week | Trend |
|--------|-----------|-----------|-------|
| [Metric 1] | [Value] | [Value] | ⬆️/⬇️/➡️ |

## Team Shoutouts 🎉
[Anyone who helped you this week]

## Notes
[Any additional context]

Use clear formatting and emoji for visual scanning.
Ask clarifying questions if my notes are unclear.
```

**Step 13: Test status update command**

```bash
cd ~/Documents
claude
```

```
/status-update
```

Provide sample notes like:
```
worked on notification preferences screen design spec
completed competitive analysis of 3 payment apps
started user research synthesis
blocked on getting analytics data from engineering
next week: finish research synthesis, start on checkout flow redesign
```

### Part 5: Create Personal Command Index (5 min)

**Step 14: Document your commands**
```bash
cd ~/.claude/commands
touch README.md
open README.md
```

**Step 15: Add documentation**

```markdown
# My Claude Code Commands

## Available Commands

### /research-synthesis
**Purpose:** Synthesize user research findings into structured document
**When to use:** After conducting 3+ user interviews or research sessions
**Output:** Complete research synthesis with themes, quotes, recommendations

### /feature-doc
**Purpose:** Create complete feature documentation package
**When to use:** Starting work on a new feature
**Output:** Folder with overview, user stories, design spec, success metrics

### /status-update
**Purpose:** Format weekly status update from rough notes
**When to use:** End of week for team status updates
**Output:** Formatted status update with completed work, in progress, planned items

## How to Use

1. Start Claude Code in your project: `claude`
2. Type the command: `/[command-name]`
3. Answer any questions Claude Code asks
4. Review and customize the output

## Updating Commands

To update a command:
```bash
cd ~/.claude/commands
open [command-name].md
# Edit and save
```

## Creating New Commands

1. `cd ~/.claude/commands`
2. `touch new-command.md`
3. Write command instructions
4. Test in a project
5. Update this README

## Tips

- Commands run from any project
- Use descriptive names
- Include examples in command files
- Test before sharing with team
```

### Part 6: Test Full System (5 min)

**Step 16: Create test project**
```bash
cd ~/Documents
mkdir command-system-test
cd command-system-test
```

**Step 17: Test all three commands**

```bash
claude
```

Test each command:
```
/research-synthesis

[Exit after it completes]

/feature-doc

[Exit after it completes]

/status-update

[Exit after it completes]
```

**Step 18: Verify output**

```bash
ls -R
```

You should see:
- research-synthesis.md (or similar)
- features/[feature-name]/ with files
- status-update-[date].md

### Part 7: Reflection (2 min)

**Answer these questions:**

1. **Which command will you use most?**

2. **What other commands would be useful for YOUR work?**

3. **How much time will these commands save you?**

4. **What would you change about the commands?**

## Success Criteria

✅ **You've successfully completed the exercise if:**

1. Created ~/.claude/commands folder
2. Built 3 working slash commands
3. Tested each command successfully
4. Created command documentation (README)
5. Understand how to create new commands
6. Can customize commands for your needs
7. Know how to update and maintain commands

## Extension Challenges

### Challenge 1: Create 2 More Commands

Think about YOUR daily work. What else do you do repeatedly?

Ideas:
- Design system component documentation
- Meeting agenda generator
- Project kickoff document
- Competitive analysis setup
- User persona creator
- PRD template

Create 2 more commands specific to your role.

### Challenge 2: Advanced Command

Create a command that:
1. Sets up a complete project structure
2. Creates multiple related files
3. Generates a project README with links

Example: `/new-design-project` that creates:
```
project-name/
├── CLAUDE.md
├── README.md
├── specs/
├── flows/
├── components/
├── research/
└── deliverables/
```

### Challenge 3: Team Command Library

Document 5 commands your whole team should use:
1. Write instructions for each
2. Create shared document
3. Include examples
4. Add tips for usage

### Challenge 4: Command with Variations

Create a command that handles variations:

Example: `/doc` command that asks:
"What type of document?"
- Design spec
- PRD
- Research synthesis
- Component docs

Then creates appropriate template based on answer.

## Real-World Application

### Making Commands Better

After using commands for a week:
1. Note what works well
2. Note what's missing
3. Update commands
4. Iterate

### Sharing with Team

When sharing commands:
1. Test thoroughly first
2. Document clearly
3. Include examples
4. Provide support

### Organizing Many Commands

As you build more commands:
```
~/.claude/commands/
├── README.md
├── design/
│   ├── design-spec.md
│   ├── component-doc.md
│   └── flow-diagram.md
├── research/
│   ├── research-synthesis.md
│   ├── user-personas.md
│   └── interview-guide.md
└── pm/
    ├── prd.md
    ├── user-stories.md
    └── status-update.md
```

## Troubleshooting

### Command not found

**Issue:** Typed `/mycommand` but Claude Code doesn't recognize it

**Solutions:**
1. Check file exists: `ls ~/.claude/commands/`
2. Check file name matches command: `/design-spec` needs `design-spec.md`
3. Restart Claude Code
4. Check for typos in command name

### Command doesn't do what I expected

**Issue:** Command runs but output isn't right

**Solutions:**
1. Read command file: Is it clear?
2. Edit command file: Add more specific instructions
3. Test again
4. Iterate

### Want to delete a command

```bash
cd ~/.claude/commands
rm command-name.md
```

### Want to temporarily disable a command

```bash
cd ~/.claude/commands
mv command-name.md command-name.md.disabled
```

To re-enable:
```bash
mv command-name.md.disabled command-name.md
```

## Next Steps

**Tomorrow (Day 9):**
- Troubleshooting common issues
- Best practices for long-term success
- When to use Claude Code vs. other tools
- Where to get help when stuck

**Optional homework:**
- Create 3-5 commands for YOUR specific workflow
- Use them on real work for a week
- Document what works and what doesn't
- Share your best command with the team

---

## Checklist: Did You Complete Everything?

- [ ] Created ~/.claude/commands folder
- [ ] Created research-synthesis command
- [ ] Created feature-doc command
- [ ] Created status-update command
- [ ] Tested all three commands
- [ ] Created command documentation (README)
- [ ] Understand how to create new commands
- [ ] Know how to edit and update commands
- [ ] Have ideas for 2-3 more commands to create
- [ ] Can explain custom commands to a colleague

**Excellent work!** You now have a custom Claude Code system tailored to YOUR workflow!

---

*Questions? Share your custom commands in the workshop channel!*
