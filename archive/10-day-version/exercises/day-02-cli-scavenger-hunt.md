# Day 2 Exercise: CLI Scavenger Hunt

## Exercise Overview

**Duration**: 20-30 minutes
**Goal**: Practice essential terminal commands through a fun, real-world scenario
**Difficulty**: Beginner

## Scenario

You're starting a new UX research project called "Mobile Banking App Study". You need to set up your project folders and files using only the command line.

## Prerequisites

- Terminal open
- Completed Day 1 (Claude Code installed)
- Cheat sheet handy (from lesson or [cli-commands.md](../cheat-sheets/cli-commands.md))

## The Challenge

Complete all 15 steps using terminal commands. **No Finder/Explorer allowed!**

### Part 1: Create Your Project Structure (10 min)

**Step 1:** Open your terminal and navigate to your Documents folder
```bash
cd ~/Documents
```

**Step 2:** Check that you're in the right place
```bash
pwd
# Should show: /Users/[your-username]/Documents
```

**Step 3:** Create a new project folder
```bash
mkdir mobile-banking-research
```

**Step 4:** Go into your new project folder
```bash
cd mobile-banking-research
```

**Step 5:** Verify you're in the project folder
```bash
pwd
# Should end with: /mobile-banking-research
```

**Step 6:** Create the main project folders
```bash
mkdir interviews
mkdir observations
mkdir analysis
mkdir deliverables
```

**Step 7:** List all folders to verify they were created
```bash
ls
# Should show: analysis  deliverables  interviews  observations
```

**Step 8:** Create a project README file
```bash
touch README.md
```

**Step 9:** Create a research plan file
```bash
touch research-plan.md
```

**Step 10:** List everything (folders and files) to see your structure
```bash
ls
# Should now show your folders AND your .md files
```

**✓ Checkpoint:** You should see 4 folders and 2 files. Take a screenshot!

### Part 2: Add Interview Files (5 min)

**Step 11:** Go into the interviews folder
```bash
cd interviews
```

**Step 12:** Create interview note files for 5 participants
```bash
touch participant-01.md
touch participant-02.md
touch participant-03.md
touch participant-04.md
touch participant-05.md
```

**Step 13:** List the files to verify
```bash
ls
# Should show 5 participant files
```

**Step 14:** Go back up to the project root
```bash
cd ..
```

**Step 15:** Verify you're back in the project root
```bash
pwd
# Should show: /Users/[your-username]/Documents/mobile-banking-research
```

**✓ Checkpoint:** You're back in the main project folder!

### Part 3: Explore Your Structure (5 min)

**Step 16:** List everything with details
```bash
ls -la
# Shows all files/folders with permissions and hidden files
```

**Step 17:** Look inside the interviews folder without going into it
```bash
ls interviews/
# Should show your 5 participant files
```

**Step 18:** Create a quick notes file
```bash
touch quick-notes.txt
```

**Step 19:** Move it to the analysis folder
```bash
mv quick-notes.txt analysis/
```

**Step 20:** Verify it moved
```bash
ls analysis/
# Should show quick-notes.txt
```

**✓ Checkpoint:** File successfully moved!

### Part 4: Practice Navigation (5 min)

**Step 21:** Go to the observations folder
```bash
cd observations
```

**Step 22:** Create observation note files
```bash
touch session-01-observations.md
touch session-02-observations.md
```

**Step 23:** Go back up to project root
```bash
cd ..
```

**Step 24:** Open your project folder in Finder/Explorer
```bash
# macOS:
open .

# Windows:
start .
```

**Step 25:** View your final structure
```bash
ls -R
# The -R flag shows everything recursively (all subfolders)
```

## Success Criteria

✅ **You've successfully completed the exercise if:**

1. You created the main project folder
2. You created 4 subfolders (interviews, observations, analysis, deliverables)
3. You created 2 files in the root (README.md, research-plan.md)
4. You created 5 interview files
5. You created and moved the quick-notes file
6. You created 2 observation files
7. You can navigate back and forth between folders
8. You can list contents of folders
9. You did all this using terminal commands!

