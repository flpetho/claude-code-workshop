# Pre-Workshop Setup

**Complete this before Day 1 of the workshop begins.**

> **Why complete this beforehand?** We want to start Day 1 learning together, not troubleshooting individually. Having Claude Code installed and working ensures everyone can participate fully from the first session.

---

## Prerequisites

Before you begin, you'll need:

1. **AWS Bedrock Access** (provided by your organization)
   - Your company has set up Claude Code access through AWS Bedrock
   - You'll receive AWS credentials from your administrator via email
   - No individual Claude account needed!

2. **A computer** with:
   - macOS, Windows, or Linux
   - No administrator access required (we'll use the standard installation path)

3. **About 30 minutes** to complete installation

---

## Installation Steps

### Step 1: Install Prerequisites (No Admin Access Required)

**On macOS (Recommended for your organization):**

1. **Install Homebrew** via Workforce App Store (no admin needed)
2. **Install Node.js and NPM** via Homebrew:
   ```bash
   brew install node
   ```
3. **Install Claude Code** via NPM:
   ```bash
   npm install -g @anthropic-ai/claude-code
   ```

**On Windows:**
```bash
winget install Anthropic.Claude
```

**On Linux:**
```bash
curl -fsSL https://anthropic.com/install.sh | sh
```

> **For Mac users**: The Homebrew → Node/NPM → Claude Code path does NOT require administrator access and is the recommended approach for your organization.

### Step 2: Verify Installation

Open your terminal and type:
```bash
claude --version
```

You should see the version number displayed.

**Opening your terminal:**
- macOS: Applications → Utilities → Terminal
- Windows: Search for "Command Prompt" or "PowerShell"
- Linux: Ctrl+Alt+T

### Step 3: Configure AWS Bedrock Authentication

**Your organization uses AWS Bedrock with bearer token authentication.**

You'll configure Claude Code using environment variables in your shell configuration file. Your administrator will provide the bearer token via email.

**Step-by-step:**

1. **Open your shell configuration file** in nano (a simple text editor):

   ```bash
   nano ~/.zshrc
   ```

   **What you'll see in your terminal:**
   ```
   GNU nano 6.2                    /Users/yourname/.zshrc

   # Your existing shell configuration
   # (there may be other lines here)









                                  [ New File ]
   ^G Help      ^O Write Out  ^W Where Is   ^K Cut        ^T Execute
   ^X Exit      ^R Read File  ^\ Replace    ^U Paste      ^J Justify
   ```

2. **Add your Claude Code configuration** at the bottom of the file:

   Copy and paste the following exactly as shown. Your administrator will email you the values to replace the `...` placeholders:

   ```bash
   # Claude Code / AWS Bedrock Configuration
   export CLAUDE_CODE_USE_BEDROCK=1
   export AWS_BEARER_TOKEN_BEDROCK=... # We'll send this via email
   export MAX_THINKING_TOKENS=4092
   export CLAUDE_CODE_MAX_OUTPUT_TOKENS=16384
   export ANTHROPIC_MODEL=... # We'll send this via email
   export ANTHROPIC_SMALL_FAST_MODEL=... # We'll send this via email
   ```

   **What it looks like after you paste:**
   ```
   GNU nano 6.2                    /Users/yourname/.zshrc                     Modified

   # Your existing shell configuration

   # Claude Code / AWS Bedrock Configuration
   export CLAUDE_CODE_USE_BEDROCK=1
   export AWS_BEARER_TOKEN_BEDROCK=... # We'll send this via email
   export MAX_THINKING_TOKENS=4092
   export CLAUDE_CODE_MAX_OUTPUT_TOKENS=16384
   export ANTHROPIC_MODEL=... # We'll send this via email
   export ANTHROPIC_SMALL_FAST_MODEL=... # We'll send this via email

   ^G Help      ^O Write Out  ^W Where Is   ^K Cut        ^T Execute
   ^X Exit      ^R Read File  ^\ Replace    ^U Paste      ^J Justify
   ```

3. **Save the file**:
   - Press `Ctrl + O` (that's the letter O, not zero)
   - Press `Enter` to confirm
   - Press `Ctrl + X` to exit nano

   **What you'll see:**
   ```
   File Name to Write: /Users/yourname/.zshrc
   ^G Help             ^T To Files         M-M Mac Format      M-B Backup File
   ^C Cancel           M-D DOS Format      M-A Append          M-P Prepend
   ```

   Just press `Enter`, then you'll see:
   ```
   [ Wrote 9 lines ]
   ```

4. **Reload your shell configuration**:

   ```bash
   source ~/.zshrc
   ```

   This applies the changes without restarting your terminal.

5. **Verify the variables are set**:

   ```bash
   echo $CLAUDE_CODE_USE_BEDROCK
   ```

   **Expected output:**
   ```
   1
   ```

   If you see "1", your configuration is loaded correctly!

**When to Update ~/.zshrc:**

You'll need to edit this file when:
- Your bearer token expires (your admin will notify you and provide a new one)
- Your organization updates the Claude model versions

Just repeat the steps above: `nano ~/.zshrc`, make changes, save, then `source ~/.zshrc`.

> **Important**: Keep your bearer token secure! Don't share it or commit it to git!

### Step 4: Test Your Setup

Start Claude Code to verify everything is working:

```bash
claude
```

You should see the Claude Code prompt appear. If you see errors about authentication, double-check your environment variables are set correctly (`echo $CLAUDE_CODE_USE_BEDROCK` should return "1").

Type `exit` to exit Claude Code.

### Step 5: Verification Exercise

**Time**: 10 minutes

Complete this exercise to confirm everything is working:

1. **Create a test project folder**
   ```bash
   mkdir ~/claude-test
   cd ~/claude-test
   ```

2. **Start Claude Code**
   ```bash
   claude
   ```

3. **Ask Claude a simple question**
   ```
   Hello! Can you create a simple text file called welcome.txt with a welcome message?
   ```

4. **Exit Claude Code**
   ```
   Type: exit
   ```

5. **Verify the file was created**
   ```bash
   cat welcome.txt
   ```

**If all steps worked**: Congratulations! You're ready for Day 1!

**If something didn't work**: See the troubleshooting section below, or reach out to [instructor contact info] for help.

---

## Troubleshooting Installation

**Common issues:**

**"Command not found: claude"**
- Solution: Restart your terminal and try again
- On macOS: Make sure Homebrew and Node/NPM installed correctly (`which npm` should show a path)
- Verify NPM global path is in your PATH: `echo $PATH`
- Still not working? Reach out for help!

**"Permission denied" or "EACCES: permission denied"**
- Solution: DO NOT use `sudo` - this means NPM global path needs configuration
- Fix NPM permissions without admin access:
  ```bash
  mkdir ~/.npm-global
  npm config set prefix '~/.npm-global'
  echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.zshrc
  source ~/.zshrc
  ```
- Then reinstall: `npm install -g @anthropic-ai/claude-code`

**"AWS Authentication failed" or "Unable to connect to Bedrock"**
- Solution: Verify your environment variables are set correctly
- Check: `echo $CLAUDE_CODE_USE_BEDROCK` should return "1"
- Check: `echo $AWS_BEARER_TOKEN_BEDROCK` should return your token
- If variables aren't set, reload your shell: `source ~/.zshrc`
- Contact your administrator if your bearer token may have expired

**"Invalid bearer token" or "Unauthorized"**
- Solution: Your bearer token may be incorrect or expired
- Double-check there are no extra spaces when copying the token to ~/.zshrc
- Contact your administrator for a fresh bearer token

**"Rate limit exceeded"**
- Solution: Your organization may have usage limits
- Contact your administrator about quota increases
- Try again in a few minutes

**Still stuck?**
- Don't panic! Take notes on the error message
- Screenshot the error if possible
- Note which step failed (installation, configuration, or connection test)
- Reach out to [instructor contact info] before Day 1

---

## Pre-Workshop Checklist

Before Day 1, make sure you have:

- [ ] Homebrew installed (Mac users)
- [ ] Node.js and NPM installed
- [ ] Claude Code CLI installed
- [ ] Bearer token added to ~/.zshrc
- [ ] Environment variables verified (`echo $CLAUDE_CODE_USE_BEDROCK` returns "1")
- [ ] Successfully tested Claude Code with the verification exercise
- [ ] welcome.txt file created successfully

**All set?** Great! See you at Day 1!

---

## Additional Resources

- [Claude Code Documentation](https://docs.anthropic.com/claude/code)
- Terminal basics will be covered on Day 2

---

*Having trouble? Questions? Reach out to [instructor contact info]*
