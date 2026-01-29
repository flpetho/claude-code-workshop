# Professional Claude Code Workflow

**For workshop graduates ready to level up**

---

## Overview

You've completed Claude Code 101 and built several projects. You're ready for the professional workflow that delivers 10x better results.

**What you'll learn:**
- Why planning before building matters
- The two-phase workflow
- Using multiple AI agents effectively
- Full orchestration system setup
- Real project examples

---

## The Problem

**Direct building approach** (what you learned in workshop):

```
Idea → Claude Code → Build → Iterate → Done
```

**Works great for:**
- ✅ Learning
- ✅ Simple projects
- ✅ Quick prototypes
- ✅ Single features

**Limitations:**
- ❌ Lots of back-and-forth clarification
- ❌ Assumptions made by Claude Code
- ❌ Frequent revisions
- ❌ Unclear requirements
- ❌ Harder to collaborate with team

---

## The Solution: Two-Phase Workflow

### Phase 1: Planning (30-60 min)

**Agent:** Any AI assistant (Claude Desktop, ChatGPT, Gemini, etc.)

**Goal:** Create comprehensive project specification

**Artifacts produced:**
- OVERVIEW.md - What, why, who
- SCOPE.md - In/out of scope
- USER-STORIES.md - Use cases
- ARCHITECTURE.md - Technical design
- TECHNICAL-STACK.md - Technology decisions
- TASKS.md - Implementation breakdown
- HANDOFF.md - Summary for builder

### Phase 2: Building (30-90 min)

**Agent:** Claude Code

**Goal:** Implement according to specifications

**Process:**
1. Read all planning documents
2. Understand complete context
3. Build features systematically
4. Follow architecture decisions
5. Implement task by task

---

## Why This Works

### Context is Everything

**Without planning docs:**
```
You: "Build a citation generator"
Claude Code: "What fields should it have?"
You: "Title, author, year..."
Claude Code: "What formats?"
You: "APA and Chicago"
Claude Code: "How should it display?"
You: "In a table... no wait, cards... actually..."
[Many iterations, uncertainty, revisions]
```

**With planning docs:**
```
You: "Read .planning/ and build the citation generator"
Claude Code: [Reads complete specs]
Claude Code: "I understand. Building:
- Form with 8 fields per TECHNICAL-STACK.md
- APA/Chicago/MLA formats per ARCHITECTURE.md
- Card layout per USER-STORIES.md
- Export feature per SCOPE.md
Starting implementation..."
[Builds correctly first time]
```

### Separation of Concerns

**Planning Agent** specializes in:
- Requirements gathering
- Asking clarifying questions
- Technical decision-making
- Architecture design
- Breaking down complexity

**Building Agent** (Claude Code) specializes in:
- Code implementation
- File operations
- Integration
- Testing
- Debugging

**Each agent does what it's best at!**

---

## Setting Up the System

### Step 1: Install Full Project Script

**Get the orchestration system:**

