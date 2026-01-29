# Day 5 Exercise: Deploy & Present

**Part 1**: Deploy (30 min)
**Part 2**: Present (3 min)

## Part 1: Deployment (30 min)

### Step-by-Step Deployment Guide

**Task 1: Pre-Deployment Check** (5 min)

```bash
# Make sure you're on main branch
git checkout main

# Pull any changes
git pull

# Check status
git status
```

Should say: "nothing to commit, working tree clean"

**If not**: Commit any remaining changes:
```bash
git add .
git commit -m "Final updates before deployment"
git push
```

**Test locally**:
```bash
open index.html
```

✓ Everything works? Proceed!

---

**Task 2: Enable GitHub Pages** (3 min)

1. Open your repository on github.com
2. Click "Settings" tab (top)
3. Click "Pages" in left sidebar
4. Under "Source":
   - Branch: `main`
   - Folder: `/ (root)`
   - Click "Save"

**GitHub shows**: "Your site is being published at `https://username.github.io/repo-name/`"

**Wait 2 minutes** for build to complete.

---

**Task 3: Test Deployment** (5 min)

Visit your URL: `https://username.github.io/repo-name/`

**✅ Working?** Awesome! Skip to Task 4.

**❌ 404 Error?** Check:
- Is main file named `index.html`? (exact, lowercase)
- Did you push latest changes?
- Wait 2 more minutes

**❌ Missing images/styling?** Fix paths:
```
"My images aren't loading on GitHub Pages. Please fix all image and CSS paths to be relative (not absolute)"
```

---

**Task 4: Update README** (5 min)

Add live demo link to top of README:

```markdown
# [Your Project Name]

🌐 **Live Demo**: https://yourusername.github.io/your-repo-name/

Brief description of what it does...

[rest of README]
```

Commit and push:
```bash
git add README.md
git commit -m "Add live demo URL"
git push
```

---

**Task 5: Add Screenshot** (7 min)

**Take screenshot**:
- Open your deployed site
- Make it look good (full screen)
- Screenshot (Cmd+Shift+4 on Mac, select area)
- Save as `screenshot.png` in project root

**Add to README**:
```markdown
## Screenshot

![Project Screenshot](screenshot.png)

## Features

[your features list]
```

**Commit**:
```bash
git add screenshot.png README.md
git commit -m "Add project screenshot"
git push
```

---

**Task 6: Create Release** (5 min)

**Tag your release**:
```bash
git tag -a v1.0.0 -m "Claude Code 101 Workshop - Initial Release"
git push origin v1.0.0
```

**On GitHub**:
1. Go to repository
2. Click "Releases" (right sidebar)
3. Click "Create a new release"
4. Choose tag: `v1.0.0`
5. Title: `v1.0.0 - Workshop Release`
6. Description:
   ```
   Built during Claude Code 101 Workshop (January 2026)
   
   ## What It Does
   [Your project description]
   
   ## Features
   - [Feature 1]
   - [Feature 2]
   - [Feature 3]
   
   ## Live Demo
   https://yourusername.github.io/your-repo-name/
   ```
7. Click "Publish release"

**✓ Done!** Your project is officially released!

---

## Part 2: Presentation (3 min)

### Presentation Checklist

**Before your turn**:
- [ ] Live site URL ready to open
- [ ] Site tested and working
- [ ] Presentation outline reviewed
- [ ] Backup screenshot (just in case)
- [ ] Deep breath - you've got this! 😊

### Presentation Structure

**00:00-00:30** - Hook (30 seconds)

"Hi, I'm [name]. I built [project name], which helps [users] [accomplish task].

The problem I wanted to solve was [specific pain point]."

**Example**:
"Hi, I'm Sarah. I built QuickCite, which helps genealogy researchers create properly formatted source citations in seconds. The problem was that manual citation formatting was error-prone and took 5+ minutes per source."

---

**00:30-02:00** - Demo (90 seconds)

**Open your live site** (already loaded!)

**Show your core feature**:
- "Let me show you how it works..."
- Enter realistic data
- Show the output
- Highlight something unique

