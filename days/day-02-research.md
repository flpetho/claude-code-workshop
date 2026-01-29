# Day 2: Research Intelligence

**Duration**: 1 hour
**Format**: Check-in (10 min) + Quick Teaching (10 min) + Working Session (35 min) + Wrap-up (5 min)

---

## Welcome Back! 🎉

Yesterday you got your first project on GitHub. Today you'll add data processing and visualization to make it more powerful.

**What You'll Build Today:**
- ✅ Process multiple items/files
- ✅ Display results visually (charts, tables, dashboards)
- ✅ Add this to YOUR main project
- ✅ Commit progress to GitHub

---

## Check-In (10 min)

### Quick Demos (3 volunteers, 2 min each)

"Show us what you built for Day 1!"

**Celebrate progress!** Even small wins count.

### Common Questions

Instructor addresses any Day 1 blockers:
- GitHub troubles?
- Claude Code confusion?
- Git commands not working?

**No judgement - ask anything!**

---

## Quick Teaching: Working with Data (10 min)

### The Pattern You'll Use Today

**Simple approach:**

1. **Create sample data** (JSON or CSV file)
2. **Process the data** (Claude Code reads and analyzes)
3. **Display results** (table, chart, or dashboard)

### Example: Citation Generator

**Before today:**
```
Generate one citation → Display formatted result
```

**After today:**
```
Generate multiple citations → Display in sortable table
Add charts showing citation types used
Filter by format (APA, Chicago, MLA)
```

### Making Visualizations (No Libraries!)

You don't need JavaScript charting libraries. CSS can do amazing things:

**Bar Chart (CSS only):**
```html
<div class="bar" style="width: 80%;">Citation A (80%)</div>
<div class="bar" style="width: 60%;">Citation B (60%)</div>
<div class="bar" style="width: 40%;">Citation C (40%)</div>
```

With simple CSS, these become visual bars!

**Ask Claude Code:**
```
"Create a bar chart showing [my data] using only HTML and CSS:
- Each bar width represents the value
- Color-code by category
- Include labels
- Make it look professional with FamilySearch colors"
```

### Git Branches (Optional!)

**What's a branch?** A copy of your code where you can experiment safely.

**Basic workflow:**
```bash
git checkout -b new-feature    # Create branch
# ... build feature ...
git add .
git commit -m "Add feature"
git checkout main              # Switch back
git merge new-feature          # Add feature to main
```

**Don't worry if this feels complex!** You can just work on main branch. Branches are optional for this workshop.

---

## Working Session (35 min)

### Your Mission: Add Data Processing to YOUR Project

We'll work through this together. I'll help anyone who gets stuck.

---

### Step 1: Think About Your Data (5 min)

**Question:** What data does YOUR project work with?

**Examples by project type:**

| Project | Data Type | What to Process |
|---------|-----------|-----------------|
| Citation generator | Citations | Multiple sources, show all in table |
| Meeting analyzer | Meeting notes | Multiple meetings, extract action items |
| Research tracker | Research tasks | Tasks by status, show progress bars |
| Time tracker | Time entries | Entries by project, show chart |
| Competitive analysis | Competitor features | Feature comparison table |

**Write down:**
- What data will you process?
- How many items? (Start with 3-5 sample items)
- How should it display? (table, chart, cards?)

---

### Step 2: Create Sample Data (10 min)

**Ask Claude Code:**

```
"Create a JSON file called sample-data.json with 5 sample [your data type]:

Each item should have:
- [field 1]
- [field 2]
- [field 3]

Format as a proper JSON array."
```

**Example for citation generator:**
```
"Create a JSON file called citations.json with 5 sample citations:

Each citation should have:
- title (string)
- author (string)
- year (number)
- format (APA, Chicago, or MLA)
- source_type (book, website, journal)

Format as a proper JSON array."
```

**Check the file was created:**
```bash
ls
cat sample-data.json
```

Does it look right? Good!

---

### Step 3: Display the Data (15 min)

**Now make it visual!**

**Ask Claude Code:**

```
"Create an HTML page (data-view.html) that:

1. Reads data from sample-data.json
2. Displays each item in a [choose: table / cards / list]
3. [Add your specific requirements]
4. Use FamilySearch colors (#2A5083, #0051C1)
5. Make it look clean and professional"
```

**For visualization, ask:**

```
"Add a bar chart showing [metric] using only CSS:
- Horizontal bars with width based on value
- Color-coded by [category]
- Include value labels
- Responsive design"
```

**Test it:**
```bash
open data-view.html
```

**Does it work?** Great!

**Not working?** Tell Claude Code what's broken:
```
"The data isn't loading. Can you check the file path?"
"The bars aren't displaying. Fix the CSS please."
```

---

### Step 4: Add Interaction (5 min)

**Make it interactive!**

```
"Add filter buttons to show only [category] items.
When a button is clicked, update the display."
```

or

```
"Add a search box that filters items as I type."
```

or

```
"Make the table sortable by clicking column headers."
```

**Pick ONE interaction.** Simple and working > complex and broken!

---

### Step 5: Commit Your Work (5 min)

**Save your progress!**

```bash
git status                                    # See what changed
git add .                                     # Stage everything
git commit -m "Add data visualization"        # Commit
git push                                      # Backup to GitHub
```

**Or ask Claude Code:**
```
"Commit my changes with message 'Add data processing and visualization' and push to GitHub"
```

---

## Show & Tell (5 min - during working session)

**2-3 volunteers** (while others work):

"Show us your data visualization! What does it do?"

**30 seconds each** - just show the visual result, don't explain code!

