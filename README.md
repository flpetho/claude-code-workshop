# Claude Code 101 - UX/PM Workshop

**Version 2.0 - Revised Curriculum (January 2026)**

A comprehensive 5-day workshop designed to onboard UX and PM professionals to Claude Code, with focus on hands-on building and realistic project completion.

---

## Project Overview

**Target Audience**: UX designers and PM professionals at FamilySearch
**Duration**: 5 days (1 hour sessions + homework)
**Format**: Remote via MS Teams
**Group Size**: 5-10 participants per cohort
**Focus**: Build ONE working tool throughout the week

---

## Recent Changes (v2.0)

### Major Revisions

**Workshop Structure:**
- ✅ Reduced from 10 days to 5 days
- ✅ Changed from theory-heavy to build-focused
- ✅ Students build one project all week (not exercises)
- ✅ Added professional workflow (two-phase planning) on Day 4
- ✅ Simplified git to 3 commands (add, commit, push)
- ✅ GitHub-first approach (create repo in browser, paste commands)

**Content Updates:**
- ✅ All 5 day modules completely rewritten
- ✅ Streamlined for 1-hour sessions (was 3 hours)
- ✅ Removed: agents early, MCP servers, complex git workflows
- ✅ Added: Professional workflow guide, project selection template
- ✅ New tone: Supportive, fear-reducing, celebratory

**Philosophy Shift:**
- FROM: Documentation and learning → TO: Building and shipping
- FROM: Comprehensive coverage → TO: Essential skills only
- FROM: Advanced features early → TO: Advanced as "next steps"

---

## Project Structure

```
claude-code-101/
├── index.html              # Main workshop website (updated)
├── days/                   # Daily module content (ALL REVISED)
│   ├── day-01-foundation.md          ← REPLACED (v2.0)
│   ├── day-02-research.md            ← REPLACED (v2.0)
│   ├── day-03-design.md              ← REPLACED (v2.0)
│   ├── day-04-product-tools.md       ← REPLACED (v2.0)
│   └── day-05-deploy.md              ← REPLACED (v2.0)
├── exercises/              # Hands-on practice (keep existing)
│   ├── day-01-portfolio-setup.md
│   ├── day-02-research-dashboard.md
│   ├── day-03-prototype.md
│   ├── day-04-competitive-intel.md
│   └── day-05-toolkit.md
├── resources/              # Reference materials
│   ├── installation-reference.md     (existing - good)
│   ├── github-setup.md               (existing - good)
│   ├── git-cheatsheet.md             (existing - good)
│   ├── main-project-guide.md         (existing - good)
│   ├── professional-workflow.md      ← NEW (v2.0)
│   ├── project-selection-template.md ← NEW (v2.0)
│   └── visual-guides-reference.md    ← NEW (v2.0)
├── scripts/
│   └── workshop-init-project.sh      (existing - good)
├── archive/                # Old content (for reference)
│   └── 10-day-version/     ← MOVE OLD FILES HERE
│       ├── days/           (old day-*.md files)
│       └── README.md       (explanation of archive)
├── appendix/               # Advanced topics (existing - keep)
│   ├── installation-guides.md
│   ├── advanced-features.md
│   └── orchestration-system.md
├── visuals/                ← NEW FOLDER (to be created)
│   └── (visual assets go here)
├── css/                    # Website styling
├── js/                     # Website functionality
├── README.md               # This file
└── IMPLEMENTATION-SUMMARY.md (existing - update with v2.0 notes)
```

---

## Website Structure (index.html)

### Current Sections

1. **Header**
   - Title: "Claude Code 101 - UX/PM Workshop"
   - Subtitle: "5-Day Workshop • January 2026"

2. **Getting Started** (3 cards)
   - Installation Reference
   - Project Setup Script
   - Git/GitHub Setup

3. **5-Day Workshop** (5 cards)
   - Day 1: Foundation + Project Setup
   - Day 2: Research Intelligence
   - Day 3: Design Tools & Prototypes
   - Day 4: Product Tools & Polish
   - Day 5: Deploy & Ship

