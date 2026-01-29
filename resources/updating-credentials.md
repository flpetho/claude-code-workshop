# Updating Your Claude Code Credentials

## Quick Reference Guide

This guide shows you how to update your AWS Bedrock credentials and model settings for Claude Code.

---

## When You Need This

You'll need to update your `~/.zshrc` file when:

- ✓ Your AWS credentials expire
- ✓ Your administrator gives you access to a new Claude model
- ✓ Your AWS region changes
- ✓ You're setting up Claude Code on a new computer

---

## The 5-Step Process

### Step 1: Open Your Configuration File

```bash
nano ~/.zshrc
```

**What you'll see:**
```
GNU nano 6.2                    /Users/yourname/.zshrc

# Your existing shell configuration
# Claude Code / AWS Bedrock Configuration
export AWS_ACCESS_KEY_ID="AKIA..."
export AWS_SECRET_ACCESS_KEY="..."
export AWS_REGION="us-east-1"
export ANTHROPIC_MODEL="claude-sonnet-4-5"



^G Help      ^O Write Out  ^W Where Is   ^K Cut        ^T Execute
^X Exit      ^R Read File  ^\ Replace    ^U Paste      ^J Justify
```

### Step 2: Navigate to the Claude Code Section

Use **arrow keys** to move to the lines that start with `export AWS_` and `export ANTHROPIC_MODEL`

### Step 3: Update the Values

**To change credentials:**
- Move cursor to the value you want to change (between the quotes)
- Use Backspace to delete old value
- Type or paste new value

**Example: Updating the model**

Before:
```bash
export ANTHROPIC_MODEL="claude-sonnet-4-5"
```

After:
```bash
export ANTHROPIC_MODEL="claude-opus-4-5"
```

**Your screen will show "Modified" in the title:**
```
GNU nano 6.2                    /Users/yourname/.zshrc                     Modified
```

### Step 4: Save Your Changes

1. **Press `Ctrl + O`** (the letter O, not zero)

   You'll see:
   ```
   File Name to Write: /Users/yourname/.zshrc
   ```

2. **Press `Enter`** to confirm

   You'll see:
   ```
   [ Wrote 8 lines ]
   ```

3. **Press `Ctrl + X`** to exit

### Step 5: Apply the Changes

```bash
source ~/.zshrc
```

This reloads your configuration without restarting your terminal.

**Verify it worked:**
```bash
echo $ANTHROPIC_MODEL
```

You should see your new model name!

---

## Complete Configuration Template

Here's what your Claude Code configuration section should look like in `~/.zshrc`:

```bash
# Claude Code / AWS Bedrock Configuration
export AWS_ACCESS_KEY_ID="AKIA..."
export AWS_SECRET_ACCESS_KEY="your-secret-key-here"
export AWS_REGION="us-east-1"
export ANTHROPIC_MODEL="claude-sonnet-4-5"
```

**Get these values from your administrator:**
- `AWS_ACCESS_KEY_ID` - Starts with "AKIA"
- `AWS_SECRET_ACCESS_KEY` - Long alphanumeric string
- `AWS_REGION` - Usually `us-east-1` or `us-west-2`
- `ANTHROPIC_MODEL` - Model name like `claude-sonnet-4-5` or `claude-opus-4-5`

---

## Available Models

Your administrator controls which models you have access to. Common options:

| Model | Description | Speed | Cost |
|-------|-------------|-------|------|
| `claude-sonnet-4-5` | Balanced performance | Fast | $ |
| `claude-opus-4-5` | Highest capability | Slower | $$$ |
| `claude-haiku-3-5` | Fastest responses | Very Fast | $ |

Ask your administrator which models you're authorized to use.

---

## Common Issues & Solutions

### "Permission denied" when editing ~/.zshrc

**Problem:** You don't have permission to edit the file

**Solution:**
```bash
ls -la ~/.zshrc
```

The file should be owned by you. If not, contact your administrator.

### Changes not taking effect

