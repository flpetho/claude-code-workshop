# Day 4: Project Organization for Maximum Efficiency

## Learning Objectives

By the end of this session, you will:
1. Understand why project organization matters for Claude Code
2. Learn recommended folder structures for UX/PM projects
3. Create effective CLAUDE.md project guides
4. Use naming conventions that help Claude work better
5. Set up projects that scale and stay organized

## Why Organization Matters with Claude Code

Claude Code is smart, but it works **significantly better** with well-organized projects. Here's why:

### Problem: Messy Project
```
my-project/
├── notes.txt
├── notes2.txt
├── final.md
├── final-FINAL.md
├── interview may 3.txt
├── stuff/
├── old/
└── untitled.md
```

**What Claude sees:** Chaos. Hard to understand what anything is.

### Solution: Organized Project
```
my-project/
├── README.md
├── CLAUDE.md
├── research/
│   ├── interviews/
│   │   ├── participant-01.md
│   │   ├── participant-02.md
│   │   └── participant-03.md
│   └── synthesis/
│       └── key-findings.md
├── deliverables/
│   ├── research-report.md
│   └── recommendations.md
└── archive/
    └── old-drafts/
```

**What Claude sees:** Clear structure. Easy to navigate. Obvious purpose for each folder.

**Result:** Claude gives better, more accurate help because it understands your project.

## The CLAUDE.md File: Your Project Guide

Think of `CLAUDE.md` as a guidebook that helps Claude (and new team members) understand your project.

### What is CLAUDE.md?

A markdown file in your project root that explains:
- What this project is about
- How files are organized
- What's in each folder
- Any special conventions or rules
- How to use the project

**When Claude starts in your project, it can read CLAUDE.md and immediately understand the context.**

### Basic CLAUDE.md Template

```markdown
# Project Name

## Overview
[Brief description of what this project is]

## Project Structure

- `research/` - User research files (interviews, surveys, observations)
- `analysis/` - Synthesis documents and findings
- `deliverables/` - Final reports and presentations
- `archive/` - Old versions and deprecated files

## How to Use This Project

1. All research notes go in `research/`
2. Analysis and synthesis in `analysis/`
3. Final deliverables in `deliverables/`
4. Archive old files to keep root clean

## File Naming Conventions

- Interviews: `participant-[number]-[name].md`
- Dates: `YYYY-MM-DD` format
- Use lowercase and hyphens (not spaces)

## Working with Claude Code

When using Claude Code in this project:
- Read CLAUDE.md first to understand structure
- Keep templates in root for easy access
- Tag files with version numbers for drafts
```

### Real Example: UX Research Project

Here's a complete CLAUDE.md for a real project:

```markdown
# Mobile Banking App - UX Research

## Project Overview

UX research project for redesigning our mobile banking app. Goal is to understand user pain points with current app and identify opportunities for improvement.

**Timeline:** 6 weeks (Jan - Feb 2026)
**Team:** Sarah (Lead UX), Mike (PM), Chen (Designer)

## Folder Structure

```
mobile-banking-research/
├── CLAUDE.md (this file)
├── README.md (project overview)
├── research-plan.md (research strategy)
├── interviews/
│   ├── templates/
│   ├── transcripts/
│   └── synthesis/
├── observations/
├── surveys/
├── analysis/
│   ├── themes/
│   ├── personas/
│   └── journey-maps/
├── deliverables/
│   ├── research-report.md
│   └── presentation/
└── resources/
    ├── consent-forms/
    └── recruiting/
