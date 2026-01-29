# Day 2 Exercise: Research Dashboard

**In-Session**: 20 minutes
**Homework**: 60 minutes
**Goal**: Add data processing and visualization to your project

---

## In-Session Practice (20 min)

### Step 1: Create Feature Branch (2 min)

```bash
# Make sure you're in your project directory
cd ~/Sites/projects/your-project-name

# Create and switch to new branch
git checkout -b data-visualization

# Verify you're on the branch
git branch
```

You should see `* data-visualization` (asterisk = current branch)

---

### Step 2: Create Sample Data (3 min)

Ask Claude Code:

```
Create a JSON file called sample-data.json with 5 genealogy research themes as sample data:
- Each item should have: theme (string), frequency (number 1-100), category (Research/Documentation/Sources)
- Format as proper JSON array
```

**Verify it was created**:
```bash
cat sample-data.json
```

---

### Step 3: Build Visualization Dashboard (10 min)

Ask Claude Code:

```
Create an HTML dashboard (dashboard.html) that:
1. Reads data from sample-data.json
2. Displays each theme as a horizontal bar chart using only CSS
3. Bar width represents frequency (percentage of 100)
4. Color-code bars by category:
   - Research: #2A5083 (blue)
   - Documentation: #0051C1 (lighter blue)
   - Sources: #005EB8 (medium blue)
5. Add filter buttons to show only items from selected category
6. Include frequency value labels
7. Use FamilySearch brand styling
8. Make it responsive
```

**Test it**:
```bash
open dashboard.html
```

**Does it work?** If not, iterate:
```
"The bars aren't displaying. Can you fix the CSS?"
"Add percentage labels to the bars"
```

---

### Step 4: Commit Your Work (5 min)

```bash
# Check what changed
git status

# Stage all changes
git add .

# Commit with descriptive message
git commit -m "Add data visualization dashboard with CSS bar charts"

# Push branch to GitHub
git push -u origin data-visualization
```

**Verify on GitHub**: Refresh your repository - you should see the new branch!

---

## Homework (60 min)

Now apply data processing and visualization to YOUR main project.

---

### Task 1: Merge Practice Branch (5 min)

First, merge your practice work:

```bash
# Switch back to main
git checkout main

# Merge your feature branch
git merge data-visualization

# Push to GitHub
git push

# Delete the feature branch (cleanup)
git branch -d data-visualization
```

**✓ Checkpoint**: Your main branch now has the dashboard!

---

### Task 2: Plan Your Data Feature (10 min)

**Think about your project**:

What data does it process?
- Citation generator → Multiple citations
- Meeting analyzer → Multiple meetings
- Research tracker → Research tasks/sources
- Time tracker → Time entries by project
- Competitive analysis → Feature comparisons

**What visualization makes sense?**
- Bar chart → Quantities, comparisons
- Progress bars → Status, completion percentages
- Timeline → Chronological events
- Table → Structured data with sorting/filtering
- Cards → Individual items with details

**Write down** (in CLAUDE.md):
```markdown
## Day 2: Data Processing Feature

**Data to process**: [What your tool will handle]

**Processing method**: [Sequential or parallel?]

**Visualization type**: [Chart/table/timeline/etc.]

**User interaction**: [Filter/sort/search/export?]
```

---

### Task 3: Create Feature Branch (2 min)

```bash
# Create descriptive branch name
git checkout -b add-data-processing

# Or be more specific
git checkout -b citation-batch-processing
git checkout -b meeting-action-items
```

---

### Task 4: Build Your Data Feature (35 min)

**Step-by-step approach**:

**A. Create or prepare sample data** (5 min)

Ask Claude:
```
"Create a JSON/CSV file with sample [your data type] for testing.
Include [5-10 items] with these fields: [list fields]"
```

**B. Add data processing** (10 min)

Ask Claude:
```
"Update [your file] to:
- Read data from [data file]
- Process each item to [what you need to do]
- [Use parallel processing if applicable: 'Process all items in parallel']
- Display results in [format]"
```

**C. Add visualization** (15 min)

Ask Claude:
```
"Add a [visualization type] showing [data] using only HTML/CSS:
- [Specific requirements for your use case]
- Color-coded by [category/status/type]
- Interactive [filters/sorting/search]
- FamilySearch brand colors"
```

**D. Test and refine** (5 min)

- Open in browser
- Test all interactions
- Does it work with your data?
- Iterate with Claude if needed

---

### Task 5: Commit and Merge (8 min)

