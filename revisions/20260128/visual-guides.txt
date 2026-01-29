# Visual Guides Reference

**Diagrams and visual aids to create for workshop**

These descriptions will help you create visual diagrams using your preferred tool (Figma, Miro, PowerPoint, etc.)

---

## 1. Git Workflow Diagram

### Simple Daily Workflow

**Visual Type:** Flowchart with 4 steps

**Content:**

```
[Start: You made changes]
        ↓
┌─────────────────┐
│  git add .      │  ← "Stage all changes"
└─────────────────┘
        ↓
┌─────────────────┐
│  git commit -m  │  ← "Save checkpoint with message"
│  "description"  │
└─────────────────┘
        ↓
┌─────────────────┐
│  git push       │  ← "Backup to GitHub"
└─────────────────┘
        ↓
[End: Changes saved on GitHub!]
```

**Color coding:**
- Green boxes for safe operations
- Blue for GitHub operations
- Add icons: 📝 (stage), 💾 (commit), ☁️ (push)

---

## 2. Branch Workflow Diagram

### Working with Feature Branches

**Visual Type:** Tree diagram

**Content:**

```
main branch: ●────●────●────●────●────●
                  │              ↗
                  └─●──●──●──●─┘
                   feature branch
                   
Steps:
1. Create branch from main
2. Work on feature
3. Commit progress
4. Merge back to main
5. Delete feature branch
```

**Labels:**
- "main" branch in green
- "feature" branch in blue
- Merge point highlighted
- Arrows showing direction

---

## 3. Claude Code Project Structure

### File Organization Visual

**Visual Type:** Folder tree diagram

**Content:**

```
my-project/
├── 📄 index.html          ← Your main file
├── 📄 README.md           ← Documentation
├── 📄 CLAUDE.md           ← Context for Claude Code
├── 🚫 .gitignore          ← Files to exclude
├── 📁 .git/               ← Git repository (hidden)
├── 📁 .claude/
│   └── 📁 commands/       ← Your slash commands
│       ├── build.md
│       └── export.md
└── 📁 src/                ← Your tool files
    ├── styles.css
    ├── script.js
    └── data.json
```

**Colors:**
- Green for files you edit often
- Gray for system files
- Blue for configuration
- Yellow for data

---

## 4. GitHub Pages Deployment Flow

### From Code to Live Site

**Visual Type:** Sequential process diagram

**Content:**

```
Step 1: Code on Your Computer
┌──────────────────────┐
│  Your Project Files  │
└──────────────────────┘
          ↓ git push
          
Step 2: Code on GitHub
┌──────────────────────┐
│  GitHub Repository   │
└──────────────────────┘
          ↓ Enable Pages
          
Step 3: GitHub Builds Site
┌──────────────────────┐
│  GitHub Pages        │
│  (building...)       │
└──────────────────────┘
          ↓ Wait 2 minutes
          
Step 4: Live Site!
┌──────────────────────┐
│  yourusername.       │
│  github.io/project/  │
└──────────────────────┘
          ↓
    Anyone can visit!
```

**Visual elements:**
- Laptop icon for local
- GitHub logo for repository
- Globe icon for live site
- Arrows with time indicators

---

## 5. Two-Phase Workflow Comparison

### Direct vs Planning Approach

**Visual Type:** Side-by-side comparison

**Content:**

```
╔════════════════════╗     ╔════════════════════╗
║ DIRECT APPROACH    ║     ║ PLANNING APPROACH  ║
╚════════════════════╝     ╚════════════════════╝

Start                       Start
  ↓                          ↓
Build                       Plan
  ↓                          ↓
Question?                   Document
  ↓                          ↓
Revise                      Review Plan
  ↓                          ↓
Question?                   Build
  ↓                          ↓
Revise                      Done!
  ↓
More revisions
  ↓
Finally done

Time: 2 hours              Time: 1.5 hours
Quality: Good              Quality: Excellent
Clarity: Evolves           Clarity: Clear upfront
```

**Colors:**
- Orange for iterations/revisions
- Green for successful completion
- Use clock icons for time
- Checkmarks for quality indicators

---

## 6. Command Structure Visual

### Anatomy of a Slash Command

**Visual Type:** Annotated code example

**Content:**

