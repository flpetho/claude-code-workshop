# Main Project Guide

## Overview

Over the next 5 days, you'll build a tool using Claude Code that demonstrates your new skills and solves a real problem.

**Your project should either**:
- **Enhance FamilySearch or genealogical research** - New experiences, tools, or features
- **Make you more effective as a UX/PM professional** - Productivity tools, workflow automation, analysis dashboards

## Requirements

Your project must:

✅ **Built progressively** - Add features each day as you learn new techniques
✅ **Use at least 3 workshop techniques**:
   - Custom slash commands
   - Data processing/visualization
   - HTML prototype/dashboard
   - Git workflow (commits, branches, PRs)
   - Parallel processing or agents

✅ **Deployed to GitHub** - With good documentation
✅ **3-minute presentation** - Ready for Day 5 showcase
✅ **Solves a real problem** - Something you or others will actually use

## Choosing Your Project

### ✅ Good Projects (Just Right Scope)

**FamilySearch / Genealogy Tools**:
- Source citation generator with multiple format outputs
- Family tree story generator from GEDCOM data
- Genealogy research tracker with progress dashboard
- Record hint analyzer with comparison table
- FamilySearch UI concept (mobile navigation, new feature)
- Historical record transcription helper
- Migration path visualizer (where families moved over time)
- Surname origin and meaning lookup tool
- Relationship calculator (figure out exact cousin relationships)

**UX/PM Productivity Tools**:
- Meeting notes analyzer (extracts action items, decisions, blockers)
- JIRA time tracker prototype (HTML widget concept)
- Competitive analysis dashboard (track 3-5 competitors)
- User feedback synthesizer (theme extraction from 50+ comments)
- Design handoff documentation generator
- Prototype generator workflow (custom commands for common patterns)
- Research synthesis dashboard (interview analysis)
- User persona generator from research data
- Feature prioritization calculator (RICE/Value vs Effort)
- Usability test findings aggregator

### ❌ Too Big (Can't Complete in 5 Days)

- "Rebuild entire FamilySearch site"
- "AI that solves all genealogy problems automatically"
- "Complete project management platform like JIRA"
- "Full design system with 50+ components"
- "Social network for genealogists"

### ❌ Too Small (Not Enough Depth)

- "Single HTML page with static content"
- "Basic calculator with no special features"
- "Simple contact form"
- "To-do list without any unique features"

### 🎯 Sweet Spot Features

**Start with ONE core feature**, then add 2-3 supporting features:

**Example: Source Citation Generator**
- Core: Generate citations from input fields
- Supporting: Multiple formats (APA, Chicago, etc.)
- Supporting: Copy-to-clipboard button
- Supporting: Save/load citation data

**Example: Meeting Notes Analyzer**
- Core: Upload notes, extract action items
- Supporting: Assign owners to action items
- Supporting: Export to email format
- Supporting: Track completed vs pending

## Daily Checkpoints

### Day 1: Project Foundation
**Goal**: Project defined and initialized

**Deliverables**:
- Project created with `workshop-init-project.sh`
- CLAUDE.md filled out with project description
- GitHub repo created and connected
- First simple feature or HTML page
- Initial commit pushed

**Example**: If building Source Citation Generator, create basic HTML form with input fields

---

### Day 2: Data Processing
**Goal**: Add feature that processes or visualizes data

**Deliverables**:
- Data processing/analysis feature working
- Simple visualization (chart, table, dashboard)
- Git branch used for development
- Feature merged to main

**Example**: Citation generator now processes input and generates formatted citations

---

### Day 3: Interactive Component
**Goal**: Add visual/interactive element and custom command

**Deliverables**:
- Interactive component built (clickable prototype, dynamic UI)
- At least 1 custom slash command created
- Pull request created and merged
- Project is taking shape!

**Example**: Add copy-to-clipboard button, format selector dropdown, `/cite` command

---

### Day 4: Advanced Feature & Polish
**Goal**: Add "power feature" and polish everything

**Deliverables**:
- Advanced feature using custom commands or parallel processing
- README written (what it does, how to use)
- All features tested and working
- Ready for deployment

