# Day 1: Foundation + Project Setup

**Duration**: 1 hour
**Format**: Teaching (15 min) + Hands-on (40 min) + Wrap-up (5 min)

---

## Welcome to Claude Code 101! 🚀

Today you'll get Claude Code running, create your first project, and push it to GitHub. By the end of today, you'll have a working tool saved online that you can share with anyone.

**What You'll Accomplish:**
- ✅ Understand what Claude Code is (and isn't)
- ✅ Build something with Claude Code
- ✅ Save your work to GitHub
- ✅ Choose your main project for the week

---

## Part 1: What is Claude Code? (5 min)

### The Simple Explanation

**Claude Code** is like having an expert developer sitting next to you who:
- Writes code when you describe what you want
- Fixes bugs when things break
- Explains how things work
- Never judges your questions

### What Makes It Different?

**Before Claude Code:**
- Have idea → Wait for developer → Wait days/weeks → Get result
- Limited to what you can explain in words

**With Claude Code:**
- Have idea → Describe it → Get working code → Iterate immediately
- Build prototypes yourself

### What You Can Build (UX/PM Examples)

**Research & Analysis:**
- Interview analysis tools
- User feedback synthesizers
- Competitive analysis dashboards

**Design & Prototyping:**
- Clickable HTML prototypes
- User flow diagrams
- Component showcases

**Productivity:**
- Meeting notes extractors
- Time tracking tools
- Custom workflow automation

**FamilySearch Specific:**
- Source citation generators
- Genealogy research trackers
- Family story templates

### What It's NOT

❌ Replacement for developers (you're building prototypes, not production code)
❌ Magic that reads your mind (you still describe what you want)
❌ Perfect the first time (you'll iterate and improve)

**Important:** You won't break your computer. Claude Code only changes files in your project folder. Worst case? You delete the folder and start over.

---

## Part 2: Choose Your Workspace (5 min)

### Option A: IDE with Terminal (Recommended for Beginners!)

**What's an IDE?**

IDE stands for **Integrated Development Environment**. Think of it as a specialized app for working with code—like Microsoft Word is for documents, or Photoshop is for images.

An IDE combines everything you need in one window:
- A text editor for viewing/editing code
- A file browser to see your project files
- A built-in terminal to run commands
- Tools for debugging and testing

**Popular IDEs you might know:** VSCode, Cursor, Antigravity, Xcode, Android Studio

**Why this is better:**
- See your files as they're created (visual feedback!)
- Keep code and terminal in one window
- Less switching between apps
- File explorer shows project structure

**Recommended IDEs:**
- **VSCode** (most popular, free)
- **Cursor** (AI-first, paid)
- **Antigravity** (specialized for AI coding)

**How to use:**

1. **Open your IDE** (VSCode, Cursor, etc.)
2. **Open your project folder**: File → Open Folder → Select your project
3. **Open integrated terminal**: View → Terminal (or Ctrl+`)
4. **Run Claude Code in that terminal**: Type `claude`

**You get:**
- 📁 File explorer (left side) - see what Claude creates
- 💻 Code editor (main area) - view/edit files
- ⌨️ Terminal (bottom) - run Claude Code
- 👀 Everything visible at once!

### Option B: Pure Terminal App (For Comfortable Users)

If you prefer working in pure terminal:
- Terminal.app (Mac default)
- iTerm2 (advanced features)
- Your preferred terminal

**Navigate with these commands:**
```bash
pwd                      # Where am I?
cd project-name          # Go to project
ls                       # List files
open .                   # Open folder in Finder
claude                   # Start Claude Code
```

### We Recommend: IDE Approach

**For this workshop, use an IDE with integrated terminal.**

It helps you:
- See files appear as Claude creates them
- Understand project structure visually
- Reference open files for context
- Feel less overwhelmed

**Trust us on this one!** Visual feedback makes learning easier.

---

## Part 3: Your First Project (10 min)

### Follow Along Together

**Step 1: Create project folder**

```bash
cd ~/Documents
mkdir my-first-project
cd my-first-project
```

**Step 2: Start Claude Code**

```bash
claude
```

Wait for it to load (first time takes ~30 seconds).

**Step 3: Build something!**

Type this to Claude Code:

```
Create a simple HTML page with:
- A title "My First Tool"
- A paragraph explaining what this tool does
- A button that says "Click Me"
- When clicked, show an alert with "Hello from Claude Code!"
- Use clean, professional styling
```

Claude Code creates the file. Let's look at it!

**Step 4: Open it**

```bash
open index.html
```

Your browser opens with your new webpage! 🎉

**Step 5: Make changes**

Tell Claude Code:

```
Change the button color to blue and make it bigger
```

Refresh browser. It changed!

---

## Part 4: Saving to GitHub (15 min)

### Why GitHub?

**GitHub = Google Drive for code**

Benefits:
- ✅ Backup (computer dies? Your code is safe)
- ✅ Share (send link to teammates)
- ✅ Deploy (turn code into live websites)
- ✅ Portfolio (show your work)

**This week:** You'll push to GitHub after every session. It becomes habit!

---

### Setup (One Time Only)

**Step 1: Create Account** (if you don't have one)

Go to [github.com](https://github.com) → Sign up

**Step 2: Create Your First Repository**

1. Click green **"New"** button
2. Repository name: `my-first-project`
3. Description: "My first Claude Code project"
4. Keep it **Public**
5. **Don't** check "Initialize with README" (we have one)
6. Click **"Create repository"**

**Step 3: Connect Your Project to GitHub**

GitHub shows you commands like this:

```bash
git remote add origin https://github.com/YOUR-USERNAME/my-first-project.git
git branch -M main
git push -u origin main
```

**Copy those commands.**

**Step 4: Tell Claude Code to Run Them**

In your Claude Code session, say:

```
"Run these git commands:

git remote add origin https://github.com/YOUR-USERNAME/my-first-project.git
git branch -M main
git push -u origin main"
```

Claude Code executes them for you!

**Step 5: Verify It Worked**

Refresh your GitHub page in browser. You should see your files!

**You just put your work on the internet!** 🚀

---

### Daily Workflow (Every Session)

**After building something new, save to GitHub:**

**Just tell Claude Code:**

```
"Commit my changes with message 'Added contact form' and push to GitHub"
```

**That's it!** Claude Code handles git for you.

**Behind the scenes, Claude Code runs:**
```bash
git add .
git commit -m "Added contact form"
git push
```

**You don't need to know these commands.** Just ask Claude Code!

---

### Git = Your Safety Net

**Think of it as:**
- 💾 Save button (commits)
- ☁️ Backup to cloud (push)
- 📜 Undo button (can restore old versions)
- 🤝 Share button (teammates can see it)

**This week you'll:**
- Day 1: Set up GitHub connection (one time)
- Days 2-5: Tell Claude Code to commit and push (every day)

**By Day 5:** This becomes natural habit!

---

### Want to Learn More About Git?

**For this workshop:** Just let Claude Code handle it.

**After workshop:** If you want to understand git deeply:
- [Git Cheat Sheet](git-cheatsheet.md) - All the commands
- [GitHub Setup Guide](github-setup.md) - Advanced authentication
- Git tutorials online

**But honestly?** Letting Claude Code handle git works great! Most UX/PM professionals never need to learn git commands directly.

---

## Part 6: Choose Your Main Project (10 min)

### Your Assignment This Week

Build **ONE tool** that solves a real problem for you or FamilySearch users.

### Project Categories

**A) FamilySearch / Genealogy Tools**
- Citation generator
- Research tracker
- Family story builder
- Source analysis tool

**B) UX/PM Productivity Tools**
- Meeting notes analyzer
- Competitive analysis dashboard
- User feedback synthesizer
- Time tracking prototype

### Good Project = 

✅ **Solves YOUR problem** (you'll be motivated)
✅ **Buildable in 5 days** (not too ambitious)
✅ **One core feature + 2-3 additions** (clear scope)
✅ **Actually useful** (you'll use it after workshop)

### Project Template

Use this to define your project:

**Project Name:** [Something catchy]

**One-sentence description:**
"[Tool name] helps [users] [accomplish task] by [how it works]"

**Core feature** (the ONE thing it must do):
- Example: Generate citation from form inputs

**Supporting features** (2-3 nice additions):
- Multiple format options (APA, Chicago)
- Copy to clipboard button
- Save citation history

**Who it helps:**
- Me personally
- FamilySearch users
- My team

### Examples

**Source Citation Generator:**
- Input: Source details in a form
- Output: Properly formatted citation
- Why: Manual formatting takes 5+ minutes and has errors

**Meeting Notes Analyzer:**
- Input: Upload meeting notes
- Output: Extracted action items with owners
- Why: Manually finding action items takes 15 minutes per meeting

**Research Dashboard:**
- Input: Multiple interview transcripts
- Output: Common themes and quotes
- Why: Synthesizing 20 interviews takes days manually

---

## Wrap-Up (5 min)

### What You Learned Today

1. **Claude Code** = AI coding assistant for building prototypes
2. **5 terminal commands** = All you need (pwd, cd, ls, open, claude)
3. **GitHub workflow** = Create repo on website, paste commands
4. **Project planning** = Choose something you'll actually use

### Homework (45 minutes before Day 2)

**Task 1: Define your project** (15 min)
- Fill out project template
- Make sure it's scoped appropriately
- Write it down somewhere (Notes app, doc, etc.)

**Task 2: Build first feature** (20 min)
- Start Claude Code in your project folder
- Ask it to build your core feature
- Don't worry about making it perfect!
- Just get something working

**Task 3: Push to GitHub** (10 min)
- Create GitHub repository for your project
- Push your code
- Verify it shows up online

### Tomorrow (Day 2)

We'll learn:
- Processing multiple files at once
- Creating visualizations (charts, dashboards)
- Adding these capabilities to YOUR project

**Come with questions!** No question is too basic.

---

## Troubleshooting

### "Claude Code isn't working"

**Check:**
```bash
claude --version
```

If error, restart VSCode and try again. Still broken? Ask instructor!

### "Git commands failed"

**Did you create the GitHub repo first?** That's required!

**Authentication error?** GitHub might need your Personal Access Token (not password). Instructor will help.

### "I don't know what project to build"

**Pick from these starter ideas:**
- Citation generator
- Meeting notes extractor
- Time tracker prototype
- Competitive feature matrix
- User quote library

**Still stuck?** Ask yourself: "What task do I do every week that's tedious?"

### "I'm lost"

**Totally normal!** Raise your hand or message in chat. Everyone feels this way at first. By Day 3, this will feel natural.

---

## Key Reminders

- **You can't break your computer** - Only files in your project change
- **Copy/paste is fine** - Understanding comes with practice
- **Ask Claude Code for help** - It can explain its own code!
- **GitHub is your backup** - Push often, never lose work
- **Simple and working > complex and broken** - Start small!

---

**Great work today!** 🎉 

You built something with AI and put it on the internet. That's awesome!

**See you on Day 2!**