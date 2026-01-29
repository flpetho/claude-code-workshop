# Day 4 Exercise: Set Up a Professional Project

## Exercise Overview

**Duration**: 30 minutes
**Goal**: Create a well-organized project with proper structure and documentation
**Difficulty**: Intermediate

## Scenario

You're starting a new UX project: a competitive analysis of 3 food delivery apps. Set up the project with professional organization that will make Claude Code (and your team) more effective.

## What You'll Create

1. Proper folder structure
2. CLAUDE.md project guide
3. README.md with project overview
4. Templates folder with reusable documents
5. Example folder structure with placeholder files

## Step-by-Step Instructions

### Part 1: Create Project Structure (10 min)

**Step 1: Create main project folder**
```bash
cd ~/Documents
mkdir food-delivery-competitive-analysis
cd food-delivery-competitive-analysis
```

**Step 2: Create folder structure**
```bash
mkdir -p competitors/{uber-eats,doordash,grubhub}
mkdir -p analysis/{features,pricing,ux-patterns}
mkdir -p research/{user-reviews,market-data}
mkdir -p synthesis/{opportunities,threats}
mkdir -p deliverables/{reports,presentations}
mkdir -p templates
mkdir -p resources
mkdir archive
```

**Step 3: Verify structure**
```bash
ls -R
```

You should see all your folders organized!

### Part 2: Create CLAUDE.md (8 min)

**Step 4: Start Claude Code**
```bash
claude
```

**Step 5: Ask Claude to create CLAUDE.md**
```
Create a comprehensive CLAUDE.md file for this food delivery competitive analysis project. Include:

# Food Delivery Apps - Competitive Analysis

## Project Overview
- Brief description: Competitive analysis of Uber Eats, DoorDash, and GrubHub
- Goal: Identify opportunities for our food delivery app
- Timeline: 4 weeks
- Team: UX Research team

## Folder Structure
Explain what goes in each folder:
- competitors/ - Individual folders for each competitor with screenshots, notes, feature lists
- analysis/ - Feature comparisons, pricing analysis, UX pattern documentation
- research/ - User reviews from app stores, market research data, industry reports
- synthesis/ - Identified opportunities and threats from all analysis
- deliverables/ - Final reports and presentations
- templates/ - Reusable document templates
- resources/ - Supporting materials (style guides, screenshots, etc.)
- archive/ - Old versions and deprecated files

## File Naming Conventions
- Use lowercase with hyphens
- Competitor files: `[competitor-name]-[content-type].md`
- Analysis docs: `[analysis-type]-[date].md`
- Dates in ISO format: YYYY-MM-DD

## Working with Claude Code
Add a section explaining how to use Claude Code effectively in this project:
- How to process competitor research
- How to create synthesis documents
- Common commands for this project

## Templates Available
- Competitor analysis template
- Feature comparison matrix template
- Synthesis document template

Format with proper markdown headers, bullet points, and code blocks where helpful.
```

**Step 6: Review the CLAUDE.md**
```
exit
cat CLAUDE.md
```

### Part 3: Create README.md (5 min)

**Step 7: Restart Claude and create README**
```bash
claude
```

```
Create a README.md file with:

# Food Delivery Apps - Competitive Analysis

## Overview
Brief description of the competitive analysis project

## Team
- Lead UX Researcher: [Name]
- UX Designer: [Name]
- Product Manager: [Name]

## Timeline
- Week 1: Research collection
- Week 2: Feature analysis
- Week 3: UX pattern analysis
- Week 4: Synthesis and reporting

## Competitors Analyzed
1. Uber Eats
2. DoorDash
3. GrubHub

## Current Status
- ⏳ Research collection in progress
- ⏳ Analysis pending
- ⏳ Synthesis pending
- ⏳ Report pending

## Key Documents
- [Competitive Analysis Report](deliverables/reports/competitive-analysis-report.md)
- [Feature Comparison Matrix](analysis/features/feature-comparison.md)
- [UX Patterns Analysis](analysis/ux-patterns/patterns-analysis.md)

## Getting Started
1. Read CLAUDE.md for project structure
2. Use templates in templates/ folder
3. Add competitor research to respective folders
4. Synthesize findings in synthesis/ folder

Format professionally with proper markdown.
```

### Part 4: Create Templates (7 min)

**Step 8: Create competitor analysis template**

Still in Claude Code:
```
Create a file called templates/competitor-analysis-template.md with this structure:

# [Competitor Name] - Analysis

## Overview
- Company: [Name]
- App Store Rating: iOS [ ] / Android [ ]
- Downloads: [ ]
- Founded: [ ]
- Market Position: [ ]

## Key Features

### Ordering & Discovery
- [ ] Feature 1
- [ ] Feature 2

### User Experience
- [ ] UX Element 1
- [ ] UX Element 2

### Unique Differentiators
- [ ] What makes them unique

## Pricing Model
- Delivery fees: [ ]
- Service fees: [ ]
- Subscription option: [ ]
- Special pricing: [ ]

## Strengths
1. Strength 1
2. Strength 2

## Weaknesses
1. Weakness 1
2. Weakness 2

## Notable UX Patterns
- Pattern 1
- Pattern 2

## User Feedback (from reviews)
### Positive
> "[Quote from positive review]"

### Negative
> "[Quote from negative review]"

## Screenshots
(Add links to screenshots in resources/)

## Last Updated
[Date]

Use clear markdown formatting throughout.
```