## Your Final Structure Should Look Like:

```
mobile-banking-research/
├── README.md
├── research-plan.md
├── interviews/
│   ├── participant-01.md
│   ├── participant-02.md
│   ├── participant-03.md
│   ├── participant-04.md
│   └── participant-05.md
├── observations/
│   ├── session-01-observations.md
│   └── session-02-observations.md
├── analysis/
│   └── quick-notes.txt
└── deliverables/
    (empty)
```

## Extension Challenges

**For fast learners who finish early:**

### Challenge 1: Add More Structure
Create subfolders in the `analysis` folder:
```bash
cd analysis
mkdir themes
mkdir insights
mkdir quotes
cd ..
```

### Challenge 2: Create a Template
Create a template file for interview notes:
```bash
cd interviews
cat > interview-template.md << 'EOF'
# Interview Notes

**Participant:**
**Date:**
**Duration:**

## Key Insights

## Quotes

## Follow-up Questions

EOF
```

Then view it:
```bash
cat interview-template.md
```

### Challenge 3: Practice Copying
Make a backup of your README:
```bash
cp README.md README-backup.md
```

### Challenge 4: Real Content
Add some actual content to your README using a text editor:
```bash
# macOS:
open README.md

# Windows:
notepad README.md

# Or use nano in terminal:
nano README.md
```

## Common Issues & Solutions

### Issue 1: "No such file or directory"

**What happened:** You're not where you think you are.

**Solution:**
```bash
pwd              # Check where you are
cd ~             # Go home
cd Documents     # Go to Documents
```

### Issue 2: "File exists"

**What happened:** You already created that file/folder.

**Solution:** That's actually okay! Just continue to the next step.

### Issue 3: "Permission denied"

**What happened:** You don't have permission in that location.

**Solution:** Make sure you're in your Documents folder (`cd ~/Documents`) and try again.

### Issue 4: Typo in Folder Name

**What happened:** You typed `interveiws` instead of `interviews`

**Solution:** Rename it!
```bash
mv interveiws interviews
```

### Issue 5: Lost in Folders

**Solution:** Go back to the beginning
```bash
cd ~/Documents/mobile-banking-research
pwd
```

## Reflection Questions

After completing the exercise, think about:

1. Which commands felt most natural?
2. Which commands were confusing?
3. How does this compare to using Finder/Explorer?
4. Can you see yourself using terminal for organizing projects?

## Bonus: Start Claude Code in Your Project

If you have time, try starting Claude Code in your new project:

```bash
# Make sure you're in the project root
cd ~/Documents/mobile-banking-research

# Start Claude Code
claude
```

Then ask Claude:
```
Can you read my project structure and suggest what kind of content to add to each folder?
```

See how Claude understands your file structure!

**Exit Claude Code:**
```
exit
```

## Cleanup (Optional)

If you want to delete your practice project:

```bash
cd ~/Documents
rm -r mobile-banking-research
```

**⚠️ Warning:** This permanently deletes everything!

## Next Steps

**Tomorrow (Day 3):**
- You'll use these commands to work with Claude Code
- You'll create real project content
- You'll see how terminal + Claude Code = powerful workflow

**Homework (Optional):**
- Create a real project folder for something you're working on
- Practice navigating to it using terminal
- Try creating files and folders for your actual work

---

## Checklist: Did You Complete Everything?

- [ ] Created mobile-banking-research folder
- [ ] Created 4 subfolders
- [ ] Created README and research-plan files
- [ ] Created 5 interview files
- [ ] Created observation files
- [ ] Moved quick-notes file
- [ ] Navigated between folders successfully
- [ ] Listed contents of folders
- [ ] Opened project in Finder/Explorer from terminal
- [ ] Feel more confident with terminal!

**Congratulations!** You just organized an entire UX research project using only the command line. That's a huge step!

---

*Need help? Stuck on a step? Post in the workshop channel or reach out to [instructor contact]*