4. **Resources** (current cheat sheets)
   - CLI Commands
   - Claude Code Commands

5. **Footer**
   - Workshop details
   - Created date

### Needed Updates to index.html

**Add new "After Workshop" section:**

```html
<section class="after-workshop">
  <h2>After Workshop: Level Up</h2>
  <p class="section-intro">Ready for advanced techniques? These resources help you build at professional level.</p>
  
  <div class="resource-grid">
    <div class="resource-card">
      <h3>Professional Workflow</h3>
      <p>Learn the two-phase planning approach for 10x better results</p>
      <a href="/viewer?file=resources/professional-workflow.md" class="btn-primary">Learn More</a>
    </div>
    
    <div class="resource-card">
      <h3>Project Selection Template</h3>
      <p>Framework for choosing and scoping your next project</p>
      <a href="/viewer?file=resources/project-selection-template.md" class="btn-primary">Download Template</a>
    </div>
    
    <div class="resource-card">
      <h3>Visual Guides</h3>
      <p>Diagrams and visual references for key concepts</p>
      <a href="/viewer?file=resources/visual-guides-reference.md" class="btn-primary">View Guides</a>
    </div>
  </div>
</section>
```

**Update workshop day descriptions to match new content:**

- Day 1: "Professional setup, Git/GitHub basics, first tool" → "Project setup, GitHub workflow, choose your project"
- Day 2: "Build research dashboards, parallel processing" → "Data processing, visualizations, working session"
- Day 3: "From specs to clickable prototypes" → "Custom slash commands, interactive elements"
- Day 4: "Build analysis tools and dashboards" → "Professional workflow, polish your project"
- Day 5: "Build toolkit, deploy to GitHub Pages" → "Deploy to web, present to team"

---

## Content Guidelines for Claude Code

### When Working on Day Modules (days/*)

**Audience**: UX/PM professionals, may be new to terminal/IDEs
**Workspace**: Recommend IDE with integrated terminal (VSCode, Cursor, Antigravity)
**Tone**: Friendly, encouraging, fear-reducing, celebratory
**Approach**: Hands-on over theory, building over reading
**Git**: Always through Claude Code commands, not manual git

**Structure each day includes:**
- Duration and format (always 1 hour total)
- Learning objectives (3-5)
- Check-in section (10 min)
- Quick teaching (10-20 min)
- Working session (25-40 min)
- Wrap-up (5 min)
- Homework (45-60 min)

**Key Principles:**
- Start with "Welcome back!" energy
- Recommend IDE with visual file explorer
- All git commits through Claude Code (not manual commands)
- Include troubleshooting sections
- Add "Minimum/Target/Stretch" goals framework
- Use FamilySearch/genealogy examples
- Assume they're building ONE project all week
- Commit to GitHub after each session (via Claude Code)

**Length**: 2,000-3,000 words per day (not 4,500+ like old version)

**Include:**
- Real examples from UX/PM work
- IDE setup guidance (not just terminal)
- Claude Code commands (not raw git commands)
- "What could go wrong" sections
- Celebration of progress

**Avoid:**
- Assuming terminal comfort
- Teaching manual git commands
- Dense technical jargon without explanation
- Long unbroken paragraphs
- Assumptions about prior knowledge
- Discouraging language

---

### When Working on Exercises (exercises/*)

**Format**: Step-by-step instructions with clear outcomes
**Structure**:
- Prerequisites clearly stated
- Steps numbered and detailed
- Expected outcomes shown
- Troubleshooting included
- Extension challenges for fast learners

**Must include:**
- Time estimates for each task
- Deliverables checklist
- Success criteria (minimum/target/stretch)
- Git commit reminders
- Links to relevant day module

---

### When Working on Resources (resources/*)

**Purpose**: Quick reference and post-workshop learning
**Types**:
1. **Quick references** (cheat sheets) - Single page, printable
2. **Setup guides** (installation, github) - Step-by-step with screenshots
3. **Advanced guides** (professional workflow) - Comprehensive, for after workshop
4. **Templates** (project selection) - Fill-in-the-blank frameworks