---

## Wrap-Up (5 min)

### What You Built Today

- ✅ Data processing (reading multiple items)
- ✅ Visual display (table, chart, or dashboard)
- ✅ Basic interactivity (filter, sort, or search)
- ✅ Committed to GitHub

### Key Concepts

**1. Claude Code can work with data**
- JSON and CSV files
- Multiple items at once
- Processing and transforming

**2. CSS is powerful**
- No libraries needed for simple charts
- Professional results possible
- Ask Claude Code to style it

**3. Git workflow**
- Add → Commit → Push
- Do this after each working feature
- Never lose your work!

---

## Homework (60 min before Day 3)

### Task 1: Enhance Your Data Feature (30 min)

**Add ONE of these:**

**Option A: Better Visualization**
```
"Improve the chart:
- Add a legend
- Include percentages
- Animate on page load
- Add hover effects"
```

**Option B: More Data**
```
"Expand sample-data.json to 10-15 items
Update the display to handle more data
Add pagination or 'show more' if needed"
```

**Option C: Advanced Filtering**
```
"Add multi-criteria filtering:
- Filter by [field 1] AND [field 2]
- Show count of filtered results
- Reset filters button"
```

**Pick what excites you!**

### Task 2: Make It Mobile-Friendly (15 min)

```
"Test [your file] on a phone screen (or browser device mode).
Make it responsive - should work on mobile."
```

### Task 3: Polish & Commit (15 min)

- Fix any bugs
- Improve styling
- Test everything works
- Commit and push

```bash
git add .
git commit -m "Enhanced data visualization"
git push
```

---

## Project Examples

### Citation Generator → Batch Processing

**What to add:**
- Upload/paste multiple sources
- Generate all citations at once
- Display in sortable table
- Export all to formatted list
- Chart: Citations by format type

### Meeting Analyzer → Dashboard

**What to add:**
- Process multiple meeting notes
- Extract all action items
- Display by owner/status
- Progress bars: Completion rate
- Filter: By meeting, by person, by status

### Research Tracker → Progress View

**What to add:**
- List all research tasks
- Group by ancestor/person
- Progress bars by status
- Filter: Complete vs In Progress
- Chart: Sources checked over time

### Time Tracker → Project Breakdown

**What to add:**
- Log multiple time entries
- Calculate hours by project
- Bar chart showing time distribution
- Filter by date range
- Export to CSV for JIRA import

---

## Troubleshooting

### "My data file isn't loading"

**Check these:**

1. **File location**: Is sample-data.json in the same folder as your HTML?
2. **Browser console**: View → Developer → JavaScript Console (look for errors)
3. **File name**: Match exact spelling and capitalization

**Ask Claude Code:**
```
"The data isn't loading. Here's the error from console: [paste error]"
```

### "The visualization doesn't look right"

**Try:**

```
"The bars are overlapping. Fix the CSS spacing."
"The colors don't match FamilySearch brand. Use #2A5083 primary."
"The chart is too wide on mobile. Make it responsive."
```

### "I don't know what to build"

**Default options:**

1. **Table view** - Always works, professional looking
2. **Bar chart** - Easy to understand, visual impact
3. **Card layout** - Good for mixed content
4. **Progress bars** - Great for status/completion

**Pick the simplest one!** You can always enhance later.

### "Git commands failed"

**Common issues:**

```bash
# Check where you are
pwd

# Make sure you're in project directory
cd ~/Documents/my-project-name

# Check git status
git status

# If confused, start over
git add .
git commit -m "Your message"
git push
```

**Still broken?** Ask instructor or Claude Code!

---

## Tips for Success

### Working with Claude Code

**Be specific about your data:**
```
❌ "Show the data"
✅ "Display citations as a sortable table with columns: Title, Author, Year, Format"
```

**Iterate in small steps:**
```
1. Get data loading first
2. Then display as simple list
3. Then make it a table
4. Then add styling
5. Then add interactivity
```

### Debugging

**When something breaks:**

1. Open browser console (View → Developer → JavaScript Console)
2. Read the error message
3. Copy/paste error to Claude Code
4. Ask it to fix

**Claude Code is GREAT at debugging!**

### Data Processing Patterns

**Reading files:**
```javascript
fetch('data.json')
  .then(response => response.json())
  .then(data => {
    // Use data here
  });
```

**Don't memorize this!** Just tell Claude Code what you want and it writes it.

---

## Key Reminders

- **Start simple**: Basic table before fancy charts
- **Test often**: Open in browser after each change
- **Commit frequently**: After each working addition
- **Ask for help**: No question is too basic
- **Mobile matters**: Test on small screen
- **CSS is powerful**: No libraries needed

---

## Tomorrow (Day 3)

We'll learn:
- Creating custom slash commands (your first!)
- Making things clickable and interactive
- Building forms and user inputs
- Adding these to YOUR project

**Come with questions!** Today's data work is the foundation for tomorrow's interactivity.

---

## Goals Reminder

**Minimum (Everyone should achieve):**
- ✅ Data file created
- ✅ Data displayed somehow (even simple list)
- ✅ Committed to GitHub

**Target (Most people):**
- ✅ Visual display (table or chart)
- ✅ One interactive element (filter or sort)
- ✅ Clean styling

**Stretch (Advanced folks):**
- ✅ Multiple visualizations
- ✅ Complex filtering
- ✅ Animations and polish
- ✅ Git branch workflow

**Remember:** Minimum is SUCCESS! Everything else is bonus. 🎉

---

**Great work today!** You're building real capabilities. See you on Day 3!
