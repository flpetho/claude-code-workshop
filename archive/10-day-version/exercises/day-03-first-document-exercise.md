# Day 3 Exercise: Create Your First UX Document

## Exercise Overview

**Duration**: 25-30 minutes
**Goal**: Use Claude Code to create real UX documentation from scratch
**Difficulty**: Beginner

## Scenario

You're starting a new UX research project for a mobile banking app redesign. You need to create the initial project documentation using Claude Code.

## Prerequisites

- Terminal basics from Day 2
- Claude Code installed and working
- Comfortable navigating to folders

## What You'll Create

1. Project folder structure
2. Research plan document
3. Interview template
4. Synthesis template
5. README for the project

## Step-by-Step Instructions

### Part 1: Set Up Your Project (5 min)

**Step 1: Create project folder**
```bash
cd ~/Documents
mkdir mobile-banking-ux-research
cd mobile-banking-ux-research
```

**Step 2: Verify you're in the right place**
```bash
pwd
# Should show: /Users/[you]/Documents/mobile-banking-ux-research
```

**Step 3: Create initial folder structure**
```bash
mkdir interviews
mkdir analysis
mkdir deliverables
```

**Step 4: List your structure**
```bash
ls
# Should show: analysis  deliverables  interviews
```

### Part 2: Start Claude Code (2 min)

**Step 5: Launch Claude Code**
```bash
claude
```

You should see:
```
Claude Code v1.0.0
Working directory: /Users/[you]/Documents/mobile-banking-ux-research
Ready to help! What can I do for you?
```

**Important:** Make sure Claude shows the correct working directory!

### Part 3: Create Research Plan (8 min)

**Step 6: Ask Claude to create a research plan**

Type this into Claude Code:
```
I'm starting a UX research project for a mobile banking app redesign. Can you create a file called research-plan.md with the following structure:

# Mobile Banking App - UX Research Plan

## Project Overview
- Brief description
- Timeline
- Team members

## Research Goals
- What we want to learn (list 3-5 goals)

## Target Users
- Who we're researching
- Recruitment criteria

## Research Methods
- Interviews (number planned)
- Usability testing
- Survey (optional)

## Key Questions
- Questions we need to answer (list 5-7)

## Deliverables
- What we'll produce
- Delivery dates

## Timeline
- Week-by-week breakdown

Use markdown formatting with headers, bullet points, and clear placeholders I can fill in later.
```

**Step 7: Wait for Claude to create the file**

Claude will:
- Confirm what it's creating
- Generate the file
- Show you the structure

**Step 8: Verify the file was created**

Type `exit` to leave Claude Code temporarily, then:
```bash
ls
cat research-plan.md
```

You should see a well-structured research plan!

### Part 4: Create Interview Template (7 min)

**Step 9: Restart Claude Code**
```bash
claude
```

**Step 10: Ask Claude for an interview template**
```
Create an interview template file called interview-template.md in the interviews/ folder with these sections:

# User Interview - [Participant ID]

## Interview Details
- Date:
- Duration:
- Location:
- Interviewer:
- Note-taker:

## Participant Background
- Age:
- Occupation:
- Banking habits:
- Tech comfort level:

## Interview Questions

### Current Banking Experience
[Questions about their current app usage]

### Pain Points
[Questions about frustrations]

### Feature Preferences
[Questions about desired features]

### Mobile Habits
[Questions about phone usage]

## Key Observations
- [Observation 1]
- [Observation 2]

## Notable Quotes
> "[Quote 1]"
> "[Quote 2]"

## Follow-up Items
- [ ] Item 1
- [ ] Item 2

Use proper markdown formatting and make it easy to use for each interview.
```

**Step 11: Verify the file**

Exit Claude Code and check:
```bash
ls interviews/
cat interviews/interview-template.md
```

### Part 5: Create Analysis Template (5 min)

**Step 12: Restart Claude and create synthesis template**

```bash
claude
```

Then ask:
```
Create a file called analysis/synthesis-template.md with this structure:

# Research Synthesis - Mobile Banking UX

## Executive Summary
[2-3 paragraphs summarizing key findings]

## Methodology
- Number of participants:
- Interview duration:
- Date range:

## Key Themes

### Theme 1: [Theme Name]
- Finding details
- Supporting evidence
- Example quotes

### Theme 2: [Theme Name]
- Finding details
- Supporting evidence
- Example quotes

### Theme 3: [Theme Name]
- Finding details
- Supporting evidence
- Example quotes

## User Pain Points
| Pain Point | Frequency | Severity | Priority |
|------------|-----------|----------|----------|
| [Pain 1]   | High      | Critical | P0       |
| [Pain 2]   | Medium    | Major    | P1       |

## Opportunities
1. [Opportunity 1]
2. [Opportunity 2]
3. [Opportunity 3]

## Recommendations
- **Short-term:** [Quick wins]
- **Medium-term:** [Bigger improvements]
- **Long-term:** [Strategic changes]

## Next Steps
- [ ] Step 1
- [ ] Step 2

Format it as a complete document I can fill in after conducting interviews.
```

