# Day 3: Your First Claude Code Session

## Learning Objectives

By the end of this session, you will:
1. Start Claude Code in a project and understand what it sees
2. Communicate effectively with Claude Code to get better results
3. Use Claude Code to create and edit files for real UX/PM work
4. Understand what Claude Code can and cannot do
5. Complete a real documentation task using Claude Code

## Recap: Where We Are

**Day 1:** You installed Claude Code and verified it works
**Day 2:** You learned essential terminal commands
**Day 3 (Today):** You'll actually use Claude Code for real work!

## Starting Claude Code in a Project

### The Basic Workflow

Every time you want to use Claude Code, you follow these steps:

1. **Navigate to your project** using terminal
2. **Start Claude Code** in that folder
3. **Ask Claude to help** with your work
4. **Exit when done**

### Step-by-Step: Starting Your First Session

**Step 1: Navigate to a project folder**

```bash
cd ~/Documents/my-project
```

**Step 2: Check you're in the right place**

```bash
pwd
ls
```

**Step 3: Start Claude Code**

```bash
claude
```

You'll see:
```
Claude Code v1.0.0
Working directory: /Users/you/Documents/my-project
Ready to help! What can I do for you?
```

**Important:** Claude Code can only see files in the folder where you started it (and subfolders). It can't access your entire computer - only this project.

### Understanding Claude's Context

When you start Claude Code, it can:
- ✅ Read any file in the current directory and subdirectories
- ✅ Create new files and folders
- ✅ Edit existing files
- ✅ See your file structure
- ❌ NOT access files outside this directory
- ❌ NOT browse the internet (it works offline)
- ❌ NOT remember previous sessions (each session is fresh)

**This is good for security and privacy!**

## How to Talk to Claude Code

Claude Code understands natural language, but **specific requests get better results**.

### ❌ Vague Requests (Less Effective)

```
"Help me with my project"
"Make it better"
"Do something with these files"
```

**Problem:** Claude doesn't know what you want.

### ✅ Specific Requests (More Effective)

```
"Create a README.md file that explains this UX research project"

"Read interview-notes.md and extract the top 5 themes into a summary file"

"Create a meeting-notes template for product team meetings with sections for attendees, decisions, and action items"
```

**Why better:** Clear goal, specific output, actionable.

## The Claude Code Communication Pattern

Follow this pattern for best results:

### 1. Set Context

Tell Claude what you're working on:
```
"I'm working on a UX research project about mobile banking apps. I have 5 interview transcripts and need to synthesize the findings."
```

### 2. Specify the Task

Be clear about what you want:
```
"Can you read all the files in the interviews/ folder and create a summary document that lists the top themes, key quotes, and recommendations?"
```

### 3. Clarify the Format

Tell Claude how you want the output:
```
"Create it as a markdown file with headers for each section, bullet points for themes, and a table for recommendations."
```

### Complete Example

**You:**
```
I'm working on a competitive analysis of 3 project management tools. I have raw notes in competitor-notes.txt. Can you read that file and create a structured comparison document called competitive-analysis.md with sections for Features, Pricing, Pros, Cons, and a recommendations table?
```

**Claude will:**
1. Read competitor-notes.txt
2. Analyze the content
3. Create competitive-analysis.md with proper structure
4. Show you what it created

## Common Tasks for UX/PM Professionals

Here are practical ways to use Claude Code in your daily work:

### Task 1: Create Documentation

**You ask:**
```
Create a user research plan document called research-plan.md with sections for Research Goals, Target Audience, Methodology, Timeline, and Deliverables
```

**Claude does:**
- Creates the file
- Adds proper markdown structure
- Includes placeholder text you can fill in

### Task 2: Organize Meeting Notes

**You ask:**
```
Read rough-notes.txt and create a formatted meeting-notes.md document with clear sections, bullet points, and action items extracted
```

**Claude does:**
- Reads your messy notes
- Structures them logically
- Extracts action items
- Formats everything nicely

### Task 3: Create Templates

**You ask:**
```
Create a user interview template called interview-template.md with sections for participant info, questions, responses, observations, and follow-up items
```

**Claude does:**
- Creates a reusable template
- Includes all sections you need
- Formats it professionally

