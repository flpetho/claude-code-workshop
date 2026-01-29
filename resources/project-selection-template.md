# Project Selection Template

**Use this to define your main workshop project on Day 1**

---

## Project Name

[Choose a catchy, memorable name]

**Examples:**
- QuickCite (citation generator)
- MeetingSync (meeting analyzer)
- ResearchHub (genealogy tracker)
- TimeWise (time tracker)

---

## One-Sentence Description

**Format:** [Tool name] helps [target users] [accomplish task] by [method/approach].

**Your description:**

[Write your one-sentence description here]

**Examples:**
- "QuickCite helps genealogy researchers create properly formatted source citations by filling out a simple form and choosing their preferred format."
- "MeetingSync helps product managers extract action items from meeting notes by automatically identifying tasks, owners, and deadlines."
- "ResearchHub helps FamilySearch users track their genealogy research by visualizing progress across multiple family lines and sources."

---

## Problem Statement

### What problem does this solve?

[Describe the pain point clearly]

**Examples:**
- "Manually formatting citations takes 5-10 minutes per source and often has errors."
- "Finding action items in 10+ meeting notes per week wastes 2 hours of PM time."
- "Losing track of which sources I've already checked for each ancestor leads to duplicate work."

### Who has this problem?

[Be specific about your users]

**Examples:**
- "FamilySearch genealogy researchers who cite 10+ sources per research session"
- "Product managers who attend 5-8 meetings per week"
- "Anyone doing multi-generational genealogy research"

### How do they currently solve it?