### Part 6: Create Project README (3 min)

**Step 13: Create a project overview**

Still in Claude Code, ask:
```
Create a README.md file in the root directory that explains this research project structure. Include:
- What this project is
- Folder structure explanation
- How to use the templates
- Where deliverables go

Make it helpful for anyone joining the project.
```

**Step 14: Exit Claude Code**
```
exit
```

### Part 7: Review Everything (5 min)

**Step 15: Look at your project structure**
```bash
ls -R
```

You should see:
```
./research-plan.md
./README.md

./analysis:
synthesis-template.md

./deliverables:
(empty)

./interviews:
interview-template.md
```

**Step 16: Open your project in Finder/Explorer**
```bash
# macOS:
open .

# Windows:
start .
```

**Step 17: Open one file in your text editor**
```bash
open README.md
```

Read through what Claude created!

## Success Criteria

✅ **You've successfully completed the exercise if:**

1. Created project folder with 3 subfolders
2. Created research-plan.md with complete structure
3. Created interview template in interviews/ folder
4. Created synthesis template in analysis/ folder
5. Created README.md explaining the project
6. All files are well-formatted markdown
7. Templates have helpful placeholders
8. You feel more confident using Claude Code!

## Extension Challenges

**For fast learners who finish early:**

### Challenge 1: Add a Timeline Document

Ask Claude to create a `project-timeline.md` with a week-by-week breakdown using a markdown table:

```
| Week | Activities | Deliverables | Owner |
|------|------------|--------------|-------|
| 1    | ...        | ...          | ...   |
```

### Challenge 2: Create Participant Screening Questionnaire

Create `screening-questionnaire.md` with questions to pre-qualify interview participants.

### Challenge 3: Add Content to Templates

Ask Claude to add realistic placeholder questions and content to the interview template based on mobile banking UX research best practices.

### Challenge 4: Create Consent Form

Ask Claude to create a simple participant consent form template in `deliverables/consent-form.md`.

## Troubleshooting

### Issue: "Command not found: claude"

**Solution:** Claude Code isn't in your PATH or not installed
```bash
claude --version  # Check if it's installed
# If not installed, refer to Day 1 materials
```

### Issue: Claude creates files in wrong location

**Solution:** Check your working directory
```bash
pwd  # Where am I?
cd ~/Documents/mobile-banking-ux-research
claude  # Restart in correct folder
```

### Issue: Can't find files Claude created

**Solution:** Use `ls` to see what's there
```bash
ls
ls -R  # Show all files recursively
```

### Issue: File content isn't what you expected

**Solution:** Be more specific with Claude
```
Can you modify research-plan.md to add a section for "Budget Constraints" after Timeline?
```

### Issue: Want to start over

**Solution:** Delete and recreate
```bash
exit  # Exit Claude Code
rm filename.md  # Delete the file
claude  # Restart and try again
```

## Reflection Questions

After completing the exercise:

1. How was creating documents with Claude Code compared to doing it manually?
2. What surprised you about the process?
3. What would you change in your approach next time?
4. What real project could you use this for at work?

## Real-World Application

**This same workflow works for:**

- Competitive analysis projects
- Design system documentation
- Product requirements gathering
- User testing projects
- Feature specification docs
- Design review documentation

**The pattern is always:**
1. Create folder structure
2. Start Claude Code
3. Ask for documents with specific structure
4. Verify and refine
5. Fill in actual content

## Next Steps

**For tomorrow (Day 4):**
- We'll learn how to organize projects even better
- Best practices for folder structure
- Creating CLAUDE.md project guides
- Making your setup reusable

**Optional homework:**
- Use this same approach for a real work project
- Create documentation for something you're actually working on
- Experiment with different document types

---

## Checklist: Did You Complete Everything?

- [ ] Created project folder structure
- [ ] Started Claude Code in correct location
- [ ] Created research-plan.md
- [ ] Created interview-template.md in interviews/
- [ ] Created synthesis-template.md in analysis/
- [ ] Created README.md
- [ ] Verified all files exist
- [ ] Opened files to review content
- [ ] Feel more confident with Claude Code
- [ ] Can see how to use this for real work

**Congratulations!** You just created a complete research project structure using Claude Code. This is a skill you'll use constantly in your UX/PM work!

---

*Need help? Questions? Post in the workshop channel or reach out to [instructor contact]*
