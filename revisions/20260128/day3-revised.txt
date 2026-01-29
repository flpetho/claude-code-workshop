# Day 3: Interactive Components

**Duration**: 1 hour
**Format**: Check-in (10 min) + Teaching (15 min) + Working Session (30 min) + Wrap-up (5 min)

---

## Welcome to Day 3! 🚀

Today you'll make your project interactive and create your first custom slash command. By the end, your tool will respond to user actions.

**What You'll Build Today:**
- ✅ Custom slash command (your workflow shortcut!)
- ✅ Interactive elements (clicks, forms, buttons)
- ✅ Add these to YOUR project
- ✅ Test and commit everything

---

## Check-In (10 min)

### Quick Demos (3 volunteers, 2 min each)

"Show us your data visualization from Day 2!"

**What we're looking for:**
- Does it display data?
- Any charts or visual elements?
- Can you interact with it?

**Celebrate what's working!**

### Common Questions

- Data loading issues?
- Visualization troubles?
- Git confusion?

**Ask away - we'll fix it!**

---

## Part 1: Custom Slash Commands (15 min)

### What Are Slash Commands?

**Shortcuts for repeated tasks!**

Instead of typing:
```
"Create a new citation form with fields for title, author, year, and URL, 
formatted with FamilySearch colors, with validation, and save button"
```

You type:
```
/cite
```

**Claude Code does the rest!**

### Why They're Powerful

**Without command:**
- Retype instructions every time
- Forget details
- Inconsistent results

**With command:**
- One word triggers workflow
- Consistent output
- Save 5-10 minutes each time

### Real Examples

**For Citation Generator:**
- `/cite` - Create citation form
- `/format` - Convert to specific format
- `/export` - Export all citations

**For Meeting Analyzer:**
- `/analyze` - Extract action items
- `/summary` - Generate meeting summary
- `/tasks` - Create task list

**For Research Tracker:**
- `/add-source` - Add new source
- `/progress` - Show research progress
- `/report` - Generate status report

---

## Creating Your First Command

### Step 1: Create Command File (5 min - we'll do together)

**In terminal:**

```bash
# Make sure you're in your project
cd ~/Documents/your-project-name

# Create commands folder (if not exists)
mkdir -p .claude/commands

# Create your first command
touch .claude/commands/build.md
```

**Open the file:**
```bash
open .claude/commands/build.md
```

### Step 2: Write Command Instructions (5 min)

**Template structure:**

```markdown
---
description: What this command does (one line)
---

[Instructions for Claude Code to follow]

Include:
- What to create
- How it should look
- What data to use
- Any specific requirements
```

### Example Command for Citation Generator

```markdown
---
description: Create a new citation entry form
---

Create an HTML form for adding a new citation with these fields:

**Input Fields:**
- Source Type (dropdown: Book, Website, Journal, Census)
- Title (text input, required)
- Author (text input, required)
- Publication Year (number input)
- URL (text input for websites)
- Notes (textarea, optional)

**Styling:**
- Use FamilySearch primary color (#2A5083)
- Clean, modern form layout
- Labels above inputs
- Responsive design

**Functionality:**
- Submit button "Add Citation"
- Basic validation (required fields)
- On submit, add to citations array
- Clear form after submit
- Show success message

Save as: citation-form.html
```

### Step 3: Test Your Command (5 min)

**Start Claude Code:**
```bash
claude
```

**Use your command:**
```
/build
```

**Claude Code reads your instructions and builds it!**

**Check the result:**
```bash
open citation-form.html
```

**Does it work?** Awesome! You just created a reusable workflow.

**Not quite right?** Edit `.claude/commands/build.md` and try again.

---

## Part 2: Making Things Interactive (15 min - during working session)

### What We Mean by "Interactive"

**Static (what you have now):**
- Display information
- Look at it
- No response to user