**Example**: Add citation library (save/load), batch citation generation

---

### Day 5: Deploy & Present
**Goal**: Ship it and share it!

**Deliverables**:
- Deployed to GitHub Pages (or documented why not applicable)
- 3-minute presentation prepared
- Celebrated your achievement! 🎉

**Example**: Live citation generator accessible at URL, presented to team

## Project Ideas by Domain

### FamilySearch User-Facing Tools

**Beginner-Friendly**:
1. **Quick Source Citation Builder** - Forms → formatted citations
2. **Family Story Template Generator** - Fill in details → narrative story
3. **Research Checklist Tool** - Track sources to check for each ancestor

**Intermediate**:
4. **Record Hint Comparison Dashboard** - Compare multiple hints side-by-side
5. **Migration Path Visualizer** - Map where family moved over time
6. **Relationship Calculator** - Figure out exact cousin relationships
7. **GEDCOM Analyzer** - Upload GEDCOM, see statistics and insights

**Advanced**:
8. **FamilySearch Mobile UI Concept** - Redesigned mobile navigation
9. **Collaborative Research Space** - Share findings with other researchers
10. **Source Conflict Resolver** - Help reconcile conflicting information

### UX/PM Productivity Tools

**Beginner-Friendly**:
1. **Meeting Notes Template** - Structured format with auto-sections
2. **Quick Competitive Comparison** - Simple feature matrix
3. **User Quote Library** - Searchable research quotes

**Intermediate**:
4. **Action Item Extractor** - Upload meeting notes → action items list
5. **Research Synthesis Dashboard** - Process interviews, extract themes
6. **Design Critique Checklist** - Structured design review framework
7. **JIRA Time Tracker Concept** - HTML widget prototype
8. **Feature Prioritization Calculator** - RICE or Value/Effort scoring

**Advanced**:
9. **Prototype Generator Workflow** - Custom commands for common patterns
10. **User Feedback Aggregator** - Process 50+ comments, find patterns
11. **Design Handoff Package Generator** - Specs → developer documentation
12. **Usability Test Analyzer** - Multiple test sessions → findings report

## Getting Started: Day 1 Homework

### Step 1: Choose Your Project (10 min)

Ask yourself:
- What problem do I face regularly?
- What would save me (or FamilySearch users) time?
- What am I excited to build?
- Can I build a basic version in 5 days?

**Write down**:
- Project name
- One-sentence description
- Who it helps
- Core feature (the main thing it does)

### Step 2: Define Your Scope (10 min)

**Core Feature**: The ONE thing your tool must do

**Supporting Features** (2-3):
- What makes it more useful?
- What makes it more polished?
- What techniques from workshop can you apply?

**Nice-to-Haves** (future improvements):
- What could you add after the workshop?

### Step 3: Update CLAUDE.md (10 min)

Fill out your project's CLAUDE.md file:

```markdown
# Project Context

## What We're Building

[Project name] helps [target users] to [main task/goal].

The problem: [What pain point does this solve?]

## Target Users

- [User type 1 - be specific]
- [User type 2 - be specific]

## Key Features

1. **[Core feature]**: [What it does]
2. **[Supporting feature 1]**: [What it does]
3. **[Supporting feature 2]**: [What it does]

## Technologies

- HTML/CSS/JavaScript for interface
- Markdown for documentation
- Git/GitHub for version control
- [Any other tools you plan to use]

## Project Type

[Choose: FamilySearch Tool, Genealogy Research Tool, UX Tool, PM Productivity Tool]

## Success Criteria

By Day 5, this project will:
- [ ] Have working core feature
- [ ] Include at least 2 supporting features
- [ ] Be deployed and documented
- [ ] Demonstrate at least 3 workshop techniques

## Next Steps

**Day 1**: [What to build]
**Day 2**: [What to add]
**Day 3**: [What to add]
**Day 4**: [What to polish]
**Day 5**: Deploy and present
```

### Step 4: Build First Feature (20 min)

Ask Claude Code:

