# Day 3 Exercise: Prototype & Commands

**In-Session**: 20 minutes  
**Homework**: 60 minutes

## In-Session (20 min)

### Create Custom Slash Command

**Step 1**: Create command file (5 min)
```bash
mkdir -p .claude/commands
touch .claude/commands/flow.md
open .claude/commands/flow.md
```

**Add this content**:
```markdown
---
description: Generate Mermaid user flow diagram
---

Create a Mermaid flowchart for the described user flow.

Include:
- Start and end points
- Decision nodes (diamond shapes)
- Action nodes (rectangles)
- Flow arrows with labels
- Happy path and error cases

Save as a markdown file with the diagram.
```

**Step 2**: Test command (5 min)
```bash
claude
```

Then type: `/flow user login process`

**Did it work?** You should get a Mermaid diagram!

**Step 3**: Commit (5 min)
```bash
git add .claude/commands/flow.md
git commit -m "Add /flow command for generating user flows"
git push
```

**Step 4**: Create Pull Request (5 min)
- Go to GitHub repository
- Click "Pull requests" tab
- Click "New pull request"
- Select your branch
- Add description
- Create pull request
- Merge it!

## Homework (60 min)

### Task 1: Add Interactive Component (40 min)

Choose ONE to add to your project:

**Option A: Navigation Tabs**
```
"Add tab navigation to [your page]:
- 3-4 tabs for [different sections]
- Click to switch between views
- Active tab highlighted
- Smooth transitions"
```

**Option B: Collapsible Sections**
```
"Add collapsible/accordion sections to display [your data]:
- Click header to expand/collapse
- One open at a time OR multiple open
- Smooth animation
- +/- icon that rotates"
```

**Option C: Modal Dialog**
```
"Add a modal dialog for [action]:
- Button to open modal
- Overlay background (semi-transparent)
- Close button and click-outside-to-close
- Form or content inside
- Smooth fade-in animation"
```

**Option D: Filter/Search**
```
"Add search/filter functionality:
- Search box for [your data]
- Live filtering as user types
- Show result count
- Highlight matching text"
```

### Task 2: Create Project-Specific Command (20 min)

Create a command that helps YOUR workflow.

**Examples**:
- Citation generator: `/cite [source-type]`
- Meeting analyzer: `/analyze-meeting [file]`
- Research tracker: `/add-task [ancestor] [source-type]`

**Template**:
```markdown
---
description: [What your command does]
---

[Instructions for Claude Code]

[Expected inputs]
[Expected outputs]
[Format specifications]
```

**Test it!** Make sure it works before committing.

## Deliverables

- [ ] Created /flow command
- [ ] Made pull request on GitHub
- [ ] Added interactive component to project
- [ ] Created custom command for your workflow
- [ ] Tested everything works
- [ ] Committed and pushed

## Examples by Project

**Citation Generator**:
- Interactive: Format selector dropdown
- Command: `/cite [book/website/census]`

**Meeting Analyzer**:
- Interactive: Collapsible meetings list
- Command: `/analyze-meeting [filename]`

**Research Tracker**:
- Interactive: Drag-and-drop task status
- Command: `/add-research [person] [source]`

**Time Tracker**:
- Interactive: Date range picker
- Command: `/log-time [project] [hours]`

## Tomorrow (Day 4)

Polish your project, add advanced features, prepare for deployment!