**Format**:
- Clear headers and sections
- Visual hierarchy (use markdown effectively)
- Actionable steps
- Examples throughout
- Links to related resources

---

## Workshop Philosophy (v2.0)

### Core Principles

**1. Building > Documentation**
- Students build actual working tools, not just learn concepts
- One project developed progressively over 5 days
- Deploy to internet by Day 5

**2. Context = Quality**
- Day 4 introduces professional two-phase workflow
- Planning phase (any AI) → Building phase (Claude Code)
- Not required for workshop, but shown as "level up"

**3. Git Simplified**
- GitHub.com first (visual, familiar)
- Create repo in browser, paste commands from GitHub
- Daily: git add . → git commit -m → git push
- Claude Code can do git commands for them

**4. Fear Reduction**
- "You won't break your computer" messaging
- Minimum goals everyone can achieve
- Troubleshooting everywhere
- Supportive language throughout

**5. Real Projects**
- Students choose what to build (FamilySearch tools or UX/PM productivity)
- Must solve actual problem they have
- Will use after workshop

---

## Key Concepts (for Claude Code understanding)

### The Two-Phase Workflow

**Introduced on Day 4 as "professional approach"**

**Phase 1: Planning** (any AI agent)
- Claude Desktop, ChatGPT, Gemini, etc.
- Create planning documents
- Make technical decisions
- Design architecture

**Phase 2: Building** (Claude Code)
- Read planning docs
- Build according to specs
- Higher quality output

**Why teach this?**
- Shows progression: simple → professional
- Respects workshop = basics
- Offers growth path post-workshop
- Introduces instructor's actual workflow

**Resources:**
- Full guide: `resources/professional-workflow.md`
- Advanced system: `appendix/orchestration-system.md`
- Not required for workshop completion

---

### Project-Focused Learning

**Students build ONE tool all week:**

**Day 1**: Choose project, setup, basic structure
**Day 2**: Add data processing/visualization
**Day 3**: Add interactivity + custom commands
**Day 4**: Polish + optional power feature
**Day 5**: Deploy + present

**Project types:**
- FamilySearch/genealogy tools (citation generator, research tracker)
- UX/PM productivity (meeting analyzer, competitive dashboard)

**Scoping:**
- 1 core feature (essential)
- 2-3 supporting features (enhancements)
- Future improvements (post-workshop)

**Template:** `resources/project-selection-template.md`

---

### Git/GitHub Approach

**Philosophy: Let Claude Code handle git**