```

## File Naming Conventions

**Interviews:**
- `participant-[number]-[name].md`
- Example: `participant-01-sarah-chen.md`

**Dates:**
- Use ISO format: `YYYY-MM-DD`
- Example: `2026-01-15-interview-notes.md`

**Versions:**
- Add version: `report-v1.md`, `report-v2.md`
- Or use dates: `report-2026-01-20.md`

**No spaces:**
- Use hyphens: `user-flow.md`
- Not underscores: `user_flow.md`
- Never spaces: `user flow.md`

## Working with Claude Code

### Quick Start
```bash
cd ~/Documents/mobile-banking-research
claude
```

### Common Tasks

**1. Process a new interview:**
```
Read the transcript in interviews/transcripts/participant-05.md and create a summary in interviews/synthesis/ with key themes and quotes
```

**2. Update analysis:**
```
Read all synthesis files in interviews/synthesis/ and update analysis/themes/main-themes.md with any new patterns
```

**3. Create deliverable:**
```
Combine the findings from analysis/themes/ and create a draft research report in deliverables/research-report.md
```

## Document Templates

- Interview template: `interviews/templates/interview-template.md`
- Observation template: `observations/observation-template.md`
- Synthesis template: `analysis/synthesis-template.md`

## Status Tracking

- ✅ Research planning complete
- ✅ 5 interviews conducted
- 🔄 Analysis in progress
- ⏳ Report writing pending
- ⏳ Presentation creation pending

## Notes

- Always backup interview transcripts
- Use participant numbers to maintain privacy
- Archive old versions when creating new ones
- Keep README.md updated with latest status
```

## Recommended Folder Structures

Different projects need different structures. Here are templates for common UX/PM work:

### Structure 1: UX Research Project

```
project-name/
├── CLAUDE.md
├── README.md
├── research-plan.md
├── research/
│   ├── interviews/
│   ├── observations/
│   ├── surveys/
│   └── secondary-research/
├── analysis/
│   ├── themes/
│   ├── personas/
│   ├── journey-maps/
│   └── insights/
├── deliverables/
│   ├── reports/
│   ├── presentations/
│   └── artifacts/
├── resources/
│   ├── templates/
│   ├── scripts/
│   └── tools/
└── archive/
```

### Structure 2: Design Documentation

```
design-project/
├── CLAUDE.md
├── README.md
├── specs/
│   ├── feature-specs/
│   ├── component-specs/
│   └── interaction-specs/
├── research/
│   ├── user-needs/
│   └── competitive-analysis/
├── flows/
│   ├── user-flows/
│   └── task-flows/
├── assets/
│   ├── wireframes/
│   ├── mockups/
│   └── prototypes/
├── documentation/
│   ├── design-system/
│   └── guidelines/
��── reviews/
    ├── feedback/
    └── iterations/
```

### Structure 3: Product Management

```
product-project/
├── CLAUDE.md
├── README.md
├── requirements/
│   ├── prds/
│   ├── user-stories/
│   └── acceptance-criteria/
├── research/
│   ├── market-research/
│   ├── user-feedback/
│   └── analytics/
├── planning/
│   ├── roadmap/
│   ├── sprints/
│   └── milestones/
├── documentation/
│   ├── release-notes/
│   ├── specs/
│   └── decisions/
└── stakeholders/
    ├── meeting-notes/
    └── approvals/
```

### Structure 4: Competitive Analysis

```
competitive-analysis/
├── CLAUDE.md
├── README.md
├── competitors/
│   ├── company-a/
│   ├── company-b/
│   └── company-c/
├── analysis/
│   ├── feature-comparison/
│   ├── pricing-analysis/
│   └── market-positioning/
├── research/
│   ├── user-reviews/
│   ├── market-data/
│   └── trends/
├── synthesis/
│   ├── opportunities/
│   ├── threats/
│   └── recommendations/
└── deliverables/
    ├── reports/
    └── presentations/
```

## File Naming Best Practices

Good file names make Claude Code (and humans!) more effective.

### ✅ Good File Names

```
user-interview-participant-01.md
research-synthesis-2026-01-20.md
competitive-analysis-feature-matrix.md
design-spec-user-onboarding-v2.md
meeting-notes-product-team-2026-01-15.md
```

**Why good:**
- Descriptive
- Lowercase with hyphens
- No spaces
- Includes context
- Sortable (dates in ISO format)

### ❌ Bad File Names

```
notes.txt
Interview 1.md
FINAL VERSION (2).docx
stuff.md
untitled.md
```

**Why bad:**
- Not descriptive
- Spaces in names
- Unclear version
- No context

### File Naming Patterns

**For interviews:**
```
participant-[number]-[optional-name].md
Examples:
- participant-01-sarah.md
- participant-02-mike.md
```

**For dated documents:**
```
[document-type]-YYYY-MM-DD.md
Examples:
- meeting-notes-2026-01-15.md
- synthesis-2026-01-20.md
```

**For versions:**
```
[document-name]-v[number].md
Examples:
- research-report-v1.md
- design-spec-v3.md
```

