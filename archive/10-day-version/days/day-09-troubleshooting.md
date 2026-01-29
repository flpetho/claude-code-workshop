# Day 9: Troubleshooting & Best Practices

## Learning Objectives

By the end of this session, you will:
1. Troubleshoot common Claude Code issues independently
2. Know when to use Claude Code vs. other tools
3. Understand best practices for long-term success
4. Recover from mistakes confidently
5. Know where to get help when stuck

## The Journey So Far

**Week 1:** Built foundation (CLI, Claude Code basics, project organization)
**Week 2 (Days 5-8):** Real workflows, agents, customization

**Today:** Ensure long-term success!

## Common Issues & Solutions

### Issue 1: "Claude Code Can't Find My File"

**Symptoms:**
```
You: Read design-spec.md
Claude: I can't find that file
```

**Causes & Solutions:**

#### Cause A: Wrong Directory

**Check where you are:**
```bash
pwd
```

**Solution:**
```bash
cd /path/to/correct/directory
```

**Better approach:** Always start Claude Code from your project root:
```bash
cd ~/Documents/my-project
claude
```

#### Cause B: File Doesn't Exist

**Check if file exists:**
```bash
ls *.md
```

**Solution:**
```
You: Create design-spec.md with [requirements]
```

#### Cause C: Typo in Filename

**Check exact filename:**
```bash
ls -la
```

File is `design_spec.md` but you typed `design-spec.md`?

**Solution:** Use exact filename or rename file:
```bash
mv design_spec.md design-spec.md
```

### Issue 2: Claude Code Output Not What You Expected

**Symptoms:**
```
You: Create a design spec
Claude: [Creates something very generic or wrong]
```

**Causes & Solutions:**

#### Cause A: Vague Instructions

**❌ Too vague:**
```
Create a design spec
```

**✅ Specific:**
```
Create a design specification for a password reset feature with sections for user flow, screens required, edge cases (including network errors and expired tokens), accessibility requirements (WCAG AA), and success metrics. Save as specs/password-reset-spec.md
```

#### Cause B: Missing Context

Claude Code doesn't remember previous sessions.

**❌ Assumes context:**
```
Add those features to the spec
```

(What features? What spec?)

**✅ Provides context:**
```
Add biometric authentication and password strength indicator features to specs/password-reset-spec.md in the Features section
```

#### Cause C: Need to Iterate

First draft is rarely perfect!

**Workflow:**
```
1. Get initial version
2. Review it
3. Ask for specific improvements
4. Iterate until right
```

**Example:**
```
You: Expand the edge cases section to include: network timeout, invalid email format, account locked, too many reset attempts, token expiry

You: Make the edge cases section into a table with columns for: Scenario, User Experience, Technical Handling

You: Add a Priority column showing which edge cases are P0 vs P1
```

### Issue 3: Claude Code is Slow/Not Responding

**Symptoms:**
- Takes a long time to respond
- Seems stuck
- No response at all

**Solutions:**

#### If it's taking longer than expected:
```
Ctrl+C  (cancels current operation)
```

Try a simpler request first:
```
You: List all markdown files in this directory
```

If that works, original request might be too complex.

#### If completely stuck:
```
exit
```

Then restart:
```bash
claude
```

#### If problems persist:
Check your API key/subscription status or contact support.

### Issue 4: Accidentally Overwrote Important File

**Symptoms:**
```
You: Create design-spec.md
Claude: [Creates file]
You: Oh no! I had an existing design-spec.md with important content!
```

**Prevention:**

**Always check what exists first:**
```bash
ls specs/
```

**Or ask Claude Code:**
```
You: Does design-spec.md already exist? If so, read it first so I can decide if I want to overwrite it.
```

**Recovery:**

If you just overwrote it:
```
You: I accidentally overwrote design-spec.md. Can you undo that?
```

Claude Code can't undo, but you might have:
1. **Version control (git):** `git checkout design-spec.md`
2. **Backup:** Check backup folder
3. **Time Machine (Mac):** Restore from backup
4. **File history (Windows):** Right-click → Restore previous versions

**Best practice:** Use git for important projects!

### Issue 5: Custom Command Not Working

**Symptoms:**
```
You: /my-command
Claude: I don't recognize that command
```

**Solutions:**

#### Check command file exists:
```bash
ls ~/.claude/commands/
```

Should see `my-command.md`

