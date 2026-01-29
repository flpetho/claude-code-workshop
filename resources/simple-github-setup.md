# GitHub Setup Guide

**Simple setup for Claude Code 101 Workshop**

---

## What You Need to Know

**GitHub = Google Drive for your code**

That's it. That's the concept.

- ☁️ Backs up your work
- 🤝 Lets you share with teammates
- 🌐 Can turn into live websites
- 📁 Shows your portfolio

**This week:** You'll save to GitHub after every session.

**How:** Just tell Claude Code to do it!

---

## One-Time Setup (5 minutes)

### Step 1: Create GitHub Account

**If you already have one:** Skip to Step 2!

**If you don't:**

1. Go to [github.com](https://github.com)
2. Click "Sign up"
3. Enter your email
4. Create password
5. Choose username (professional - colleagues will see this!)
6. Verify email

**Done!** You have a GitHub account.

---

### Step 2: Create Your First Repository

**Do this on Day 1 of workshop:**

1. Go to [github.com](https://github.com) (in browser)
2. Click green **"New"** button (or "+" menu → New repository)
3. **Repository name:** `my-first-project` (or your project name)
4. **Description:** "My first Claude Code project"
5. **Public** (so you can share it)
6. **Don't** check "Initialize with README" (we already have one)
7. Click **"Create repository"**

**GitHub shows you commands** like this:

```bash
git remote add origin https://github.com/YOUR-USERNAME/my-first-project.git
git branch -M main
git push -u origin main
```

**Don't run these yourself!** Instead...

---

### Step 3: Tell Claude Code to Connect

**Copy those commands from GitHub.**

**In your Claude Code session, say:**

```
"Run these git commands to connect my project to GitHub:

git remote add origin https://github.com/YOUR-USERNAME/my-first-project.git
git branch -M main
git push -u origin main"
```

**Claude Code executes them!**

**Might ask for authentication:** If prompted, use your GitHub username and password (or Personal Access Token - see below).

**Refresh GitHub page:** Your files should appear!

**✅ Setup complete!** You never have to do this again for this project.

---

## Daily Workflow (Every Session)

### After You Build Something

**Just tell Claude Code:**

```
"Commit my changes with message 'Added contact form' and push to GitHub"
```

**Or:**

```
"Save my work to GitHub with message 'Built data visualization'"
```

**Or even:**

```
"git commit and push with message 'Day 2 complete'"
```

**Claude Code knows what you mean** and handles everything!

---

### What Claude Code Does Behind the Scenes

When you ask Claude Code to commit and push, it runs:

```bash
git add .
git commit -m "Your message"
git push
```

**You never need to know or run these manually!**

Just talk to Claude Code in natural language.

### First Time Only: Git Configuration

**The very first time you commit**, Claude Code will ask:
- "What name should I use for your commits?"
- "What email address?"

Answer these, and Claude Code configures git automatically. You only do this once!

**After that:** Just say "commit and push" - no setup needed.

---

## Authentication (If Asked)

### If GitHub Asks for Username/Password

**Modern GitHub requires a Personal Access Token, not your password.**

### Quick Setup:

1. Go to [github.com](https://github.com)
2. Click your profile picture (top right) → Settings
3. Scroll down left sidebar → Developer settings
4. Personal access tokens → Tokens (classic)
5. Click "Generate new token (classic)"
6. **Note:** "Claude Code Workshop"
7. **Expiration:** 90 days
8. **Select scopes:** Check `repo` (full control of repositories)
9. Click "Generate token"
10. **COPY THE TOKEN** (you won't see it again!)
11. Save it somewhere safe (Notes app, password manager)

**When terminal asks for password:** Paste your token!

**Tip:** Terminal won't show characters when you paste - that's normal! Just paste and press Enter.

---

## That's All You Need!

**For this workshop:**
1. ✅ Have GitHub account
2. ✅ Create repository (on website)
3. ✅ Tell Claude Code to connect (once)
4. ✅ Tell Claude Code to commit and push (daily)

**Note:** First commit, Claude Code will ask for your name/email. After that, it's automatic!

**You're set!**

---

## Want to Learn More About Git?

### After Workshop (Optional)

If you want to understand git commands deeply:

**Resources:**
- [Git Cheat Sheet](git-cheatsheet.md) - All the commands
- [Pro Git Book](https://git-scm.com/book) - Free comprehensive guide
- [GitHub Skills](https://skills.github.com/) - Interactive tutorials

**But honestly:**
- Most UX/PM professionals never learn git commands
- Claude Code handles everything beautifully
- Focus on building, not memorizing git

**If it works, it works!** 🎉

---

## Troubleshooting

### "Permission denied" or "Authentication failed"

**Solution:** Use Personal Access Token (see Authentication section above)

**GitHub changed** - passwords don't work anymore, need token.

---

### "fatal: not a git repository"

**Cause:** You're not in your project folder

**Solution:**
```bash
cd ~/Documents/your-project-name
```

Or in your IDE: Open Folder → Select your project

---

### "Nothing to commit, working tree clean"

**This is good!** It means everything is already saved.

Claude Code is telling you there are no changes to commit.

---

### "Your branch is ahead of origin/main"

**Cause:** You committed locally but didn't push to GitHub

**Solution:**
```
"Push my changes to GitHub"
```

---

### "Repository not found"

**Cause:** GitHub repository doesn't exist yet

**Solution:** Go to github.com and create the repository first, then connect.

---

## Quick Reference Card

**Copy this for Day 1:**

```
┌─────────────────────────────────────────┐
│ GITHUB QUICK REFERENCE                  │
├─────────────────────────────────────────┤
│                                         │
│ Create repo: github.com → New           │
│                                         │
│ Connect (once):                         │
│   Tell Claude Code to run GitHub's      │
│   connection commands                   │
│                                         │
│ Daily save:                             │
│   "Commit with message 'X' and push"    │
│                                         │
│ That's it!                              │
│                                         │
└─────────────────────────────────────────┘
```

---

## For Instructor

**Teaching approach:**

1. **Demo once on Day 1** (live, together)
2. **Everyone does it** (with help)
3. **Days 2-5:** Just remind to commit via Claude Code
4. **Troubleshoot** authentication issues (common first time)

**Time allocation:**
- Day 1: 15 minutes (setup + first commit)
- Days 2-5: 2 minutes (reminder to commit)

**Success:** Everyone has code on GitHub by end of Day 1!

---

**You've got this!** GitHub seems scary but it's just cloud backup.

**And Claude Code makes it easy!** 🚀

---

*Simplified GitHub Setup Guide*
*Claude Code 101 Workshop*
*January 2026*