**For drafts:**
```
[document-name]-draft.md or
[document-name]-wip.md
Examples:
- presentation-draft.md
- report-wip.md
```

## Claude Code Optimization Tips

Make Claude Code work even better with these practices:

### Tip 1: Use Descriptive Folder Names

```
✅ interviews/
✅ competitive-analysis/
✅ user-research-synthesis/

❌ stuff/
❌ folder1/
❌ misc/
```

### Tip 2: Keep Related Files Together

```
research/
├── interviews/
│   ├── participant-01.md
│   ├── participant-02.md
│   └── participant-03.md
└── synthesis/
    └── interview-themes.md
```

Claude can easily read all interviews and create synthesis.

### Tip 3: Use README Files in Subfolders

```
research/README.md explains what's in research/
interviews/README.md explains interview process
```

### Tip 4: Separate Work-in-Progress from Final

```
✅ drafts/
✅ archive/
✅ deliverables/

Not mixed:
❌ final-FINAL-v2-REALLY-FINAL.md
```

### Tip 5: Use Templates

Keep reusable templates in a templates/ folder:
```
templates/
├── interview-template.md
├── synthesis-template.md
└── report-template.md
```

## Creating Your Project Setup

Let's practice creating a well-organized project.

### The Standard Setup Process

**Step 1: Create folder structure**
```bash
mkdir my-project
cd my-project
mkdir research analysis deliverables resources archive
```

**Step 2: Create CLAUDE.md**
```bash
claude
```

Then ask:
```
Create a CLAUDE.md file for this UX research project. Include:
- Project overview
- Folder structure explanation
- File naming conventions
- How to use Claude Code effectively
```

**Step 3: Create README.md**
```
Create a README.md with:
- Project title and description
- Team members
- Timeline
- Current status
- Quick links to key documents
```

**Step 4: Create templates**
```bash
mkdir templates
```

```
Create an interview template in templates/interview-template.md
```

### Complete Example

See [day-04-project-setup-exercise.md](../exercises/day-04-project-setup-exercise.md) for a complete walkthrough.

## Migration: Organizing an Existing Messy Project

Got a messy project? Here's how to clean it up:

### Step 1: Assess Current State

```bash
cd messy-project
ls -la
```

List all files and understand what you have.

### Step 2: Plan New Structure

Decide on folders:
- research/
- analysis/
- deliverables/
- archive/

### Step 3: Create New Folders

```bash
mkdir research analysis deliverables archive
```

### Step 4: Move Files Thoughtfully

```bash
# Move interview notes
mv interview*.md research/

# Move analysis docs
mv synthesis*.md analysis/

# Move old versions
mv *-old.md archive/
mv *-v1.md archive/
```

### Step 5: Rename for Consistency

```bash
# Rename to standard format
mv "Interview 1.md" research/participant-01.md
mv "notes (2).txt" research/participant-02.md
```

### Step 6: Create CLAUDE.md

Document your new structure so Claude understands it.

## Success Checklist

By the end of Day 4, you should be able to:

- [ ] Explain why organization matters for Claude Code
- [ ] Create a CLAUDE.md file for a project
- [ ] Set up logical folder structures
- [ ] Use consistent file naming conventions
- [ ] Organize an existing messy project
- [ ] Create project templates
- [ ] Help Claude understand your project better

## Tomorrow: Day 5

**We'll learn:**
- Real UX/PM workflows with Claude Code
- Creating design documentation
- User flow documentation (Mermaid diagrams)
- Meeting notes synthesis
- Research findings organization

**Homework (Optional):**
1. Create CLAUDE.md for a real project
2. Reorganize one messy project folder
3. Set up a templates folder for your work

## Key Takeaways

1. **Organization amplifies Claude Code** - Well-organized projects = better results
2. **CLAUDE.md is your project guide** - Helps Claude understand context
3. **Folder structure matters** - Group related files logically
4. **File naming is important** - Descriptive, consistent names help Claude
5. **Templates save time** - Reusable structures for common tasks
6. **Clean as you go** - Easier than big cleanup later

**Tomorrow we put this all into practice with real UX/PM workflows!**

---

*Questions? Post in the workshop channel or reach out to [instructor contact]*