```
┌─────────────────────────────────────┐
│ ---                                 │ ← Front matter delimiter
│ description: Create citation form   │ ← What command does
│ ---                                 │ ← Front matter delimiter
│                                     │
│ Create an HTML form with:           │
│                                     │ ← Instructions for Claude
│ Fields:                             │
│ - Title (text input)                │
│ - Author (text input)               │
│ - Year (number input)               │
│                                     │
│ Styling:                            │
│ - FamilySearch colors               │
│ - Modern layout                     │
│ - Mobile responsive                 │
└─────────────────────────────────────┘

Usage: /cite
       ↓
Claude Code reads this file
       ↓
Builds exactly what's described
```

**Annotations:**
- Color code each section
- Arrows showing flow
- Example output preview

---

## 7. Context Pyramid

### More Context = Better Results

**Visual Type:** Pyramid diagram

**Content:**

```
        🏆 MAXIMUM CONTEXT
      ╱                     ╲
     ╱   .planning/ docs     ╲
    ╱   - OVERVIEW.md         ╲
   ╱    - ARCHITECTURE.md      ╲
  ╱     - USER-STORIES.md       ╲
 ╱      - TECHNICAL-STACK.md     ╲
╱_______________________________ ╲

      📊 GOOD CONTEXT
    ╱                     ╲
   ╱   CLAUDE.md file     ╲
  ╱    - What it does      ╲
 ╱     - Who uses it        ╲
╱__________________________ ╲

    📝 MINIMAL CONTEXT
  ╱                     ╲
 ╱   Just the prompt    ╲
╱_______________________ ╲

RESULT QUALITY:
Maximum → Excellent
Good    → Solid
Minimal → Basic
```

**Colors:**
- Gold for maximum
- Silver for good
- Bronze for minimal
- Gradient showing improvement

---

## 8. Terminal Command Flow

### What Happens When You Type Commands

**Visual Type:** Process flow diagram

**Content:**

```
You Type:
┌────────────┐
│ cd project │
└────────────┘
      ↓
Terminal:
┌─────────────────┐
│ Change directory│
└─────────────────┘
      ↓
You Type:
┌────────────┐
│ claude     │
└────────────┘
      ↓
Terminal:
┌─────────────────────┐
│ Start Claude Code   │
│ Loading project...  │
└─────────────────────┘
      ↓
Claude Code:
┌──────────────────────────┐
│ Ready! What would you    │
│ like to build?           │
└──────────────────────────┘
      ↓
You Type:
┌──────────────────────────┐
│ "Create an HTML page..." │
└──────────────────────────┘
      ↓
Claude Code:
┌──────────────────────────┐
│ Creating index.html...   │
│ ✓ Done!                  │
└──────────────────────────┘
```

**Visual elements:**
- Speech bubble style
- Different colors for you vs system
- Icons for each action
- Clear arrows showing sequence

---

## 9. Project Success Matrix

### Minimum, Target, Stretch Goals

**Visual Type:** Grid/matrix

**Content:**

```
┌────────────┬─────────────┬─────────────┬─────────────┐
│            │   MINIMUM   │   TARGET    │   STRETCH   │
├────────────┼─────────────┼─────────────┼─────────────┤
│ Day 1      │ Basic HTML  │ Form w/data │ Multiple    │
│            │ page setup  │ inputs      │ pages       │
├────────────┼─────────────┼─────────────┼─────────────┤
│ Day 2      │ Display     │ Table +     │ Multiple    │
│            │ data        │ chart       │ charts      │
├────────────┼─────────────┼─────────────┼─────────────┤
│ Day 3      │ One         │ 2 commands  │ 3+ commands │
│            │ command     │ + interact. │ + complex   │
├────────────┼─────────────┼─────────────┼─────────────┤
│ Day 4      │ Basic       │ Polished    │ Advanced    │
│            │ polish      │ + feature   │ features    │
├────────────┼─────────────┼─────────────┼─────────────┤
│ Day 5      │ On GitHub   │ Deployed +  │ Perfect     │
│            │             │ presented   │ demo        │
└────────────┴─────────────┴─────────────┴─────────────┘

🎯 Everyone aims for TARGET
✅ MINIMUM is success!
🌟 STRETCH if you're flying
```

**Colors:**
- Bronze/yellow for minimum
- Silver/blue for target
- Gold/green for stretch