```bash
# Check your changes
git status

# Commit with good message
git add .
git commit -m "Add [description of feature]: [what it does]"

# Example messages:
# "Add batch citation processing with results table"
# "Add meeting analysis with action items dashboard"
# "Add research progress tracker with status bars"

# Push branch
git push -u origin add-data-processing

# Switch to main and merge
git checkout main
git merge add-data-processing
git push

# Clean up branch
git branch -d add-data-processing
```

---

## Deliverables Checklist

By end of Day 2:

- [ ] Completed in-session dashboard exercise
- [ ] Merged practice branch to main
- [ ] Added data processing feature to YOUR project
- [ ] Added data visualization (chart/table/dashboard)
- [ ] Used Git branches for development
- [ ] Committed and pushed all work
- [ ] Project has 2 meaningful features now!

---

## Project Examples

### Citation Generator → Batch Processing

**Feature**: Process multiple citations at once

**Implementation**:
- Form to add multiple sources (repeatable fields)
- "Generate All" button
- Display: Sortable table of formatted citations
- Export: Copy all to clipboard
- Visualization: Bar chart showing citation types used

---

### Meeting Analyzer → Action Items Dashboard

**Feature**: Extract action items from multiple meeting notes

**Implementation**:
- Upload/paste multiple meeting transcripts
- Process in parallel
- Display: Cards for each action item (owner, due date, status)
- Filters: By owner, by status, by meeting
- Visualization: Progress bars showing completion by person

---

### Research Tracker → Progress Visualization

**Feature**: Track research tasks and visualize progress

**Implementation**:
- Add research tasks with status (Not Started/In Progress/Complete)
- Display: Progress bars for each ancestor being researched
- Filter: By status, by source type
- Visualization: Timeline of research activities

---

### Time Tracker → Project Breakdown

**Feature**: Log time entries and visualize by project

**Implementation**:
- Add time entries (project, hours, date)
- Display: Table with filtering and sorting
- Visualization: Horizontal bar chart showing hours by project
- Export: Format for JIRA import

---

## Common Issues & Solutions

### "I don't know what data feature to add"

**Ask yourself**:
- What would make my tool more useful?
- What would I want to see if I used this tool?
- Can I handle multiple items instead of just one?

**Default options**:
- Add batch processing (handle multiple items)
- Add visualization of results
- Add filtering/sorting capability
- Add export functionality

---

### "Parallel processing isn't working"

**Check**:
- Are you processing 5+ items? (parallel helps with many items)
- Are tasks independent? (they shouldn't depend on each other)
- Did you explicitly say "in parallel" in your prompt?

**Alternative**: Sequential processing works great too! Don't force parallel if it doesn't make sense.

---

### "My visualization doesn't look good"

**Quick fixes**:
```
"Improve the spacing and typography"
"Add hover effects to the bars"
"Make the colors more professional"
"Center the dashboard on the page"
```

**Remember**: Function over beauty today. We'll polish on Day 4!

---

### "Git merge conflict"

**Solution**:

1. Look at the conflicting files (Git will tell you which ones)
2. Open each file
3. Find the conflict markers:
   ```
   <<<<<<< HEAD
   [Your version]
   =======
   [Branch version]
   >>>>>>> branch-name
   ```
4. Choose which to keep (or combine them)
5. Delete the markers (`<<<<<<<`, `=======`, `>>>>>>>`)
6. Save file
7. Stage and commit:
   ```bash
   git add .
   git commit -m "Resolve merge conflict"
   ```

**Or ask instructor!**

---

## Tips for Success

### Data Processing

**Start simple**: Handle one item perfectly before handling many

**Test with real data**: Use actual examples from your domain

**Error handling**: What if data is missing or wrong format?

### Visualizations

**CSS is powerful**: You don't need JavaScript charting libraries!

**Progressive enhancement**: Basic table → Add visualization → Add interactions

**Mobile-first**: Test on small screens

### Git Workflow

**Branch per feature**: Keep changes organized

**Commit frequently**: Small commits are better than big ones

**Descriptive messages**: "Add feature X" not "updates"

**Merge when working**: Don't merge broken code

---

## What's Next?

**Tomorrow (Day 3)**: You'll add interactive components and create custom slash commands.

**Examples**:
- Citation generator → Clickable format selector, `/cite` command
- Meeting analyzer → Collapsible meeting sections, `/analyze-meeting` command
- Research tracker → Drag-and-drop task status, `/add-research` command

**Prepare**: Have your data feature working (even if imperfect)

---

**Excellent work!** You're building real capabilities now. See you on Day 3!