**Show one impressive detail**:
- Custom command: "I also created a slash command... [demo]"
- Visualization: "Here's the progress visualization..."
- Interaction: "You can filter by category..."

**Keep moving!** Don't get stuck on details.

---

**02:00-02:30** - Learning & Impact (30 seconds)

"Through this workshop, I learned [2-3 skills]:
- [Skill 1]: Parallel processing for faster data analysis
- [Skill 2]: Building interactive dashboards with CSS
- [Skill 3]: Creating custom commands for workflows

This tool will help [impact]:
- Save me 30 minutes per week
- Already planning to share with [team/users]
- Want to add [future feature] next"

---

**02:30-03:00** - Questions (30 seconds)

Answer 1-2 quick questions from audience.

**If no questions**: "Thank you! Happy to chat more after presentations."

---

### Demo Tips

**✅ Do**:
- Start with result (show working tool first)
- Use real data (not "test" or "asdf")
- Explain while you click (narrate your actions)
- Show enthusiasm (you built this!)
- Stick to time limit

**❌ Don't**:
- Apologize ("Sorry it's not perfect...")
- Explain every detail
- Read code
- Spend time navigating/loading
- Go over time

### If Demo Breaks

**Stay calm!**

"This normally shows [X], but let me explain what it does..."

**Show backup screenshot**: "Here's what it looks like when working..."

**Your learning still counts!** The tool breaking doesn't diminish what you built and learned.

---

## After Presentations

### Celebration! 🎉

You built a tool in 5 days using Claude Code!

**Share your work**:
- Post in FamilySearch Slack
- Share with your team
- Add to your portfolio
- Include in 1-on-1s with manager

### Next Steps

**This Week**:
- Use your tool! See if it actually helps
- Get feedback from colleagues
- Fix any bugs discovered

**This Month**:
- Build another tool (you have the skills!)
- Help a colleague learn Claude Code
- Apply techniques to actual work

**This Year**:
- Become the "build stuff with AI" person on your team
- Create tool library for your team
- Mentor others in the workshop

### Stay Connected

**Workshop Alumni**:
- [Slack channel link]
- Share projects and ideas
- Help each other

**Continue Learning**:
- [Main Project Guide](../resources/main-project-guide.md)
- [Advanced Features](../appendix/advanced-features.md)
- Claude Code documentation

---

## Deliverables

**Everyone completes**:
- [ ] Project deployed to GitHub Pages
- [ ] Live URL in README
- [ ] Screenshot added
- [ ] Release v1.0.0 created
- [ ] Presentation delivered
- [ ] Post-workshop survey completed
- [ ] Certificate received

**Success!** 🎉

---

## Presentation Examples

### Example 1: Citation Generator

"Hi, I'm Tom. I built QuickCite, a source citation generator for genealogists.

The problem was that manually formatting citations took 5+ minutes per source and was error-prone.

[Opens site] Here's how it works: I fill in the source details... select the format... and it instantly generates a properly formatted citation. I can copy it to my clipboard and paste into my research log.

I also built a citation library feature that saves all my citations, and a custom `/cite` command that walks me through the process.

I learned parallel processing, custom commands, and data visualization. This will save me hours each month since I'm researching my family tree. I'm planning to add Chicago and MLA formats next.

Any questions?"

---

### Example 2: Meeting Analyzer

"Hi, I'm Lisa. I built MeetingSync, which extracts action items from meeting notes automatically.

The problem was spending 15 minutes after every meeting manually creating action item lists.

[Opens site] I paste my meeting notes here... click analyze... and it extracts all action items with owners and due dates. I can filter by person, export to email, and mark items complete.

I learned text processing, data filtering, and building interactive dashboards.

This will save our team 30+ minutes per week across all our meetings. Several teammates are already asking to use it!

Questions?"

---

## Final Thoughts

**You did it!** 🎉

Five days ago, Claude Code might have felt mysterious or intimidating.

Today, you deployed a working tool to the internet.

**That's the power of building with AI.**

You're not just UX/PM professionals who document ideas anymore.

**You're builders who can materialize ideas.**

Keep building. Keep learning. Keep shipping.

**Congratulations on completing Claude Code 101!**

*See you in the alumni channel!* 🚀