---

## 10. Troubleshooting Decision Tree

### "My Project Isn't Working" Flow

**Visual Type:** Decision tree

**Content:**

```
Something not working?
        ↓
    ┌───┴───┐
    │ Check │
    └───┬───┘
        ↓
  Is it in browser console?
    ┌─────┴─────┐
    YES         NO
    ↓           ↓
Read error    Is file path correct?
message       ┌────┴────┐
↓            YES       NO
Copy to                Fix path
Claude Code            ↓
↓                    Test again
Claude fixes it
↓
✓ Fixed!

Common fixes:
• Open browser console (View → Developer)
• Check file names match exactly
• Verify file paths are relative
• Ask Claude Code to debug
• Ask instructor if stuck
```

**Visual elements:**
- Diamond shapes for decisions
- Rectangles for actions
- Green for success
- Red for errors
- Yellow for checks

---

## 11. Workshop Journey Map

### Your 5-Day Progress

**Visual Type:** Timeline with milestones

**Content:**

```
Day 1: Foundation
├─ Setup ✓
├─ First commit ✓
└─ Project chosen ✓
        ↓
Day 2: Data Processing
├─ Visualizations ✓
├─ Git branches ✓
└─ Data features ✓
        ↓
Day 3: Interactivity
├─ Custom commands ✓
├─ User interactions ✓
└─ Forms working ✓
        ↓
Day 4: Professional
├─ Learn planning ✓
├─ Polish project ✓
└─ Prepare demo ✓
        ↓
Day 5: Ship It!
├─ Deploy live ✓
├─ Present to team ✓
└─ Graduate! 🎉

Your skills grow each day!
```

**Visual elements:**
- Checkmarks for completion
- Connecting path/road
- Icons for each day
- Growth indicators
- Celebration at end

---

## 12. File Path Visual Guide

### Relative vs Absolute Paths

**Visual Type:** Side-by-side comparison

**Content:**

```
ABSOLUTE PATH (Don't use on GitHub Pages)
┌──────────────────────────────┐
│ /images/logo.png             │ ← Starts with /
│ /styles/main.css             │   Won't work!
└──────────────────────────────┘

RELATIVE PATH (Always use this)
┌──────────────────────────────┐
│ images/logo.png              │ ← No leading /
│ styles/main.css              │   Works everywhere!
└──────────────────────────────┘

YOUR PROJECT:
my-project/
├── index.html        ← You are here
├── images/
│   └── logo.png      ← Reference as: images/logo.png
└── styles/
    └── main.css      ← Reference as: styles/main.css
```

**Colors:**
- Red X for absolute
- Green checkmark for relative
- Folder icons
- Clear hierarchy

---

## Implementation Notes

### Creating These Visuals

**Tools you can use:**
- **Figma** - Professional, collaborative
- **Miro** - Good for flowcharts
- **PowerPoint/Keynote** - Simple, accessible
- **Lucidchart** - Excellent for diagrams
- **draw.io** - Free, web-based

**Style guidelines:**
- Use FamilySearch brand colors
- Keep it simple and clear
- High contrast for readability
- Export as PNG or SVG
- Make text large enough (18pt+ for body)

### Where to Use Them

**In workshop:**
- Display during teaching segments
- Reference in exercises
- Include in handouts
- Print for physical materials

**In documentation:**
- Embed in markdown files
- Link from exercises
- Add to website
- Include in slide deck

**Format:**
```markdown
![Git Workflow](visuals/git-workflow.png)
```

---

## Priority Order

### Create these first:

1. **Git Workflow** - Everyone needs this Day 1
2. **Project Structure** - Fundamental understanding
3. **Context Pyramid** - Explains why things work
4. **Success Matrix** - Sets clear expectations

### Create these second:

5. **GitHub Pages Flow** - For Day 5
6. **Two-Phase Comparison** - For Day 4
7. **Command Structure** - For Day 3
8. **Terminal Flow** - For beginners

### Nice to have:

9. **Journey Map** - Motivation
10. **Decision Tree** - Troubleshooting
11. **File Paths** - Common issue
12. **Branch Workflow** - Advanced

---

**These visuals will dramatically improve comprehension and reduce confusion!**

**Questions about creating these?** Ask instructor or design team for help.
