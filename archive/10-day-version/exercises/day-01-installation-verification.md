# Day 1 Exercise: Installation & First Steps

## Exercise Overview

**Duration**: 15-20 minutes
**Goal**: Successfully install Claude Code and verify it's working
**Difficulty**: Beginner

## Prerequisites

- Computer with internet access
- Administrator access to install software
- AWS Bedrock credentials (provided by your organization's administrator)

## What You'll Do

1. Install Claude Code CLI on your machine
2. Configure AWS Bedrock authentication
3. Test your connection
4. Create a test project
5. Run your first Claude Code session
6. Verify everything works

## Step-by-Step Instructions

### Part 1: Installation (5 minutes)

**Choose your operating system:**

**macOS Users:**
1. Open Terminal (Applications → Utilities → Terminal)
2. Type: `brew install anthropics/claude/claude`
3. Press Enter and wait for installation

**Windows Users:**
1. Open PowerShell as Administrator (right-click → Run as Administrator)
2. Type: `winget install Anthropic.Claude`
3. Press Enter and wait for installation

**Linux Users:**
1. Open Terminal (Ctrl+Alt+T)
2. Type: `curl -fsSL https://anthropic.com/install.sh | sh`
3. Press Enter and wait for installation

### Part 2: Verify Installation (2 minutes)

1. **Close and reopen your terminal** (important!)

2. Type this command:
   ```bash
   claude --version
   ```

3. **Expected result**: You should see a version number like `claude 1.0.0`

**Troubleshooting:**
- If you get "command not found", restart your terminal
- Still not working? Proceed to Part 5 for troubleshooting

### Part 3: Configure AWS Bedrock Authentication (10 minutes)

Your organization uses AWS Bedrock for Claude Code access. You'll set up your credentials using environment variables in your shell configuration file.

#### Step 1: Get Your Credentials

You should have received from your administrator:
- **AWS Access Key ID** (starts with `AKIA...`)
- **AWS Secret Access Key** (long alphanumeric string)
- **AWS Region** (e.g., `us-east-1` or `us-west-2`)
- **Model Name** (e.g., `claude-sonnet-4-5`)

Keep these handy - you'll need them in a moment!

#### Step 2: Open Your Shell Configuration File

1. **Open nano editor** to edit your `.zshrc` file:

   ```bash
   nano ~/.zshrc
   ```

2. **You'll see a screen like this:**

   ```
   GNU nano 6.2                    /Users/yourname/.zshrc

   # Your existing configuration might be here
   # Or the file might be empty






                                  [ New File ]
   ^G Help      ^O Write Out  ^W Where Is   ^K Cut        ^T Execute
   ^X Exit      ^R Read File  ^\ Replace    ^U Paste      ^J Justify
   ```

   Don't panic! This is a simple text editor.

#### Step 3: Add Your Credentials

1. **Use arrow keys** to move to the bottom of the file (below any existing text)

2. **Type these lines** (or copy-paste them):

   ```bash
   # Claude Code / AWS Bedrock Configuration
   export AWS_ACCESS_KEY_ID="paste-your-access-key-here"
   export AWS_SECRET_ACCESS_KEY="paste-your-secret-key-here"
   export AWS_REGION="us-east-1"
   export ANTHROPIC_MODEL="claude-sonnet-4-5"
   ```

3. **Replace the placeholder values** with your actual credentials from your admin

4. **Your screen should look like this:**

   ```
   GNU nano 6.2                    /Users/yourname/.zshrc                     Modified

   # Claude Code / AWS Bedrock Configuration
   export AWS_ACCESS_KEY_ID="AKIAIOSFODNN7EXAMPLE"
   export AWS_SECRET_ACCESS_KEY="wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
   export AWS_REGION="us-east-1"
   export ANTHROPIC_MODEL="claude-sonnet-4-5"


   ^G Help      ^O Write Out  ^W Where Is   ^K Cut        ^T Execute
   ^X Exit      ^R Read File  ^\ Replace    ^U Paste      ^J Justify
   ```

   Notice "Modified" in the title bar!

#### Step 4: Save and Exit

1. **Save the file**: Press `Ctrl + O` (the letter O, not zero)

   You'll see:
   ```
   File Name to Write: /Users/yourname/.zshrc
   ```

2. **Press Enter** to confirm

   You'll see:
   ```
   [ Wrote 4 lines ]
   ```

3. **Exit nano**: Press `Ctrl + X`

   You're back at your normal terminal prompt!

#### Step 5: Apply the Changes

1. **Reload your configuration**:

   ```bash
   source ~/.zshrc
   ```

   This command reads your updated file and applies the changes.

2. **Verify it worked**:

   ```bash
   echo $AWS_REGION
   ```

   **Expected output:**
   ```
   us-east-1
   ```

   If you see your region, success! Your credentials are loaded.

#### Step 6: Test Claude Code Connection

```bash
claude test-connection
```

**Expected result**: `✓ Successfully connected to AWS Bedrock`

**Troubleshooting Authentication:**

- **"Invalid credentials"**: Open `nano ~/.zshrc` again and check for typos
- **"Region not supported"**: Verify the region with your administrator
- **"Access denied"**: Contact your admin - your IAM permissions may need updating
- **echo shows nothing**: Make sure you ran `source ~/.zshrc` after editing
- **nano won't open**: Try `nano ~/.bashrc` if you're using bash instead of zsh

#### When You Need to Update Later

You'll edit this file again when:
- Your AWS credentials expire (admin will notify you)
- You get access to a new model
- Your region changes

Just repeat: `nano ~/.zshrc` → make changes → save → `source ~/.zshrc`

### Part 4: Create Test Project (5 minutes)

Now let's create a simple test project to verify everything works.

1. **Create a test folder**:
   ```bash
   mkdir ~/my-first-claude-project
   cd ~/my-first-claude-project
   ```

2. **Start Claude Code**:
   ```bash
   claude
   ```

   You should see:
   ```
   Claude Code v1.0.0
   Ready to help! Ask me anything.
   ```

3. **Ask Claude to create a file**:
   Type this message:
   ```
   Can you create a file called welcome.txt with a welcome message for me?
   ```

4. **Watch Claude work**:
   - Claude will explain what it's going to do
   - It will create the file
   - It will show you the contents

5. **Exit Claude Code**:
   Type: `exit` or press `Ctrl+D`

6. **Verify the file exists**:
   ```bash
   ls
   cat welcome.txt
   ```

   You should see your welcome message!

### Part 5: Troubleshooting

**Problem: "command not found: claude"**

Solution checklist:
- [ ] Did you restart your terminal after installation?
- [ ] Is your package manager (brew/winget) up to date?
- [ ] Do you have administrator access?

Try:
```bash
# macOS
which claude

# Windows
where claude
```

If nothing shows up, Claude Code isn't installed correctly.

**Problem: "Permission denied"**

Solution:
- macOS/Linux: Try `sudo` before the command
- Windows: Open PowerShell as Administrator

**Problem: "Authentication failed"**

Solution checklist:
- [ ] Do you have a Claude account?
- [ ] Is your internet connected?
- [ ] Did you click "Authorize" in the browser?

**Problem: Claude won't start in my project**

Solution:
- Make sure you're in the correct folder: `pwd`
- Try creating a new empty folder and starting there
- Check that claude is installed: `claude --version`

**Still stuck?**
1. Take a screenshot of the error
2. Note exactly what command you typed
3. Ask in the Q&A session or post in the workshop channel

## Expected Outcomes

✅ **Success looks like:**
- `claude --version` shows a version number
- `claude` starts without errors
- Claude creates files when you ask
- You can see the created files

❌ **If you don't see these:**
- Don't worry! We'll help troubleshoot
- Make notes on what's not working
- You can catch up tomorrow

## Extension Challenges

**For fast learners who finish early:**

1. **Ask Claude to create multiple files**:
   ```
   Create a README.md file with a project description
   ```

2. **Ask Claude to read a file**:
   ```
   What's in welcome.txt?
   ```

3. **Ask Claude to modify a file**:
   ```
   Add a second paragraph to welcome.txt about my excitement for this workshop
   ```

4. **Explore commands**:
   ```bash
   claude --help
   ```

## Reflection Questions

After completing the exercise:

1. What was the hardest part of the installation?
2. What surprised you about Claude Code?
3. What would you like to use Claude Code for in your work?

## Next Steps

**Homework (Optional):**
- Keep your `my-first-claude-project` folder - we'll use it tomorrow!
- Try asking Claude to create one more file on a topic you're interested in
- Get comfortable opening and closing your terminal

**Tomorrow (Day 2):**
- We'll learn terminal basics so you feel confident
- You'll learn how to navigate folders and manage files
- We'll demystify the command line!

---

## Checklist: Did You Complete Everything?

- [ ] Claude Code installed
- [ ] `claude --version` works
- [ ] Authentication successful
- [ ] Created test project folder
- [ ] Started Claude Code
- [ ] Claude created a file successfully
- [ ] Verified the file exists
- [ ] Feeling ready for Day 2!

**Congratulations!** You've taken the first step into a new way of working. See you tomorrow!

---

*Need help? Contact [instructor info] or post in the workshop channel*