[What's the current workaround?]

**Examples:**
- "Manually typing citations following a style guide - slow and error-prone"
- "Reading through meeting notes and manually creating task lists - tedious"
- "Maintaining spreadsheets that quickly become outdated and confusing"

---

## Target Users

**Primary user:** [Most important user type]

**Secondary users:** [Other people who might use this]

**User characteristics:**
- Technical skill level: [Beginner / Intermediate / Advanced]
- Frequency of use: [Daily / Weekly / Monthly]
- Pain level: [High / Medium / Low]

**Example:**
```
Primary user: FamilySearch genealogy researchers
Secondary users: Professional genealogists, family history consultants

User characteristics:
- Technical skill: Beginner to intermediate
- Frequency: Multiple times per research session (weekly)
- Pain level: High (affects quality of research documentation)
```

---

## Core Feature

**The ONE thing your tool MUST do to be useful.**

**Your core feature:**

[Describe the single most important capability]

**Why this feature first:**

[Why is this the most critical feature?]

**Example:**
```
Core Feature: Generate formatted citation from form input

When a user enters:
- Source title
- Author name
- Publication year
- Source type

The tool outputs:
- Properly formatted citation in selected format (APA/Chicago/MLA)
- Copy-to-clipboard button
- Visual confirmation of success

Why this first: Without accurate citation generation, nothing else matters.
```

---

## Supporting Features

**2-3 additional features that make it better (in priority order)**

### Feature 1

**What it does:**

[Description]

**Why it's valuable:**

[How it helps users]

**Example:**
```
Feature 1: Multiple format support

What: User can select APA, Chicago, or MLA format
Why: Different publications and institutions require different formats
```

### Feature 2

**What it does:**

[Description]

**Why it's valuable:**

[How it helps users]

### Feature 3 (Optional)

**What it does:**

[Description]

**Why it's valuable:**

[How it helps users]

---

## Success Criteria

**How will you know your project is successful?**

### Functional Success
- [ ] Core feature works reliably
- [ ] Supporting features implemented
- [ ] No critical bugs
- [ ] Works on desktop and mobile

### Quality Success
- [ ] Looks professional
- [ ] Easy to understand how to use
- [ ] Helpful error messages
- [ ] Smooth user experience

### Personal Success
- [ ] I would actually use this tool
- [ ] I learned valuable skills
- [ ] I'm proud to show it off
- [ ] I completed it in 5 days

---

## Technology Approach

**How will you build this?**

**Primary technology:** [HTML/JavaScript/CSS, React, etc.]

**Data storage:** [JSON files, localStorage, none needed]

**Visualizations:** [CSS charts, tables, cards, etc.]

**Example:**
```
Primary: HTML/CSS/JavaScript (no frameworks)
Data: JSON file for sample citations, localStorage for saved citations
Visualizations: Card-based layout, CSS bar charts for citation type breakdown
```

---

## Day-by-Day Plan

### Day 1: Foundation
**Goal:** Project setup and basic structure

**Deliverables:**
- [ ] Project created with workshop script
- [ ] GitHub repo connected
- [ ] Basic HTML page with project title and description
- [ ] First commit pushed

**Example:** "Create basic citation form with 4 input fields and submit button"

---

### Day 2: Data Processing
**Goal:** Add data handling and visualization

**Deliverables:**
- [ ] Process multiple items/entries
- [ ] Display data visually (table/chart/cards)
- [ ] Basic interactivity

**Example:** "Generate multiple citations, display in sortable table, add bar chart showing citation types used"

---

### Day 3: Interactivity
**Goal:** Make it respond to user actions

**Deliverables:**
- [ ] Interactive elements (buttons, forms, filters)
- [ ] First custom slash command
- [ ] User feedback (success/error messages)

**Example:** "Add format selector dropdown, copy-to-clipboard button, create /cite command"

---

### Day 4: Polish
**Goal:** Make it professional

**Deliverables:**
- [ ] Enhanced styling
- [ ] Error handling
- [ ] Documentation (README)
- [ ] Power feature added

**Example:** "Add citation library (save/load), improve mobile layout, write complete README"

---

### Day 5: Deploy & Present
**Goal:** Ship it!

**Deliverables:**
- [ ] Deployed to GitHub Pages
- [ ] Screenshot added to README
- [ ] 3-minute presentation prepared
- [ ] Demonstrated to team

---

## Future Improvements

**What would you add AFTER the workshop?**

**Nice-to-haves (post-workshop):**
1. [Feature idea]
2. [Feature idea]
3. [Feature idea]

**Dream features (someday):**
1. [Ambitious idea]
2. [Ambitious idea]

**Example:**
```
Nice-to-haves:
1. Import citations from CSV file
2. Export entire bibliography
3. Share citation library via URL

Dream features:
1. Browser extension for one-click citations from any webpage
2. Integration with FamilySearch.org
3. OCR to extract citation data from images
```

---

## Scope Control

### In Scope (Will build this week)
- [ ] [Feature]
- [ ] [Feature]
- [ ] [Feature]

### Out of Scope (Not building this week)
- [ ] [Feature]
- [ ] [Feature]
- [ ] [Feature]

**Example:**
```
In Scope:
- Manual citation entry via form
- Three format outputs (APA, Chicago, MLA)
- Save citations to localStorage
- Display saved citations in table

Out of Scope:
- Import from other tools
- Collaborative features
- Cloud sync
- Mobile app
- Browser extension
```

---

## Risk Assessment

### What could go wrong?

**Technical risks:**
- [Risk 1]: [Mitigation plan]
- [Risk 2]: [Mitigation plan]

**Scope risks:**
- [Risk 1]: [Mitigation plan]

**Example:**
```
Technical risks:
- localStorage might not work in all browsers
  Mitigation: Fall back to JSON file download/upload

- Citation formatting rules are complex
  Mitigation: Start with basic formats, add complexity later

Scope risks:
- Too ambitious for 5 days
  Mitigation: Core feature first, supporting features only if time allows
```

---

## Commitment Statement

**I commit to:**
- [ ] Building this project over 5 days
- [ ] Completing at minimum the core feature
- [ ] Committing my code to GitHub daily
- [ ] Presenting my work on Day 5
- [ ] Asking for help when stuck
- [ ] Supporting my fellow workshop participants

**Signature:** [Your name]

**Date:** [Today's date]

---

## Notes & Ideas

**Use this space for brainstorming, sketches, or random thoughts:**

[Free-form notes]

---

## Validation Checklist

**Before finalizing your project choice, check:**

### Is it feasible?
- [ ] Can be built in 5 days (1 hour per day + homework)
- [ ] Doesn't require complex backend or database
- [ ] Technology is within my skill level (or learnable)

### Is it valuable?
- [ ] Solves a real problem I or others have
- [ ] I would actually use this tool
- [ ] Clear benefit over current solution

### Is it scoped correctly?
- [ ] One core feature (not three)
- [ ] 2-3 supporting features max
- [ ] Nice-to-haves clearly separated

### Am I excited about it?
- [ ] Interested in the problem domain
- [ ] Eager to show the final result
- [ ] Will keep working on it after workshop

**If you checked all boxes, you're ready to build!** 🚀

---

## Quick Examples

### Citation Generator
- **Core:** Generate formatted citations from form input
- **Support 1:** Multiple formats (APA, Chicago, MLA)
- **Support 2:** Copy to clipboard
- **Support 3:** Save citation library

### Meeting Analyzer
- **Core:** Extract action items from meeting notes
- **Support 1:** Assign owners to action items
- **Support 2:** Filter by owner/status
- **Support 3:** Export to email format

### Research Tracker
- **Core:** Track research tasks by ancestor
- **Support 1:** Visualize progress with charts
- **Support 2:** Filter by status/priority
- **Support 3:** Generate research log report

### Time Tracker
- **Core:** Log time entries by project
- **Support 1:** Visualize time breakdown
- **Support 2:** Weekly/monthly reports
- **Support 3:** Export for JIRA import

### Competitive Analysis
- **Core:** Feature comparison matrix
- **Support 1:** Add/edit competitors easily
- **Support 2:** Filter features by category
- **Support 3:** Export as shareable report

---

**Ready to define your project? Fill out this template and you're ready to build!**

**Need help choosing?** Ask your instructor or fellow participants during Day 1.

**Remember:** Simple and working > complex and broken. Start small, you can always add more later!

---

*Project Selection Template - Claude Code 101 Workshop*
*Version 1.0 - January 2026*
