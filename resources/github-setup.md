# Git & GitHub Setup Guide

This guide will help you set up Git and GitHub for the workshop. Don't worry if you've never used version control before - we'll walk through everything step by step!

## What is Git and GitHub?

**Git**: Version control system that tracks changes to your files (like "Track Changes" for code)

**GitHub**: Website where you store and share your Git repositories (like Google Drive for code)

**Why we use them**: Professional way to save your work, track changes, and share projects with your team.

## Step 1: Create GitHub Account

If you don't already have a GitHub account:

1. Go to [github.com](https://github.com)
2. Click "Sign up" (top right)
3. Enter your email, create password, choose username
4. Verify your email address
5. Choose "Free" plan (no need for paid features)

**Username tips**:
- Professional (you'll share this with colleagues)
- Easy to remember and type
- Example: `jane-smith` or `janesmith-ux`

## Step 2: Configure Git on Your Computer

Git is likely already installed on your Mac. Let's configure it with your information:

### Set your name

Open Terminal and run:

```bash
git config --global user.name "Your Full Name"
```

Example:
```bash
git config --global user.name "Jane Smith"
```

### Set your email

Use the same email as your GitHub account:

```bash
git config --global user.email "your.email@example.com"
```

Example:
```bash
git config --global user.email "jane.smith@company.com"
```

### Verify configuration

Check it worked:

```bash
git config --global --list
```

You should see your name and email listed.

## Step 3: Set Up Authentication

GitHub needs to verify it's really you when you push code. We'll use Personal Access Tokens (simplest method).

### Create Personal Access Token

1. **Go to GitHub**: Log in to [github.com](https://github.com)

2. **Open Settings**:
   - Click your profile picture (top right)
   - Click "Settings"

3. **Navigate to Tokens**:
   - Scroll to bottom of left sidebar
   - Click "Developer settings"
   - Click "Personal access tokens"
   - Click "Tokens (classic)"

4. **Generate New Token**:
   - Click "Generate new token (classic)"
   - Note: "Claude Code Workshop Token"
   - Expiration: 90 days (covers workshop + practice time)
   - Select scopes:
     - ✅ `repo` (full control of private repositories)
     - ✅ `workflow` (update GitHub Actions workflows)
   - Scroll down, click "Generate token"

5. **IMPORTANT: Copy your token!**
   - You'll see a long string like `ghp_xxxxxxxxxxxx`
   - **Copy this immediately** - you won't see it again!
   - Save it somewhere safe (Notes app, password manager)

### Test Your Setup

We'll test authentication when you create your first repository in Day 1.

## Step 4: Optional - Set Up SSH Keys (Advanced)

If you're comfortable with terminal, SSH keys are more convenient than tokens. Otherwise, skip this section - Personal Access Tokens work great!

<details>
<summary>Click to expand SSH setup instructions</summary>

### Generate SSH Key

```bash
ssh-keygen -t ed25519 -C "your.email@example.com"
```

Press Enter for all prompts (uses defaults).

### Add SSH Key to SSH Agent

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

### Copy SSH Key

```bash
cat ~/.ssh/id_ed25519.pub | pbcopy
```

### Add to GitHub

1. Go to GitHub Settings → SSH and GPG keys
2. Click "New SSH key"
3. Title: "Workshop Laptop"
4. Paste your key (already copied from previous step)
5. Click "Add SSH key"

### Test SSH Connection

```bash
ssh -T git@github.com
```

You should see: `Hi username! You've successfully authenticated...`

</details>

## Step 5: Install GitHub Desktop (Optional)

If you prefer a visual interface over terminal commands:

1. Download [GitHub Desktop](https://desktop.github.com/)
2. Install and open the app
3. Sign in with your GitHub account
4. It will handle authentication automatically

**Note**: Workshop teaches terminal commands, but GitHub Desktop is a great backup option.

## Verification Checklist

Before Day 1, make sure you have:

- ✅ GitHub account created
- ✅ Git configured with your name and email
- ✅ Personal Access Token generated and saved
- ✅ (Optional) GitHub Desktop installed

## Common Issues

### "git: command not found"

**Solution**: Install Git from [git-scm.com/downloads](https://git-scm.com/downloads)

On Mac:
```bash
brew install git
```

### "Could not read from remote repository"

**Solution**:
1. Check your Personal Access Token is copied correctly
2. Make sure you selected `repo` scope when creating token
3. Try creating a new token

### "Permission denied (publickey)"

**Only applies if using SSH**

**Solution**:
1. Verify SSH key was added: `ssh-add -l`
2. Re-add key: `ssh-add ~/.ssh/id_ed25519`
3. Verify key is on GitHub: Settings → SSH keys

## What's Next?

You're ready for Day 1! We'll use Git and GitHub throughout the workshop to:

- Save your work professionally
- Track changes over time
- Share projects with your team
- Deploy websites to the internet

Don't worry if this feels new - we'll practice the same commands every day until they become second nature.

**See you on Day 1!**

## Additional Resources

- [GitHub Guides](https://guides.github.com/) - Official tutorials
- [Git Cheat Sheet](git-cheatsheet.md) - Quick command reference
- [GitHub Desktop Documentation](https://docs.github.com/en/desktop) - GUI alternative

## Need Help?

**Before workshop**: Email instructor with questions

**During workshop**: Ask in Teams chat or raise hand

**After workshop**: GitHub's own [support](https://support.github.com/) is excellent