#### Check filename matches:
`/my-command` requires `my-command.md` (not `my_command.md` or `mycommand.md`)

#### Restart Claude Code:
```
exit
claude
```

#### Check file content:
```bash
cat ~/.claude/commands/my-command.md
```

Must contain instructions (not be empty).

### Issue 6: Can't Remember What I Asked Claude Code to Do

**Symptoms:**
You see files changed but can't remember what you asked for.

**Solutions:**

#### Check git history:
```bash
git log
git diff
```

#### Ask Claude Code what it did:
```
You: What did we just do in this session? Can you summarize the files we created or modified?
```

**Best practice:** Keep session notes:
```
Create a notes.md file for today:
"Session [date]: Created design spec for password reset feature, generated flow diagram, reviewed edge cases with design-review agent"
```

## When to Use Claude Code vs. Other Tools

### Use Claude Code For:

**✅ Content creation and organization**
- Documentation
- Design specs
- Research synthesis
- Meeting notes formatting
- Project organization

**✅ Analysis and synthesis**
- Finding patterns in research
- Competitive analysis
- Identifying themes
- Creating comparison matrices

**✅ Structured output**
- Tables
- Templates
- Mermaid diagrams (user flows)
- Consistent formats

**✅ Repetitive tasks**
- Creating multiple similar documents
- Applying templates
- Batch processing files

### Don't Use Claude Code For:

**❌ Visual design**
- Actual mockups (use Figma, Sketch, Adobe XD)
- Image editing (use Photoshop, Figma)
- Complex diagrams (use Lucidchart, Miro, FigJam)

**❌ Real-time collaboration**
- Simultaneous editing (use Google Docs, Notion)
- Live brainstorming (use Miro, FigJam)
- Video meetings (use Zoom, Teams)

**❌ Version control UI**
- Viewing git history (use GitHub Desktop, SourceTree)
- Resolving merge conflicts (use git tools)

**❌ Actual coding (for non-developers)**
- Building working software
- Deploying applications
- Setting up servers

### The Perfect Workflow: Claude Code + Your Tools

**Example: Design Spec Creation**

1. **Brainstorm** in Miro (visual, collaborative)
2. **Document with Claude Code** (structured, formatted)
3. **Create mockups** in Figma (visual design)
4. **Link everything** in Notion or Confluence (central hub)
5. **Track with Claude Code** (status updates)

**Example: User Research**

1. **Conduct interviews** (Zoom + note-taking)
2. **Store recordings** (cloud storage)
3. **Transcribe if needed** (Otter.ai, Rev)
4. **Organize files** (Claude Code)
5. **Synthesize findings** (Claude Code)
6. **Create presentation** (Google Slides, PowerPoint)

**Claude Code is a powerful part of your toolkit, not a replacement for everything!**

## Best Practices for Long-Term Success

### 1. Start Claude Code in the Right Place