```bash
# Clone or download to your machine
# (Contact workshop instructor for repository access)

cd ~/Sites
git clone [repository-url] claude-tools

# Make scripts executable
chmod +x ~/Sites/claude-tools/scripts/*.sh

# Add to PATH (add to ~/.zshrc or ~/.bash_profile)
echo 'export PATH="$HOME/Sites/claude-tools/scripts:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

**Verify installation:**
```bash
init-new-project.sh --help
```

### Step 2: Create Your First Planned Project

```bash
init-new-project.sh genealogy-research-dashboard
cd ~/Sites/projects/genealogy-research-dashboard
```

**What gets created:**
```
genealogy-research-dashboard/
├── .planning/              # Planning documents
│   ├── AGENT-PLANNING-GUIDE.md
│   ├── HANDOFF.md (you'll create this)
│   ├── TECHNICAL-STACK.md
│   ├── PROJECT-CHECKLIST.md
│   ├── tasks/
│   └── codebase/
├── .claude/
│   └── agents/            # Symlinked specialized agents
├── docs/
├── src/
├── README.md
└── .git/
```

### Step 3: Planning Phase

**Open your planning agent** (Claude Desktop, ChatGPT, etc.):

```
"I'm in the project directory: 
~/Sites/projects/genealogy-research-dashboard

Please read .planning/AGENT-PLANNING-GUIDE.md and help 
me plan this project."
```

**Planning agent will:**
1. Ask about your project goals
2. Clarify requirements
3. Suggest technical approaches
4. Create planning documents
5. Break down into tasks

**You collaborate with planning agent** on:
- What features are essential vs nice-to-have
- Who the users are and what they need
- Technical architecture decisions
- Technology stack choices
- Implementation order

**When done, planning agent creates:**

`.planning/HANDOFF.md` - The complete spec for building agent

### Step 4: Building Phase

**Open Claude Code:**

```bash
cd ~/Sites/projects/genealogy-research-dashboard
claude
```

**Start building:**

```
"Please read all files in the .planning/ directory, 
especially HANDOFF.md. Report back what you understand 
about this project before we start building."
```

**Claude Code summarizes understanding, then:**

```
"Great! Let's start building. Begin with the tasks 
outlined in .planning/tasks/"
```

**Claude Code builds systematically:**
- Follows architecture
- Uses chosen technologies
- Implements features in order
- Asks fewer clarifying questions
- Produces higher quality code

---

## Planning Templates

### OVERVIEW.md

```markdown
# Project Overview

## What We're Building
[Clear description of the tool/application]

## Problem Statement
[What problem does this solve? Who has this problem?]

## Success Criteria
[What does "done" look like? How will we measure success?]

## Timeline
[How long will this take? Any deadlines?]

## Stakeholders
[Who cares about this? Who will use it?]
```

### USER-STORIES.md

```markdown
# User Stories

## Primary Users
[Who are they? What do they need?]

## Use Cases

### Use Case 1: [Name]
**As a** [user type]
**I want to** [goal]
**So that** [benefit]

**Acceptance Criteria:**
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

### Use Case 2: [Name]
...
```

### ARCHITECTURE.md

```markdown
# Technical Architecture

## System Overview
[High-level description of how it works]

## Components
- Component 1: [Purpose]
- Component 2: [Purpose]
- Component 3: [Purpose]

## Data Flow
[How does data move through the system?]

## File Structure
[How should code be organized?]

## Key Technical Decisions
1. Decision: [What we decided]
   Rationale: [Why we decided this]
   
2. Decision: [What we decided]
   Rationale: [Why we decided this]
```

### TECHNICAL-STACK.md

```markdown
# Technical Stack

## Languages
- [Language 1]: [Why?]
- [Language 2]: [Why?]

## Frameworks/Libraries
- [Framework 1]: [Why?]
- [Framework 2]: [Why?]

## Tools
- [Tool 1]: [Why?]
- [Tool 2]: [Why?]

## Constraints
[Any limitations? Things to avoid?]

## Alternatives Considered
[What else did we consider? Why not chosen?]
```

### HANDOFF.md

```markdown
# Project Handoff

## Quick Summary
[2-3 sentences: What is this? Why are we building it?]

## Core Requirements
1. Requirement 1
2. Requirement 2
3. Requirement 3

## Technical Approach
[How should this be built? Key architecture decisions]

## Implementation Order
1. Phase 1: [What to build first]
2. Phase 2: [What to build second]
3. Phase 3: [What to build third]

## Key Files to Create
- file1.html: [Purpose]
- file2.js: [Purpose]
- file3.css: [Purpose]

## Success Criteria
[How do we know we're done?]
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

## Notes for Builder
[Anything else important to know?]
```

---

## Real Example: Before & After

### Project: Family Research Dashboard

**Goal:** Track genealogy research progress across multiple family lines

#### Approach A: Direct Building (60 min)

**Conversation with Claude Code:**

```
You: "Build a family research dashboard"
Claude Code: "What should it track?"
You: "Research tasks for different ancestors"
Claude Code: "What information per task?"
You: "Name, source type, status... um, maybe priority?"
Claude Code: "How should it display?"
You: "A table? Or maybe cards?"
Claude Code: "Should there be filtering?"
You: "Oh yeah, good idea. By ancestor and status"
Claude Code: "Any data persistence?"
You: "Um, maybe localStorage? Or is that overkill?"
[20 minutes of clarifying questions]
[Claude Code builds version 1]
You: "Actually, can we add date tracking?"
[Revision]
You: "And can sources be clickable to a detail view?"
[Another revision]
You: "The layout doesn't work on mobile"
[Another revision]
```

**Result:** Works, but took many iterations. Some features inconsistent. Architecture feels patched together.

#### Approach B: Planning First (75 min total)

**Phase 1: Planning with Claude Desktop (30 min)**

```
You: "Help me plan a family research dashboard"
Claude Desktop: "Great! Let me ask some questions..."
[Systematic requirements gathering]
[Technical decision discussion]
[Architecture planning]
[Task breakdown]
```

**Created planning docs including:**

```markdown
# ARCHITECTURE.md (excerpt)

## Data Model
Each research task has:
- ancestor_id (link to person)
- source_type (census, vital record, etc.)
- source_name
- status (not_started, in_progress, completed, blocked)
- priority (high, medium, low)
- date_created
- date_completed
- notes
- findings

## Display Strategy
- Card layout (better for varied content than table)
- Group by ancestor
- Color-code by status
- Badges for priority
- Expand card for notes/findings
- Mobile-first responsive design

## Filtering Strategy
- Filter by: ancestor, status, priority, source_type
- Multi-select filters (AND logic)
- Persist filter state in URL params
- Quick filter buttons for common views
```

**Phase 2: Building with Claude Code (45 min)**

```
You: "Read .planning/ and build the family research dashboard"
Claude Code: "I see. This is a research tracking tool with:
- Card-based layout per ARCHITECTURE.md
- 8 fields per task per data model
- Multi-filter system
- Mobile responsive design
- localStorage persistence

Beginning implementation in this order:
1. Data structure and sample data
2. Card display component
3. Filter system
4. Add/edit functionality
5. Responsive styling
6. localStorage integration

Starting now..."

[Builds systematically]
[Few clarifying questions]
[Higher quality first pass]
```

**Result:** Professional quality. Consistent architecture. Fewer revisions needed. Clear code organization.

---

## When to Use Which Approach

### Use Simple Direct Approach When:

✅ **Learning new concepts**
- Focus is on understanding, not output
- You want to experiment
- Quality doesn't matter yet

✅ **Quick prototypes**
- Throwaway code
- Testing an idea
- Time-boxed exploration

✅ **Single simple features**
- Adding one button
- Fixing one bug
- Simple styling change

✅ **You know exactly what you want**
- No ambiguity
- Clear requirements
- Simple implementation

### Use Two-Phase Planning Approach When:

✅ **Complex projects**
- Multiple features
- Multiple files
- Interconnected components

✅ **Quality matters**
- Production code
- Portfolio pieces
- Team collaboration

✅ **Unclear requirements**
- Still figuring out what to build
- Need to explore options
- Want AI to help plan

✅ **Learning is secondary**
- You want results
- Output quality matters
- Time is valuable

---

## Advanced: Multi-Agent Orchestration

### Using Multiple Specialized Agents

**Beyond two-phase, you can use specialized agents for:**

**1. Planning Agent**
- Requirements gathering
- Architecture design
- Task breakdown

**2. Building Agent (Claude Code)**
- Implementation
- File operations
- Testing

**3. Review Agent**
- Code review
- Security check
- Best practices validation

**4. Documentation Agent**
- API documentation
- User guides
- Code comments

**5. Testing Agent**
- Test case generation
- Edge case identification
- Coverage analysis

### Example Workflow

```bash
# 1. Plan
claude-desktop → Creates .planning/ docs

# 2. Build
claude-code → Implements features

# 3. Review
claude-desktop → Reads code, suggests improvements

# 4. Refine
claude-code → Implements improvements

# 5. Document
claude-desktop → Creates comprehensive docs

# 6. Deploy
Your workflow → Push to production
```

---

## Tips for Success

### Planning Phase

**Be thorough but don't overplan:**
- ✅ Clear requirements
- ✅ Key architectural decisions
- ✅ Technology choices
- ❌ Don't specify every variable name
- ❌ Don't write pseudocode

**Collaborate with planning agent:**
- Ask "What am I not thinking about?"
- Request alternative approaches
- Discuss trade-offs
- Challenge assumptions

**Document decisions:**
- Not just what, but WHY
- Context for future you
- Rationale helps builder agent

### Building Phase

**Trust the plan:**
- Don't second-guess architecture mid-build
- If you want changes, update planning docs first
- Systematic beats scattered

**Work in phases:**
- Build foundation first
- Add features incrementally
- Test each phase
- Don't skip ahead

**Communicate with builder:**
- "Let's start with the data model"
- "Now add the display layer"
- "Next implement filtering"
- Clear phases = better results

---

## Common Mistakes to Avoid

### ❌ Over-Planning
**Problem:** Spending hours planning a simple tool
**Solution:** Match planning depth to project complexity

### ❌ Under-Planning
**Problem:** Jumping to building without clarity
**Solution:** At minimum, answer: What? Who? Why? How?

### ❌ Ignoring the Plan
**Problem:** Planning, then deviating during building
**Solution:** If you want changes, update plans first

### ❌ Wrong Agent for Task
**Problem:** Using Claude Code for planning, desktop for building
**Solution:** Planning agent plans, building agent builds

### ❌ No Handoff Document
**Problem:** Planning docs exist but no synthesis
**Solution:** Always create HANDOFF.md summarizing for builder

---

## Measuring Success

### Quality Indicators

**Good planning phase produces:**
- ✅ Clear HANDOFF.md
- ✅ Specific technical decisions
- ✅ Broken into clear tasks
- ✅ All questions answered
- ✅ Architecture makes sense

**Good building phase produces:**
- ✅ Matches specifications
- ✅ Few revisions needed
- ✅ Consistent code structure
- ✅ Works as planned
- ✅ Professional quality

### Compare Your Results

**Try this experiment:**

1. Build project A using direct approach (time it)
2. Build similar project B using two-phase (time it)
3. Compare:
   - Total time
   - Number of revisions
   - Code quality
   - Your satisfaction

Most people find two-phase takes similar time but produces much better results.

---

## Resources

### Templates & Scripts

**Available in orchestration system:**
- init-new-project.sh - Full setup script
- Planning templates (all .md files)
- Specialized agents (symlinked)
- Git hooks (STATE.md auto-updates)

**Installation:**
[Contact workshop instructor for access]

### Example Projects

**Built with two-phase workflow:**
- Citation generator (FamilySearch tool)
- Meeting analyzer (PM productivity)
- Research dashboard (UX tool)

**Study these** to see planning docs → implementation

### Community

**Join other practitioners:**
- FamilySearch Slack: #claude-code
- Weekly office hours
- Project showcase channel

---

## Next Steps

### 1. Master the Basics First

**Build 2-3 more projects using simple approach:**
- Reinforce fundamentals
- Get comfortable with Claude Code
- Build confidence

### 2. Try Planning on Small Project

**Start with something manageable:**
- Not your most complex idea
- Something with 3-5 features
- Low stakes (portfolio piece, not production)

**Expected outcome:** Feel the difference in quality

### 3. Adopt for Complex Projects

**Once you've proven it works:**
- Use on real work projects
- Share with team
- Refine your process

### 4. Customize the System

**Make it yours:**
- Add your own templates
- Create specialized agents
- Build your workflow library

---

## Getting Help

**Questions? Stuck? Want to share success?**

**During workshop:**
- Ask instructor
- Post in workshop Slack

**After workshop:**
- FamilySearch #claude-code channel
- Office hours (weekly)
- Community showcase

**Remember:** This is advanced technique. Don't feel pressure to adopt immediately. Master basics first, level up when ready.

---

## Conclusion

**The two-phase workflow isn't magic.** It's systematic application of a simple principle:

**Better planning → Better context → Better output**

You've learned the foundation. This is the advanced technique. Use it when it makes sense. Keep building amazing things!

**Questions?** Reach out to the community. We're here to help! 🚀

---

*Professional Workflow Guide - Version 1.0*
*For Claude Code 101 Workshop Graduates*
*January 2026*