**Step 9: Create feature comparison template**
```
Create templates/feature-comparison-template.md:

# Feature Comparison Matrix

## Core Features

| Feature | Uber Eats | DoorDash | GrubHub | Notes |
|---------|-----------|----------|---------|-------|
| Real-time tracking | ✅ | ✅ | ✅ | All have it |
| Scheduled orders | ✅ | ⏳ | ❌ | UE has best implementation |
| Group ordering | ⏳ | ✅ | ✅ | DD and GH superior |
| Dietary filters | ✅ | ✅ | ⏳ | UE most comprehensive |

Legend:
- ✅ Available & well-implemented
- ⏳ Available but needs improvement
- ❌ Not available

## Discovery & Search

| Feature | Uber Eats | DoorDash | GrubHub | Notes |
|---------|-----------|----------|---------|-------|
| Cuisine filters | ✅ | ✅ | ✅ | Standard |
| Price filters | ✅ | ✅ | ✅ | All have $ - $$$$ |
| Map view | ✅ | ⏳ | ❌ | UE best, DD basic |

## Payment & Checkout

| Feature | Uber Eats | DoorDash | GrubHub | Notes |
|---------|-----------|----------|---------|-------|
| Multiple payments | ✅ | ✅ | ⏳ | Split payments |
| Tip customization | ✅ | ✅ | ✅ | All allow custom |

Add more sections as needed. Use this template for comprehensive feature comparison.
```

### Part 5: Add Example Content (5 min)

**Step 10: Create an example competitor file**
```
Using the competitor analysis template, create an example file at competitors/uber-eats/uber-eats-analysis.md with some placeholder content filled in to show how to use the template.
```

**Step 11: Create a quick start guide**
```
Create a file called resources/quick-start-guide.md that explains:
1. How to add competitor research
2. How to fill out templates
3. How to create synthesis documents
4. Where to put deliverables

Make it a practical guide for team members joining the project.
```

**Step 12: Exit Claude Code**
```
exit
```

### Part 6: Review & Verify (5 min)

**Step 13: Check your complete structure**
```bash
ls -R
```

**Step 14: View key files**
```bash
cat CLAUDE.md
cat README.md
ls templates/
```

**Step 15: Open project in Finder/Explorer**
```bash
# macOS:
open .

# Windows:
start .
```

**Step 16: Open CLAUDE.md in text editor**
```bash
open CLAUDE.md
```

Read through and appreciate your professional setup!

## Success Criteria

✅ **You've successfully completed the exercise if:**

1. Created comprehensive folder structure
2. CLAUDE.md explains entire project
3. README.md has project overview and status
4. Created 2+ templates
5. Added example content
6. Quick start guide exists
7. Structure is logical and clear
8. Files are well-named
9. Ready for team collaboration
10. You understand how organization helps Claude Code

## Extension Challenges

### Challenge 1: Create More Templates

Create templates for:
- `synthesis-template.md` - For opportunity/threat analysis
- `presentation-outline-template.md` - For final presentation
- `weekly-status-template.md` - For project updates

### Challenge 2: Add a Scripts Folder

Create `scripts/` with helpful commands:
```bash
mkdir scripts
```

Then create `scripts/update-status.sh` that lists project progress.

### Challenge 3: Create a Style Guide

In `resources/style-guide.md`, document:
- How to take screenshots
- How to document features
- Writing tone and style
- Image naming conventions

### Challenge 4: Set Up Git

Initialize git for version control:
```bash
git init
git add .
git commit -m "Initial project setup"
```

## Real-World Application

This same structure works for:
- Any competitive analysis
- Design system documentation
- User research projects
- Product requirement gathering
- Feature specification projects

**The key:** Adapt the folders to your needs, but keep the principles:
- Clear structure
- Good documentation (CLAUDE.md + README.md)
- Templates for consistency
- Logical organization

## Common Variations

### For User Research:
```
research-project/
├── CLAUDE.md
├── README.md
├── interviews/
├── observations/
├── surveys/
├── analysis/
└── deliverables/
```

### For Design Specs:
```
design-project/
├── CLAUDE.md
├── README.md
├── specs/
├── flows/
├── wireframes/
├── documentation/
└── reviews/
```

### For Product Management:
```
product-project/
├── CLAUDE.md
├── README.md
├── requirements/
├── planning/
├── documentation/
└── stakeholders/
```

## Troubleshooting

### Issue: Too many folders feel overwhelming

**Solution:** Start simple, add folders as needed
```bash
# Minimum viable structure:
project/
├── CLAUDE.md
├── README.md
├── research/
├── analysis/
└── deliverables/
```

### Issue: Not sure what goes where

**Solution:** If unclear, add a README.md in each folder explaining its purpose

### Issue: Templates feel generic

**Solution:** Customize them! Add sections specific to your work.

## Reflection Questions

1. How does this structure compare to your current project organization?
2. What would you add or change for your specific needs?
3. How will CLAUDE.md help when working with Claude Code?
4. What templates would be most useful for your work?

## Next Steps

**Tomorrow (Day 5):**
- Use this organized project structure
- Learn real UX/PM workflows with Claude Code
- Create actual content in well-organized projects

**Optional homework:**
- Set up a real project using this structure
- Create custom templates for your work type
- Share your CLAUDE.md template with your team

---

## Checklist: Did You Complete Everything?

- [ ] Created comprehensive folder structure
- [ ] CLAUDE.md fully documented
- [ ] README.md with project overview
- [ ] Competitor analysis template created
- [ ] Feature comparison template created
- [ ] Example content added
- [ ] Quick start guide created
- [ ] Verified all files exist
- [ ] Structure is logical
- [ ] Ready to use for real work
- [ ] Understand how this helps Claude Code

**Excellent work!** You've created a professional project setup that will make your work (and Claude Code's assistance) much more effective!

---

*Questions? Need help? Post in the workshop channel or reach out to [instructor contact]*