**If building interface/tool**:
```
"Create an HTML page for [your tool] with:
- Title and description
- Basic form/interface for [core feature]
- Clean, professional styling using FamilySearch colors (#2A5083 primary, #0051C1 accent)
- Responsive layout"
```

**If building dashboard/analyzer**:
```
"Create an HTML dashboard for [your tool] with:
- Header with project name
- Section for [input/data]
- Section for [output/results]
- Simple CSS styling with FamilySearch brand colors"
```

Preview it, iterate, commit it!

## Tips for Success

### Time Management
- **Don't overscope**: One working feature is better than three broken ones
- **Iterate quickly**: Build → Test → Improve → Commit
- **Ask for help**: Instructor and peers are here to help
- **Simplify if needed**: Better to finish something small than abandon something big

### Working with Claude Code
- **Be specific**: "Create a sortable table" not "make it better"
- **Iterate**: "Now add a search filter" after table works
- **Reference context**: "Using the data from results.json, create a chart"
- **Break it down**: One feature at a time

### Git Best Practices
- **Commit frequently**: After each working feature
- **Descriptive messages**: "Add citation format dropdown" not "update"
- **Use branches**: Create branch for each major feature
- **Push regularly**: Don't lose your work!

### When You Get Stuck
1. **Simplify**: Can you do a simpler version first?
2. **Ask**: Instructor, peers, or Claude Code itself
3. **Research**: Look at example projects in `examples/`
4. **Pivot**: If something's not working, try a different approach

## Presentation Guidelines (Day 5)

### 3-Minute Format

**0:00-0:30** - Introduction (30 seconds)
- "I built [name], which helps [users] do [task]"
- "The problem was [pain point I experienced/observed]"

**0:30-2:00** - Demo (90 seconds)
- Show the tool in action
- Focus on core feature
- Highlight 1-2 cool details

**2:00-2:30** - Learning & Impact (30 seconds)
- "I learned [1-2 key skills from workshop]"
- "This will help [how it's useful]"
- Optional: "Next I'll add [future improvement]"

**2:30-3:00** - Questions (30 seconds)
- Brief Q&A

### Demo Tips

**Do**:
- Have it open and ready (don't waste time navigating)
- Show the end result first, then explain how it works
- Talk while you demo (don't have silent moments)
- Show personality (you're excited about this!)

**Don't**:
- Apologize for bugs (just explain what it's supposed to do)
- Read code line-by-line
- Explain every detail (high-level is fine)
- Rush through without showing anything

**If Something Breaks**:
- Stay calm: "This would normally show [X]"
- Show screenshots/video backup if you have them
- Explain what it does instead of showing
- Your effort still counts!

## Example Project Walkthrough

### Project: "QuickCite - Source Citation Generator"

**Day 1**: Created HTML form with fields for source type, title, author, date, URL. Basic styling.

**Day 2**: Added citation formatting logic. When user fills form, generates APA and Chicago format citations. Used parallel processing to generate multiple formats at once.

**Day 3**: Built format selector (dropdown to choose APA, Chicago, MLA). Added copy-to-clipboard button. Created `/cite` command that asks questions and generates citations.

**Day 4**: Added citation library feature (save/load citations). Export all citations to formatted list. Polished styling, wrote README.

**Day 5**: Deployed to GitHub Pages. Presented to team. Got feedback, planning to add batch import from CSV next.

**Techniques Used**:
- Custom slash command (`/cite`)
- Data processing (format conversion)
- Interactive HTML interface
- Git workflow (branches, PRs, deployment)

---

## Support & Resources

**During Workshop**:
- Ask instructor during sessions
- Post questions in workshop Slack
- Review day modules for technique refreshers
- Check `examples/` directory for inspiration

**After Workshop**:
- Continue building your project
- Share with team in FamilySearch Slack
- Use in your actual work!
- Help others learn Claude Code

**Remember**: The goal isn't perfection—it's learning by building. Your project demonstrates you can use Claude Code to materialize ideas. That's incredibly valuable! 🚀

---

**Ready to start? Let's build something amazing!**