**Interactive (what you'll add):**
- Buttons that DO something
- Forms that collect input
- Filters that change display
- Clicks that trigger actions

### Interactive Element Options

**Pick ONE to add to your project:**

#### Option A: Click to Reveal
```
"Add collapsible sections:
- Click header to expand/collapse
- Smooth animation
- Arrow icon that rotates
- Only one section open at a time"
```

**Use case:** Long lists, detailed information

#### Option B: Form Input
```
"Add a form that:
- Collects user input for [your data]
- Validates required fields
- Adds item to display
- Shows success message"
```

**Use case:** Citation entry, task creation, data collection

#### Option C: Interactive Filters
```
"Add filter buttons that:
- Show/hide items by category
- Highlight active filter
- Update count of visible items
- Reset button to show all"
```

**Use case:** Large datasets, multiple categories

#### Option D: Modal Dialog
```
"Add a modal that:
- Opens when clicking [trigger]
- Semi-transparent overlay
- Close button and click-outside-to-close
- Contains [form/details/actions]
- Smooth fade-in animation"
```

**Use case:** Edit forms, detailed views, confirmations

#### Option E: Drag and Drop
```
"Add drag-and-drop to reorder items:
- Grab any item and drag to new position
- Visual feedback while dragging
- Save new order
- Works on touch devices"
```

**Use case:** Prioritization, organization

---

## Working Session (30 min)

### Mission: Create Command + Add Interaction

**Part 1: Create Your Custom Command (10 min)**

Think about YOUR project. What do you do repeatedly?

**Examples:**

| Project Type | Good Commands |
|--------------|---------------|
| Citation Generator | `/cite`, `/format`, `/export` |
| Meeting Analyzer | `/analyze`, `/extract-tasks`, `/summary` |
| Research Tracker | `/add-task`, `/update-status`, `/report` |
| Time Tracker | `/log-time`, `/weekly-report`, `/export-jira` |
| Competitive Analysis | `/add-competitor`, `/compare`, `/matrix` |

**Step 1:** Decide what your command will do

**Step 2:** Create `.claude/commands/[name].md`

**Step 3:** Write instructions (use template above)

**Step 4:** Test it with `/[name]`

**Step 5:** Iterate until it works

---

**Part 2: Add Interactive Element (20 min)**

Pick ONE interaction from the options above.

**Tell Claude Code:**

```
"Add [interaction type] to [your file]:
[Your specific requirements]
Use FamilySearch colors
Make sure it works on mobile"
```

**Test it:**
```bash
open [your-file.html]
```

**Does the interaction work?** 
- Click the button - does something happen?
- Fill the form - does it add to the page?
- Filter items - does display update?

**Not working?** 
```
"The [interaction] isn't working. Here's what happens: [describe]"
```

---

### Commit Your Work

```bash
git add .
git commit -m "Add custom command and interactive elements"
git push
```

---

## Show & Tell (during working session)

**2-3 volunteers:**

1. "What command did you create?"
2. "What does it do?" (show it!)
3. "What interaction did you add?" (click it!)

**30 seconds each!**

---

## Wrap-Up (5 min)

### What You Built Today

- ✅ First custom slash command
- ✅ Interactive element (clicks, forms, or filters)
- ✅ Applied to YOUR project
- ✅ Committed to GitHub

### Key Concepts

**Custom Commands = Workflow Shortcuts**
- Save time on repeated tasks
- Consistent results
- Build a library of commands

**Interactivity = User Engagement**
- Buttons should DO something
- Forms should collect and process
- Clicks should trigger responses

**Testing Matters**
- Always test in browser
- Click everything
- Try to break it
- Fix what's broken

---

## Homework (60 min before Day 4)

### Task 1: Create Second Command (20 min)

**Pick a different workflow from your project**

Examples:
- First command: Create form
- Second command: Export data
- Third command: Generate report

**Create `.claude/commands/[name].md`**

**Test it!**

### Task 2: Add More Interactivity (25 min)

**Pick ONE more interaction to add:**

**If you added buttons, now add:**
- Form input or modal dialog

**If you added form, now add:**
- Validation with helpful error messages
- Success animation
- Clear form button

**If you added filters, now add:**
- Search box
- Sort controls
- "No results" message

### Task 3: Polish Everything (15 min)

**Make it look professional:**

```
"Improve the styling:
- Better spacing and alignment
- Consistent button styles
- Professional typography
- Smooth transitions and animations
- Mobile responsive"
```

**Test thoroughly:**
- Try every button
- Fill every form
- Click every link
- Check on mobile

**Commit:**
```bash
git add .
git commit -m "Add second command and polish interactions"
git push
```

---

## Command Examples by Project

### Citation Generator

**Command 1: `/cite [type]`**
```markdown
---
description: Create citation form for specific source type
---

Create a citation form optimized for [source type]:

If type is "book":
- Author, Title, Publisher, Year, Pages
If type is "website":
- Author, Title, URL, Access Date, Publisher
If type is "census":
- Census Year, Location, Sheet Number, Line Number

Include format selector (APA, Chicago, MLA)
Generate formatted citation on submit
```

**Command 2: `/export`**
```markdown
---
description: Export all citations as formatted bibliography
---

Collect all saved citations and:
- Format according to selected style
- Sort alphabetically by author
- Generate proper bibliography format
- Create downloadable text file
- Include citation count in header
```

### Meeting Analyzer

**Command 1: `/analyze [file]`**
```markdown
---
description: Extract action items from meeting notes
---

Read meeting notes and extract:
- Action items with assigned owners
- Decisions made
- Follow-up tasks
- Due dates mentioned

Format as:
- ✅ Completed items
- ⏳ Pending items
- 🔴 Overdue items

Display in sortable table
```

**Command 2: `/summary`**
```markdown
---
description: Generate executive summary of meeting
---

Create meeting summary with:
- Date and attendees
- Key decisions (bulleted)
- Action items with owners
- Next meeting date/topics
- Important notes

Format as professional memo
Ready to copy/paste into email
```

---

## Troubleshooting

### "My command doesn't work"

**Check these:**

1. **File location**: Is it in `.claude/commands/` folder?
2. **File extension**: Must be `.md` (not `.txt`)
3. **Format**: Front matter with `---` before and after description?
4. **Command name**: Use lowercase, no spaces (use hyphens)

**Debug:**
```bash
# Check if file exists
ls .claude/commands/

# Check file contents
cat .claude/commands/yourcommand.md

# Restart Claude Code
exit
claude
```

### "Interactive element doesn't work"

**Common issues:**

1. **JavaScript error**: Open browser console, check for errors
2. **Selector wrong**: Element ID/class doesn't match
3. **Event not attached**: Click handler not registered

**Ask Claude Code:**
```
"The button click isn't working. Here's the console error: [paste error]
Please fix the JavaScript."
```

### "How do I know if command is good?"

**Good command:**
- ✅ Does ONE thing well
- ✅ Clear instructions
- ✅ Produces consistent results
- ✅ Saves you time

**Needs work:**
- ❌ Too vague ("make it better")
- ❌ Too many steps
- ❌ Inconsistent output
- ❌ Doesn't save time

**Iterate!** Commands get better with use.

---

## Tips for Success

### Writing Commands

**Be specific:**
```
❌ "Create a form"
✅ "Create a form with fields: Name (text), Email (email input), 
   Message (textarea). Validate email format. Submit button 
   labeled 'Send'. Use FamilySearch blue (#2A5083)."
```

**Include examples:**
```
Example output:
[Show what it should create]
```

**Test and refine:**
- Use command
- See what it creates
- Edit command file
- Use command again
- Repeat until perfect

### Adding Interactivity

**Start simple:**
1. Get button to appear
2. Get button to console.log on click
3. Get button to do the real action
4. Add styling and feedback

**Test immediately:**
- After each change, open in browser
- Click everything
- Try to break it
- Fix issues before moving on

### Debugging

**Browser console is your friend:**

```
View → Developer → JavaScript Console
```

**Common errors:**
- "Uncaught TypeError" = Something is undefined
- "Syntax Error" = Missing bracket or quote
- "Cannot read property" = Element doesn't exist

**Copy error to Claude Code** - it will fix it!

---

## Key Reminders

- **Commands = Time Savers**: Build a library you'll use daily
- **Test Everything**: Click all buttons, fill all forms
- **Mobile Matters**: Always check responsive design
- **Commit Often**: After each working feature
- **Ask For Help**: No question too basic
- **Iterate**: First version doesn't need to be perfect

---

## Tomorrow (Day 4)

We'll learn:
- **Professional workflow** (how pros use Claude Code)
- **Planning phase** (context = better results)
- **Polish your project** (make it shine)
- **Prepare to deploy** (Day 5 you'll ship it!)

**Also:** Introduction to the two-phase workflow (planning → building)

---

## Goals Reminder

**Minimum (Everyone):**
- ✅ One custom command created
- ✅ One interactive element working
- ✅ Committed to GitHub

**Target (Most people):**
- ✅ Two custom commands
- ✅ Multiple interactions
- ✅ Tested and polished

**Stretch (Advanced):**
- ✅ Three+ commands
- ✅ Complex interactions (drag-drop, modals)
- ✅ Fully polished UI
- ✅ Mobile optimized

**Remember:** Minimum = Success! 🎉

---

**Awesome work today!** You're building real interactivity. Tomorrow we level up to professional workflows!

**See you on Day 4!**