### Task 4: Synthesize Research

**You ask:**
```
Read all files in the research/ folder and create a synthesis document that identifies patterns and themes across the data
```

**Claude does:**
- Reads multiple files
- Finds common themes
- Creates a summary document
- Organizes findings logically

### Task 5: Format Content

**You ask:**
```
Take the content in draft.txt and reformat it into a proper design specification document with headers, lists, and a table for component properties
```

**Claude does:**
- Reads the draft
- Applies proper formatting
- Structures content logically
- Creates tables if needed

## Real Example: Creating a Design Doc

Let's walk through a complete example.

### Scenario
You need to create a design specification document for a new feature.

### Step 1: Start Claude Code

```bash
cd ~/Documents/mobile-app-redesign
claude
```

### Step 2: Ask Claude

**You type:**
```
I need to create a design specification for a new user onboarding flow. Can you create a document called onboarding-spec.md with the following sections:

1. Overview - What this feature does
2. User Flow - Step-by-step user journey
3. Screens - List of screens needed
4. Components - UI components required
5. Interactions - User interactions and animations
6. Accessibility - A11y considerations
7. Success Metrics - How we'll measure success

Use markdown formatting with headers, bullet points, and placeholders I can fill in.
```

### Step 3: Claude Creates the File

Claude will:
1. Confirm what it's going to create
2. Create the file with all sections
3. Show you the structure
4. Let you know it's done

### Step 4: Review and Edit

```bash
cat onboarding-spec.md
```

Or open it in your text editor:
```bash
open onboarding-spec.md
```

### Step 5: Ask for Refinements

If you want changes:
```
Can you add a section for Edge Cases after Interactions?
```

Claude will update the file.

## What Claude Code Can Do

### ✅ Excellent For:

**Documentation**
- Create structured documents
- Format existing content
- Generate templates
- Organize information

**File Management**
- Create files and folders
- Rename and move files
- Organize project structure
- Read and analyze files

**Content Creation**
- Draft text content
- Create markdown tables
- Generate lists and outlines
- Format data

**Analysis**
- Synthesize multiple documents
- Extract key information
- Identify patterns
- Summarize content

**Templates & Boilerplate**
- Create reusable templates
- Generate standard documents
- Set up project structures
- Create consistent formats

### ❌ Not Designed For:

**Visual Design**
- Can't create actual designs or mockups
- Can't work directly with Figma/Sketch
- Can't generate images

**Real-Time Collaboration**
- One person per session
- Doesn't integrate with Slack/Teams directly

**Internet Access**
- Can't browse websites
- Can't fetch live data
- Works offline

**Remembering Across Sessions**
- Each session starts fresh
- Doesn't remember past conversations

## Pro Tips for Better Results

### Tip 1: Be Specific About Format

**Instead of:**
```
"Make a list of features"
```

**Say:**
```
"Create a markdown file with a table listing features, their priority (High/Medium/Low), and status (Done/In Progress/Planned)"
```

### Tip 2: Reference Files by Name

**Instead of:**
```
"Look at that interview file"
```

**Say:**
```
"Read participant-03-interview.md"
```

### Tip 3: Ask Claude to Read First

**Good pattern:**
```
"Can you read all the files in the research/ folder and tell me what you see? Then I'll ask you to synthesize them."
```

This helps you verify Claude found the right files.

### Tip 4: Break Down Complex Tasks

**Instead of:**
```
"Create a complete UX research report with everything"
```

**Do:**
```
1. "Create the research-report.md structure with all sections"
2. "Read the interview files and add key findings to the report"
3. "Add a recommendations section based on the findings"
```

### Tip 5: Use Clear File Names

Claude works better with descriptive file names:
- ✅ `user-interview-participant-01.md`
- ❌ `notes.txt`

### Tip 6: Ask Claude to Explain

If you're not sure what Claude did:
```
"Can you explain what you just created and how it's organized?"
```

### Tip 7: Verify Before Moving On

Always check the output:
```bash
cat filename.md
# or
open filename.md
```

## Common Mistakes & How to Avoid Them

### Mistake 1: Starting Claude in the Wrong Folder

**Problem:** Claude can't see your files

**Solution:**
```bash
pwd              # Check where you are
cd ~/Documents/your-project
claude           # Now start Claude
```