**Workshop approach:**
1. Create GitHub account (if don't have one)
2. Create repo on github.com (visual, comfortable)
3. GitHub shows commands to connect repo
4. Copy commands, paste them into Claude Code session
5. **From then on:** Just tell Claude Code "commit and push my changes"

**Daily workflow:**
```
You → "Commit my changes with message 'Added feature X' and push to GitHub"
Claude Code → Handles git commands automatically
Result → Code safely on GitHub
```

**Why this works:**
- Students don't leave Claude Code session
- No terminal switching
- No memorizing git commands
- Claude Code is already in terminal
- Makes git invisible/automatic

**Setup coverage:**
- Creating GitHub account (brief)
- Creating repository (visual on website)
- Initial connection (copy/paste from GitHub)
- Daily commits (just ask Claude Code)

**No coverage of:**
- Manual git commands (Claude Code handles)
- Complex branching (optional only)
- Pull requests (mentioned, not required)
- Merge conflicts (instructor helps if occurs)
- Git internals (unnecessary for UX/PM)

**Post-workshop:**
- `resources/git-cheatsheet.md` for those who want to learn
- Most will happily let Claude Code handle it forever!

---

## File Integration Instructions

### Step 1: Archive Old Content

**Create archive folder:**
```bash
mkdir -p archive/10-day-version/days
```

**Move old day modules:**
```bash
mv days/day-01-welcome.md archive/10-day-version/days/
mv days/day-02-cli.md archive/10-day-version/days/
mv days/day-03-first-session.md archive/10-day-version/days/
# ... (all old day files)
```

**Create archive README:**
```markdown
# 10-Day Workshop Archive

This folder contains the original 10-day workshop curriculum.

**Why archived?**
- Revised to 5-day format (more realistic)
- Changed to project-focused (vs exercise-focused)
- Simplified for UX/PM audience
- Updated with professional workflow

**For reference only** - Use v2.0 content in main folders.

Archived: January 2026
```

---

### Step 2: Add New Day Modules

**Replace all 5 day files in days/ folder:**

- `day-01-foundation.md` - REPLACE with revised version
- `day-02-research.md` - REPLACE with revised version
- `day-03-design.md` - REPLACE with revised version
- `day-04-product-tools.md` - REPLACE with revised version
- `day-05-deploy.md` - REPLACE with revised version

**Verify formatting:**
- Markdown renders correctly
- Internal links work
- Code blocks display properly
- Headers create proper hierarchy

---

### Step 3: Add New Resources

**Add to resources/ folder:**

1. `professional-workflow.md` - Comprehensive guide to two-phase approach
2. `project-selection-template.md` - Framework for choosing projects
3. `visual-guides-reference.md` - Specifications for creating visual aids

**Keep existing resources:**
- `installation-reference.md` (already good)
- `github-setup.md` (already good)
- `git-cheatsheet.md` (already good)
- `main-project-guide.md` (already good)

---

### Step 4: Update index.html

**Changes needed:**

1. **Update day card descriptions** to match new content
2. **Add "After Workshop" section** with 3 new resource cards
3. **Update footer** if needed (copyright year, etc.)

**Test after updating:**
- All viewer links work (`/viewer?file=path/to/file.md`)
- Cards display properly
- Navigation flows logically
- Mobile responsive still works

---

### Step 5: Create Visuals Folder

**Create new folder:**
```bash
mkdir -p visuals
```

**Will eventually contain:**
- git-workflow.png
- project-structure.png
- context-pyramid.png
- github-pages-flow.png
- two-phase-comparison.png
- command-structure.png
- etc.

**Reference:** `resources/visual-guides-reference.md` has specifications

---

### Step 6: Update IMPLEMENTATION-SUMMARY.md

**Add section for v2.0 changes:**

```markdown
## Version 2.0 Updates (January 2026)

### Major Changes
- Restructured from 10-day to 5-day format
- All day modules completely rewritten
- Added professional workflow guide
- Simplified git approach
- Project-focused learning

### New Files
- resources/professional-workflow.md
- resources/project-selection-template.md
- resources/visual-guides-reference.md
- archive/10-day-version/ (old content)

### Philosophy Changes
- Build > Document
- GitHub-first approach
- Fear reduction focus
- One project all week
- Advanced content = "next steps"

### Status
- ✅ Content complete
- ⏳ Visuals in progress
- ⏳ Pilot testing pending
- ⏳ Launch planned
```

---

## Testing Checklist

After integration, verify:

**Content:**
- [ ] All 5 day modules display correctly
- [ ] New resources load properly
- [ ] Links between documents work
- [ ] Code blocks format correctly
- [ ] Images display (when added)

**Website:**
- [ ] Navigation updated
- [ ] New section displays
- [ ] Mobile responsive
- [ ] All links functional
- [ ] No console errors

**Structure:**
- [ ] Old content archived
- [ ] New content in place
- [ ] Folder structure clean
- [ ] README accurate

**Accessibility:**
- [ ] Proper heading hierarchy
- [ ] Alt text on images (when added)
- [ ] Readable font sizes
- [ ] Good color contrast

---

## Development Commands

```bash
# Start local server to view website
python3 -m http.server 8080

# Open in browser
open http://localhost:8080

# Check for broken links (if using link checker)
linkchecker http://localhost:8080

# Validate markdown (if using validator)
markdownlint days/*.md resources/*.md
```

---

## Working with Claude Code on This Project

### Common Tasks

**Updating day modules:**
```
"Update day-02-research.md following the structure in this README.
Keep it to 2,500 words, use supportive tone, include troubleshooting,
and make it hands-on focused."
```

**Adding new resources:**
```
"Create a cheat sheet for [topic] following the format in 
resources/git-cheatsheet.md - keep it single page and printable."
```

**Updating website:**
```
"Add a new section to index.html for 'After Workshop' resources.
Follow the existing card-grid pattern and link to the three new
resources in resources/ folder."
```

**Creating visuals:**
```
"Based on visual-guides-reference.md, create detailed specifications
for the git-workflow diagram that a designer can implement."
```

---

## Style Guide

### Writing Style

**Voice:**
- Friendly and encouraging
- Professional but not corporate
- Specific and concrete
- Action-oriented

**Tone Examples:**

✅ **Good:**
- "Let's build something!"
- "You've got this!"
- "Here's what you accomplished today"
- "Don't worry if this feels new"

❌ **Avoid:**
- "As previously mentioned in Section 2.3..."
- "Users should be aware that..."
- "It is recommended that participants..."
- "One might consider..."

### Code Formatting

**Commands:**
```bash
# Always show full command
git add .
git commit -m "Add feature"

# Include expected output when helpful
$ claude --version
claude-code version 2.0.0
```

**File paths:**
- Use forward slashes: `path/to/file.md`
- Show from project root: `~/Sites/projects/my-project/`
- Use placeholders: `your-project-name`

**Examples:**
- Use realistic data (not "test" or "asdf")
- FamilySearch/genealogy context
- UX/PM work scenarios

---

## Key Principles

### For Claude Code Working on This Repo

1. **Maintain supportive tone** - This is for people learning something new
2. **Be specific** - "Click here" not "navigate to the interface"
3. **Show, don't tell** - Code examples over explanations
4. **Assume beginners** - Explain terminal, git, everything
5. **Celebrate progress** - Every session ends on high note
6. **Build confidence** - Minimum goals achievable by all
7. **Reduce fear** - "You won't break your computer"
8. **Real projects** - FamilySearch and UX/PM examples
9. **Context matters** - Explain the "why" not just "how"
10. **Keep it moving** - 1-hour sessions, no fluff

---

## Success Metrics

### Workshop Completion

**Participants should:**
- Complete all 5 sessions
- Build one working tool
- Deploy to GitHub Pages
- Present on Day 5
- Feel confident to continue

**Target rates:**
- 90%+ attendance
- 80%+ homework completion
- 100% Day 5 presentations
- 4.5+/5 satisfaction score

---

## Contact & Support

**Workshop Instructor:** [Your contact info]
**FamilySearch Slack:** #claude-code
**Repository:** [GitHub URL]
**Website:** https://claudecode101.netlify.app/

---

## Timeline

**Current Status:** Content complete (v2.0)

**Next Steps:**
1. Integrate content (this phase)
2. Create priority visuals
3. Technical testing
4. Pilot workshop
5. Launch to full audience

**Target Launch:** 3-4 weeks from now

---

## Version History

**v2.0** (January 2026)
- Complete curriculum revision
- 10-day → 5-day restructure
- Project-focused approach
- Professional workflow added
- Git simplified

**v1.0** (December 2024)
- Initial 10-day curriculum
- Theory and exercises
- Comprehensive but long

---

## Additional Documentation

- **Implementation Plan:** See `IMPLEMENTATION-SUMMARY.md` for v2.0 rollout
- **Advanced Topics:** See `appendix/` for post-workshop content
- **Original Content:** See `archive/10-day-version/` for reference
- **Visual Specs:** See `resources/visual-guides-reference.md`

---

**Ready to build!** This workshop will transform how UX/PM professionals use AI tools.

**Let's ship it!** 🚀

---

*Last Updated: January 28, 2026*
*Version: 2.0*
*Status: Content Complete, Ready for Integration*
# Update to trigger rebuild
