# Day 1 Exercise: Portfolio Setup

**Duration**: 20 minutes (in-session) + 45 minutes (homework)
**Goal**: Initialize your project, push to GitHub, and plan your week

---

## Part 1: In-Session Practice (20 minutes)

Follow along with the instructor. Everyone will complete these steps together.

### Step 1: Initialize Your Project (5 min)

**Open terminal** and run:

```bash
workshop-init-project.sh your-project-name
```

**Choose a descriptive project name**:
- ✅ Good: `citation-generator`, `meeting-analyzer`, `research-tracker`
- ❌ Avoid: `project1`, `test`, `my-thing`

**Navigate into your project**:

```bash
cd ~/Sites/projects/your-project-name
```

**Explore what was created**:

```bash
ls -la                    # List all files (including hidden)
open .                    # Open folder in Finder
cat README.md             # View README content
```

**✓ Checkpoint**: You should see:
- README.md
- CLAUDE.md
- .gitignore
- .git/ directory (hidden)
- .claude/ directory
- src/ directory

---

### Step 2: Create GitHub Repository (5 min)

**In your browser**:

1. Go to [github.com](https://github.com) and log in
2. Click the **"+"** button (top right) → "New repository"
3. Fill in:
   - **Repository name**: Same as your project name
   - **Description**: Brief description (e.g., "Source citation generator for genealogists")
   - **Public** (so you can share it)
   - ⚠️ **Do NOT** check "Initialize with README" (we already have one!)
4. Click **"Create repository"**

**GitHub will show you commands like this**:

```bash
git remote add origin https://github.com/YOUR-USERNAME/your-project-name.git
git branch -M main
git push -u origin main
```

**Copy those commands and run them in your terminal**

**✓ Checkpoint**: Refresh GitHub page - you should see your README!

---

### Step 3: Open in Claude Code (5 min)

**In terminal** (make sure you're in your project directory):

```bash
claude
```

**Claude Code opens** - you'll see your project files in the conversation context.

**Ask Claude Code**:

```
Create a simple HTML page with:
- Title: [Your Project Name]
- Brief description of what this tool will do
- A placeholder for the main feature (form or interface)
- Clean, professional styling using FamilySearch brand colors:
  - Primary: #2A5083
  - Accent: #0051C1
  - Background: #f5f5f5
- Responsive layout that works on mobile
```

**Wait for Claude Code to create the file**, then test it:

```bash
open index.html
```

**It should open in your browser!**

**✓ Checkpoint**: You have a working HTML page, even if basic!

---

### Step 4: Commit and Push (5 min)

**Check what changed**:

```bash
git status
```

You should see `index.html` listed (red = not staged yet)

**Stage, commit, and push**:

```bash
git add .
git commit -m "Initial setup with first HTML page"
git push
```

**✓ Checkpoint**: Refresh GitHub - your index.html should be there!

---

## Part 2: Homework (45 minutes)

Complete before Day 2. This is YOUR project - make it your own!

---

### Task 1: Define Your Project (10 min)

Open your `CLAUDE.md` file:

```bash
open CLAUDE.md
```

**Fill out these sections**:

#### What We're Building

```markdown
[Project Name] helps [target users] to [accomplish task].

Example:
"QuickCite helps genealogy researchers create properly formatted
source citations in seconds, eliminating manual formatting errors."
```

#### Target Users

```markdown
- FamilySearch users doing genealogy research
- Professional genealogists who cite sources frequently
- Family history consultants helping patrons
```

*(Adapt to YOUR project)*

#### Key Features

```markdown
1. **Core Feature**: [The ONE main thing it does]
   Example: Generate citations from form inputs

2. **Supporting Feature 1**: [What makes it better]
   Example: Multiple format options (APA, Chicago, MLA)

3. **Supporting Feature 2**: [Another useful addition]
   Example: Copy-to-clipboard button

4. **Supporting Feature 3**: [Polish or advanced feature]
   Example: Save citation library locally
```

#### Daily Plan

```markdown
**Day 1**: Project setup, basic HTML structure ✓
**Day 2**: Add [data processing/visualization feature]
**Day 3**: Add [interactive component], create custom command
**Day 4**: Add [advanced feature], polish everything
**Day 5**: Deploy to GitHub Pages, present
```

**Save the file** and commit:

```bash
git add CLAUDE.md
git commit -m "Define project scope and goals"
git push
```

---

### Task 2: Build Your First Feature (20 min)

Now build the CORE feature of your tool. Start simple!

**Open Claude Code**:

```bash
cd ~/Sites/projects/your-project-name
claude
```

**Ask Claude Code to build your core feature**:

**Example prompts** (adapt to your project):

**For a form-based tool**:
```
"Create an HTML form for [your tool] with:
- Input fields for [list the key data fields]
- Submit button
- Results section that displays [what it outputs]
- Use FamilySearch colors
- Add basic JavaScript to handle form submission"
```

**For a dashboard**:
```
"Create an HTML dashboard for [your tool] with:
- Header with project title
- Upload area for [file type] files
- Display section for [what gets visualized]
- Clean layout with FamilySearch brand colors
- Placeholder text explaining what goes where"
```

**For an analyzer/processor**:
```
"Create an HTML interface for [your tool] with:
- Text area where users can paste [input type]
- 'Analyze' button
- Results panel showing [output format]
- Use FamilySearch colors and clean typography"
```

**Iterate until it works**:

1. Claude Code creates the file(s)
2. Open in browser: `open index.html` (or whatever file)
3. Test it - does it work?
4. If not, tell Claude: "The [X] button doesn't work, please fix"
5. Repeat until you have something working!

**Don't aim for perfect** - just get something functional!

**✓ Goal**: You can open your tool in a browser and it does SOMETHING (even if simple)

---

### Task 3: Commit Your Work (5 min)

**Check what you've built**:

```bash
git status
```

**Stage and commit**:

```bash
git add .
git commit -m "Add core feature: [describe what you built]"
```

**Example commit messages**:
- `"Add citation form with APA format generation"`
- `"Add interview analysis text area with theme extraction"`
- `"Add time tracking interface with JIRA export format"`

**Push to GitHub**:

```bash
git push
```

**✓ Checkpoint**: Check GitHub - your feature is backed up!

---

### Task 4: Review for Day 2 (10 min)

**Preview tomorrow's content**:

Read: [Day 2: Research Intelligence](../days/day-02-research.md)

**You'll learn**:
- Processing multiple files
- Parallel processing
- Building data visualizations
- Git branches

**Think about**: How could these techniques apply to YOUR project?

**Examples**:
- Citation generator → Process multiple sources at once
- Meeting analyzer → Handle batch upload of meeting notes
- Research tracker → Visualize research progress over time

---

## Deliverables Checklist

By end of Day 1, you should have:

- [ ] Project created with `workshop-init-project.sh`
- [ ] GitHub repository created and connected
- [ ] Initial commit pushed to GitHub
- [ ] CLAUDE.md filled out with project scope
- [ ] Core feature built (even if basic!)
- [ ] Feature committed and pushed
- [ ] Reviewed Day 2 module

**Total time**: ~65 minutes (20 in-session + 45 homework)

---

## Success Criteria

**Minimum viable** (everyone should achieve):
- ✅ Project on GitHub
- ✅ At least one HTML file
- ✅ CLAUDE.md describes your project
- ✅ 2+ commits pushed

**Good progress**:
- ✅ Core feature partially working
- ✅ Can open tool in browser
- ✅ Clear plan for rest of week

**Excellent work**:
- ✅ Core feature fully working
- ✅ Styled nicely
- ✅ Could demo it right now
- ✅ Excited about building more!

**Don't worry if you're at "minimum viable"** - we're just getting started! The important thing is you have the foundation.

---

## Common Issues & Solutions

### Issue: "I don't know what project to build"

**Solution**: Pick from these proven options:

**Beginner-friendly** (recommended for Day 1):
1. Source Citation Generator
2. Research Checklist Tracker
3. Meeting Notes Template
4. Quick Competitive Matrix

**See more**: [Main Project Guide](../resources/main-project-guide.md)

**Or ask yourself**:
- What task do I do every week that's tedious?
- What would save me 30 minutes a week?
- What do FamilySearch users struggle with?

---

### Issue: "My HTML page doesn't look good"

**That's okay!** We're focusing on function today, not beauty.

**Quick fixes**:
- Ask Claude: "Add better styling with more spacing and cleaner fonts"
- Ask Claude: "Make this responsive for mobile"
- We'll polish more on Day 4!

---

### Issue: "Claude Code created the wrong thing"

**Solution**: Be more specific!

❌ Vague: "Create a form"
✅ Specific: "Create a form with fields for: Source Title (text input), Author Name (text input), Publication Date (date picker), URL (text input), and a 'Generate Citation' button"

**Iterate**:
- "That's close, but make the button blue and larger"
- "Add a section below the form to display the generated citation"

---

### Issue: "Git push failed - authentication error"

**Solution**: Use Personal Access Token

When prompted for password, enter your **Personal Access Token** (not GitHub password)

**Don't have a token?**
1. GitHub → Settings → Developer settings → Personal access tokens
2. Generate new token (classic)
3. Select `repo` scope
4. Copy token and use as password

**See**: [GitHub Setup Guide](../resources/github-setup.md)

---

### Issue: "I'm stuck and don't know what to ask Claude"

**Solution**: Start with simple questions

**Good starter prompts**:
- "Explain what this index.html file does"
- "Add a section for [X] below the title"
- "Change the background color to #f5f5f5"
- "Make the form centered on the page"

**Remember**: Claude Code is here to help! You can ask it to explain, modify, or fix things.

---

## Tips for Success

### Working with Claude Code

1. **Be specific**: "Create a button that says 'Submit'" not "add a button"
2. **Iterate**: Build in small steps, test each one
3. **Use the context**: "Using the form above, add a results section"
4. **Ask for explanations**: "Explain how the JavaScript in this file works"

### Git Best Practices

1. **Commit often**: After each working feature (even small ones)
2. **Descriptive messages**: "Add citation form" not "update"
3. **Push regularly**: Don't lose your work!
4. **Read the output**: Git tells you what to do - read the messages!

### Time Management

1. **Don't overscope**: Simple and working > complex and broken
2. **Ask for help**: Instructor and peers are here to support you
3. **Simplify if needed**: Better to finish something basic than abandon something ambitious
4. **Celebrate progress**: You're building with AI - that's amazing!

---

## What's Next?

**Tomorrow (Day 2)**: You'll add data processing and visualization to your project.

**Examples of what you'll add**:
- Citation generator → Process multiple citations at once
- Meeting analyzer → Extract action items with owners
- Research tracker → Visualize research progress chart
- Time tracker → Display time breakdown by project

**Prepare by**: Having your core feature working (even if basic)

---

## Need Help?

**During workshop hours**:
- Raise hand in Teams
- Ask in workshop chat
- Talk to instructor during hands-on time

**Between sessions**:
- Post in workshop Slack channel
- Review Day 1 module: [Day 1: Foundation](../days/day-01-foundation.md)
- Check examples: `examples/` folder

**After workshop**:
- FamilySearch Slack
- GitHub Issues for Claude Code
- Workshop alumni channel

---

**Great work today!** 🎉

You've set up your professional development environment and started building your first tool with Claude Code. Tomorrow we'll add more capabilities!

**See you on Day 2!**