**Problem:** You edited the file but Claude Code still uses old credentials

**Solution:**
```bash
# 1. Make sure you saved the file (check for typos)
cat ~/.zshrc | grep AWS_REGION

# 2. Reload the configuration
source ~/.zshrc

# 3. Verify the variable is set
echo $AWS_REGION
```

### "Invalid credentials" error

**Problem:** Credentials in file are wrong or expired

**Solution:**
1. Get fresh credentials from your administrator
2. Open `nano ~/.zshrc`
3. Update the values
4. Save and run `source ~/.zshrc`
5. Test: `claude test-connection`

### Can't find the Claude Code section

**Problem:** You don't see the AWS/Claude configuration in your file

**Solution:**

Your file might not have the configuration yet. Add it:

```bash
nano ~/.zshrc
```

Go to the bottom of the file (arrow keys) and add:

```bash
# Claude Code / AWS Bedrock Configuration
export AWS_ACCESS_KEY_ID="paste-key-here"
export AWS_SECRET_ACCESS_KEY="paste-secret-here"
export AWS_REGION="us-east-1"
export ANTHROPIC_MODEL="claude-sonnet-4-5"
```

Save with `Ctrl + O`, `Enter`, `Ctrl + X`

Then: `source ~/.zshrc`

### Using bash instead of zsh?

**Problem:** Your terminal uses bash, not zsh

**Solution:** Edit `~/.bashrc` instead of `~/.zshrc`

```bash
nano ~/.bashrc
```

Everything else is the same!

---

## Nano Editor Quick Reference

While editing in nano:

| Key | Action |
|-----|--------|
| `Arrow keys` | Move cursor |
| `Ctrl + O` | Save (write Out) |
| `Enter` | Confirm filename |
| `Ctrl + X` | Exit nano |
| `Ctrl + K` | Cut line |
| `Ctrl + U` | Paste line |
| `Ctrl + W` | Search |
| `Ctrl + G` | Help |

---

## Security Best Practices

**DO:**
- ✓ Keep your credentials private
- ✓ Never share your AWS keys with others
- ✓ Update credentials when they expire
- ✓ Contact your admin if credentials are compromised

**DON'T:**
- ✗ Commit `.zshrc` to git repositories
- ✗ Share your terminal screen showing credentials
- ✗ Paste credentials in Slack, email, or documentation
- ✗ Use someone else's credentials

---

## Testing Your Setup

After any changes, run:

```bash
# 1. Check environment variables are set
echo $AWS_ACCESS_KEY_ID
echo $AWS_REGION
echo $ANTHROPIC_MODEL

# 2. Test Claude Code connection
claude test-connection

# 3. Try a simple Claude Code command
claude --version
```

**Expected results:**
- Echo commands should show your values
- Test connection should show: `✓ Successfully connected to AWS Bedrock`
- Version should show: `claude x.x.x`

---

## Getting Help

**Still having issues?**

1. **Check your configuration:**
   ```bash
   cat ~/.zshrc | grep -A 4 "Claude Code"
   ```

2. **Verify environment variables:**
   ```bash
   env | grep AWS
   env | grep ANTHROPIC
   ```

3. **Test AWS connection:**
   ```bash
   aws sts get-caller-identity
   ```

4. **Contact your administrator:**
   - Provide error messages (screenshot OK if no credentials visible)
   - Mention when credentials were last updated
   - Confirm which model you're trying to use

---

## Quick Commands Cheat Sheet

```bash
# Edit credentials
nano ~/.zshrc

# Save and apply
source ~/.zshrc

# Verify credentials loaded
echo $AWS_REGION

# Test connection
claude test-connection

# View current configuration (safe - doesn't show secrets)
env | grep ANTHROPIC_MODEL
```

---

**Remember:** You'll get comfortable with this process quickly! Most people only need to do this once or twice during the workshop.

---

**Need more help?** See [Day 1: Welcome to Claude Code](../days/day-01-welcome.md) or ask during Q&A sessions.