### Mistake 2: Vague Instructions

**Problem:** Claude doesn't know what you want

**Solution:** Be specific about:
- What files to read
- What to create
- What format to use
- Where to save output

### Mistake 3: Not Checking the Output

**Problem:** You assume Claude did what you wanted

**Solution:** Always verify:
```bash
ls               # See what files were created
cat filename.md  # Check the content
```

### Mistake 4: Expecting Claude to Remember

**Problem:** You exit and restart, expecting Claude to remember

**Solution:** Each session is fresh. Give context every time:
```
"I'm continuing work on the research synthesis. Last time we created summary.md. Now I need to..."
```

### Mistake 5: Asking for Visual Design

**Problem:** Claude Code works with text files, not design tools

**Solution:** Use Claude for:
- Design documentation
- Component specifications
- Design system documentation
- Not for actual visual mockups

## Practice Exercise: Create a UX Document

Let's practice with a real task.

### The Challenge

Create a user persona document using Claude Code.

### Step-by-Step

**1. Navigate to your practice folder**
```bash
cd ~/Documents/claude-practice
```

**2. Start Claude Code**
```bash
claude
```

**3. Ask Claude to create a persona template**
```
Create a user persona document called persona-template.md with these sections:

1. Persona Name & Photo (placeholder)
2. Demographics (age, location, occupation)
3. Goals & Motivations
4. Frustrations & Pain Points
5. Tech Comfort Level
6. Typical Day
7. Quote (in their voice)
8. How Our Product Helps

Use markdown formatting with headers and bullet points. Add placeholder text that I can customize.
```

**4. Review the output**
```bash
cat persona-template.md
```

**5. Ask for a modification**
```
Add a section for "Preferred Channels" (email, phone, in-person, etc.) after Demographics
```

**6. Exit Claude Code**
```
exit
```

**Success!** You just created a reusable template with Claude Code.

## Hands-On Exercise

See [day-03-first-document-exercise.md](../exercises/day-03-first-document-exercise.md) for a guided exercise where you'll:

1. Create a project folder
2. Start Claude Code
3. Create real UX documentation
4. Practice editing and refining
5. Build confidence with the workflow

## Success Checklist

By the end of Day 3, you should be able to:

- [ ] Navigate to a project and start Claude Code
- [ ] Give clear, specific instructions
- [ ] Create documentation files
- [ ] Ask Claude to read and analyze files
- [ ] Verify Claude's output
- [ ] Make refinements and edits
- [ ] Exit Claude Code properly
- [ ] Feel confident using Claude for real work

## Tomorrow: Day 4

**We'll learn:**
- How to organize projects for maximum Claude Code efficiency
- Best practices for folder structure
- Creating CLAUDE.md project guides
- File naming conventions
- Setting up projects for long-term success

**Homework (Optional):**
1. Practice the exercise from today
2. Create one real document for your work using Claude Code
3. Note any questions or challenges you encountered

## Common Questions

**Q: Can I use Claude Code for multiple projects?**
A: Yes! Just navigate to each project folder and start Claude Code there. Each project gets its own session.

**Q: Does Claude remember what I did yesterday?**
A: No, each session is independent. But your files remain, so Claude can read them in future sessions.

**Q: Can I undo something Claude did?**
A: Files Claude creates/edits are saved normally. Use `git` for version control, or keep backups.

**Q: What if Claude makes a mistake?**
A: Just delete the file and ask again, or ask Claude to fix it. You're always in control.

**Q: Can I copy/paste into Claude Code?**
A: Yes! Copy text from anywhere and paste it into your terminal.

**Q: How do I know what Claude can access?**
A: Claude can only access files in the folder where you started it (and subfolders below).

## Key Takeaways

1. **Always start Claude in your project folder** - Context matters!
2. **Be specific with requests** - Clear instructions = better results
3. **Verify the output** - Check what Claude created
4. **Break down complex tasks** - Step by step works better
5. **Each session is fresh** - Give context every time
6. **Claude works with text files** - Perfect for documentation

**You're now ready to use Claude Code for real UX/PM work!**

---

*Questions? Stuck? Post in the workshop channel or reach out to [instructor contact]*