**❌ Bad:**
```bash
cd ~
claude
```
(You're in your home directory - Claude Code sees everything!)

**✅ Good:**
```bash
cd ~/Documents/current-project
claude
```
(You're in your project - Claude Code sees only relevant files!)

### 2. Keep Projects Organized

**Good structure:**
```
my-project/
├── CLAUDE.md          # Project guide
├── README.md          # Overview
├── specs/             # Organized by type
├── research/
├── deliverables/
└── archive/           # Old files
```

**Bad structure:**
```
my-project/
├── file1.md
├── doc2.md
├── notes-final-FINAL-v2.md
├── old-version.md
├── backup-copy.md
└── temp.md
```

### 3. Be Specific in Your Requests

**Evolution of a request:**

**Attempt 1 (vague):**
```
Create a design spec
```

**Attempt 2 (better):**
```
Create a design spec for password reset feature
```

**Attempt 3 (great):**
```
Create a design specification for password reset feature with sections for: overview, user flow (including error states), screens required, components, accessibility (WCAG AA minimum), edge cases, and success metrics. Save as specs/password-reset-spec.md
```

**Pattern:** Context + Task + Format + Location

### 4. Review Before Accepting

**Always review Claude Code's output:**
```
1. Read the file
2. Check for accuracy
3. Fill in placeholders
4. Add specifics only you know
5. Iterate if needed
```

**You're the expert on your work - Claude Code is your assistant!**

### 5. Use Git for Important Work

**Even if you're not a developer, git is useful:**

```bash
# Initialize git in project
git init

# Save current state
git add .
git commit -m "Initial project setup"

# After major changes
git add .
git commit -m "Completed design spec for password reset"

# If you make a mistake
git checkout [filename]  # Reverts file to last commit
```

**Think of git as unlimited undo!**

### 6. Build Your Templates

After creating something good:
```
1. Save it as a template
2. Strip out specific details
3. Add placeholder text
4. Reuse forever!
```

**Example:**
```
~/Documents/templates/
├── design-spec-template.md
├── research-synthesis-template.md
├── competitive-analysis-template.md
└── prd-template.md
```

### 7. Document Your System

Create `~/.claude/my-system.md`:
```markdown
# My Claude Code Workflow

## My Custom Commands
[List them]

## My Templates
[Where they are]

## My Naming Conventions
[How I name files]

## My Typical Workflows
[Step by step]
```

**Future you will thank present you!**

### 8. Keep Learning

Claude Code evolves:
- New features added
- New agents available
- Better ways to do things

**Stay current:**
- Check for updates
- Read release notes
- Try new features
- Share learnings with team

## Getting Help

### When You're Stuck

**Hierarchy of help:**

1. **Try to solve it yourself** (5 minutes)
   - Check this guide
   - Review error messages
   - Try obvious solutions

2. **Ask Claude Code for help**
   ```
   You: I'm trying to [what you want] but [what's happening]. Can you help troubleshoot?
   ```

3. **Check documentation**
   - Official Claude Code docs
   - This workshop materials
   - Your team's documentation

4. **Ask a colleague**
   - Someone on your team who uses Claude Code
   - Share screen if needed
   - Learn from their approach

5. **Official support**
   - Submit support ticket
   - Include error messages
   - Describe what you tried

### How to Ask for Help Effectively

**❌ Not helpful:**
```
"It's not working"
```

**✅ Helpful:**
```
"I'm trying to create a design spec by asking Claude Code 'Create a design spec for password reset', but it's creating a very generic document without the sections I need (user flow, edge cases, accessibility). I'm in ~/Documents/my-project and the file should be saved to specs/password-reset-spec.md. What am I doing wrong?"
```

**Include:**
1. What you're trying to do
2. What you expected
3. What actually happened
4. What you've tried
5. Error messages (if any)
6. Your environment (where you are, what folder)

## Practice: Troubleshooting Scenarios

See [day-09-troubleshooting-exercise.md](../exercises/day-09-troubleshooting-exercise.md) for hands-on troubleshooting practice.

## Quick Reference: Troubleshooting Checklist

**When something goes wrong:**

- [ ] Am I in the right directory? (`pwd`)
- [ ] Does the file exist? (`ls`)
- [ ] Is my request specific enough?
- [ ] Have I provided enough context?
- [ ] Did I check for typos?
- [ ] Have I tried exiting and restarting?
- [ ] Do I have a backup / can I undo?
- [ ] Have I read the error message carefully?
- [ ] What exactly did I expect vs. what happened?
- [ ] Can I ask Claude Code for help?

## Success Checklist

By the end of Day 9, you should be able to:

- [ ] Troubleshoot file not found errors
- [ ] Fix vague requests
- [ ] Recover from mistakes
- [ ] Know when to use Claude Code vs. other tools
- [ ] Follow best practices for organization
- [ ] Use git for basic version control
- [ ] Ask for help effectively
- [ ] Feel confident using Claude Code independently

## Tomorrow: Day 10

**Show & Tell Day!**
- Present what you've learned
- Share your best work
- Celebrate progress
- Get feedback from peers
- Graduate from Claude Code 101!

**Homework (Prep for Show & Tell):**
1. Choose 1-2 things you've created to share
2. Prepare 5-minute presentation
3. Think about: What you learned, what surprised you, what you'll use most
4. Be ready to demo your custom commands or workflows

## Key Takeaways

1. **Most issues are simple** - Wrong directory, vague request, typo
2. **Specific requests = better output** - Context + Task + Format + Location
3. **Claude Code is one tool** - Use the right tool for each job
4. **Review everything** - You're the expert, Claude Code assists
5. **Build your system** - Templates, commands, workflows
6. **Git is your friend** - Unlimited undo for important work
7. **Ask for help** - Clearly describe issue with context
8. **Keep learning** - Claude Code evolves, you should too

**You're now equipped to use Claude Code successfully for the long term!**

---

*Questions? Final clarifications? Ask now before Show & Tell tomorrow!*
