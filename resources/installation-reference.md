# Installation Reference

## You're Already Set Up! ✅

If you're reading this as part of the workshop, you should have already completed installation and authentication.

Use this page as a reference if you need to reinstall or help a colleague get started.

---

## Quick Verification

Open terminal and run:

```bash
claude --version
```

You should see: `claude-code version X.X.X`

If this works, you're all set! Skip to the workshop content.

---

## Full Installation Guide

Here's how to set up Claude Code on your computer for FamilySearch's AWS Bedrock instance.

### Important Security Note

You will have received an email from Jon Morrey titled "Welcome to Claude Code". That email contains your personal Claude Code key (`AWS_BEARER_TOKEN_BEDROCK`).

⚠️ **Security Requirements:**
- Don't forward that email or the key to anyone else
- Don't ever check the key into code
- Do not attempt to use it for other Anthropic API access

---

## Step 1: Install Prerequisites

### Check for Homebrew

In your terminal:

```bash
brew --version
```

If you have Homebrew installed, you should see a version number printed in the terminal.

**If you don't have Homebrew:**

Install it from the **Workforce App Store**. This will take a couple of minutes to install on your machine.

<div style="display: flex; gap: 20px; align-items: flex-start; margin: 20px 0;">
  <img src="resources/img/workforceapp.png" alt="Workforce App Store" style="height: 350px; width: auto; border-radius: 8px; border: 1px solid #444;">
  <img src="resources/img/homebrew.png" alt="Homebrew" style="height: 350px; width: auto; border-radius: 8px; border: 1px solid #444;">
</div>

After installation:
1. Quit the Terminal
2. Reopen Terminal
3. Check again: `brew --version`

### Check for Node.js

```bash
node --version
```

**If you don't have Node.js yet:**

Option 1: Download from [nodejs.org](https://nodejs.org/en/download) and follow the macOS installer instructions.

Option 2: Install via Homebrew (recommended to avoid permission errors):

```bash
brew install node
```

### Install NVM and Node.js 24

After Node.js is installed, run these commands:

```bash
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# In lieu of restarting the shell:
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js 24:
nvm install 24

# Verify the Node.js version:
node -v # Should print "v24.13.0"

# Verify npm version:
npm -v # Should print "11.6.2"
```

**Quit terminal and restart it.**

---

## Step 2: Set Environment Variables

These variables tell Claude Code how to connect to FamilySearch's instance of AWS Bedrock.

### Mac/Linux Setup

1. Open your shell configuration file:

```bash
nano ~/.zshrc
```

2. Create a new line and copy the information from your "Welcome to Claude Code" email:

```bash
export AWS_BEARER_TOKEN_BEDROCK=[your-token-from-email]
export CLAUDE_CODE_USE_BEDROCK=1
export CLAUDE_CODE_MAX_OUTPUT_TOKENS=16384
export MAX_THINKING_TOKENS=4092
export ANTHROPIC_MODEL=[model-from-email]
export ANTHROPIC_SMALL_FAST_MODEL=[small-model-from-email]
```

3. Save the file:
   - Press `Ctrl+X`
   - Press `Y` to confirm
   - Press `Enter` to save

4. **Restart your terminal** for changes to take effect.

---

## Step 3: Install Claude Code

In your terminal:

```bash
npm install -g @anthropic-ai/claude-code
```

Wait for installation to complete.

---

## Step 4: Test Your Installation

Create a test folder and launch Claude Code:

```bash
cd ~/Desktop
mkdir claude-test
cd claude-test
claude
```

### What to Expect

You'll first be asked whether to trust the files in that directory:
- **Select "1. Yes, proceed"**

✅ If Claude Code starts successfully, you're all set!

❌ If it asks you to create an Anthropic account, your environment variables were not set correctly. Go back to Step 2.

### First Command

If you're in a code project, type `/init` as your first command. Claude Code will analyze your project and offer to create a CLAUDE.md file.

### Using with VS Code

You can launch Claude Code inside VS Code:
1. Open the integrated terminal (View → Terminal)
2. Type `claude`

---

## Troubleshooting

### "Claude Code isn't working"

**Check your version:**
```bash
claude --version
```

If error, restart VSCode/terminal and try again.

### "Authentication error" or asks for Anthropic account

**Solution:** Your environment variables aren't set correctly.

1. Check they're in `~/.zshrc`:
   ```bash
   cat ~/.zshrc | grep AWS_BEARER_TOKEN_BEDROCK
   ```

2. If missing, repeat Step 2

3. Make sure you restarted your terminal after editing `.zshrc`

### "Command not found: claude"

**Solutions:**

1. Restart terminal
2. Check npm global bin path:
   ```bash
   npm config get prefix
   ```
   Should be `/usr/local` or similar

3. Reinstall:
   ```bash
   npm install -g @anthropic-ai/claude-code
   ```

### Still Having Issues?

1. **Paste this guide into Copilot Chat for Enterprise** (minus your personal API key) and ask for help. Make sure you tell it what OS you're using.

2. **Ask for help on #claude-code Slack channel** - Over 500 people have licenses, community support available!

---

## Post-Installation

After successful installation:

1. **Watch a "getting started" tutorial on YouTube** (skip the installation/setup sections)
2. **Sign up for internal Claude Code Bootcamp** if you haven't already
3. **Start this workshop!** You're ready for Day 1

---

## What's Next?

Once you've verified Claude Code is working:

1. [Set up Git/GitHub](simple-github-setup.md) - Create your GitHub account
2. [Download project setup script](../scripts/workshop-init-project.sh) - Prepare for Day 1
3. Review [Git Cheat Sheet](git-cheatsheet.md) - Quick command reference

Ready to start? Head to [Day 1: Foundation + Project Setup](../days/day-01-foundation.md)!

---

## Quick Reference

**Start Claude Code:**
```bash
cd your-project-folder
claude
```

**Initialize in existing project:**
```
/init
```

**Check version:**
```bash
claude --version
```

**Update Claude Code:**
```bash
npm update -g @anthropic-ai/claude-code
```

---

**Happy Clauding!** 🚀

---

*Installation Reference - Claude Code 101 Workshop*
*FamilySearch AWS Bedrock Instance*
*Last Updated: January 2026*
