# Day 2: CLI Essentials for Non-Developers

## Learning Objectives

By the end of this session, you will:
1. Understand what the terminal is and why we use it
2. Navigate directories confidently using the command line
3. Know the essential commands for daily Claude Code work
4. Feel comfortable (not scared!) of the terminal

## What is the Terminal?

The **terminal** (also called command line, shell, or console) is a text-based way to interact with your computer.

**Think of it like this:**
- **Finder/File Explorer** = Visual way to work with files (point and click)
- **Terminal** = Text-based way to work with files (type commands)

### Why Use Terminal for Claude Code?

**Valid question:** "I have Finder/File Explorer. Why do I need this?"

**Answer:** Claude Code works through the terminal because:
1. **Precision** - You tell Claude exactly which folder to work in
2. **Speed** - Faster than clicking through menus
3. **Automation** - Commands can be repeated and automated
4. **Professional tool** - Used across all operating systems
5. **Claude needs context** - It needs to know where your project is

**Don't worry!** You only need to know about 10 commands. That's it.

## Opening Your Terminal

### macOS
1. Press `Cmd + Space` (opens Spotlight)
2. Type "Terminal"
3. Press Enter

**Or:** Applications → Utilities → Terminal

### Windows
1. Press `Windows key`
2. Type "PowerShell" or "Command Prompt"
3. Press Enter

**Or:** Right-click Start menu → Windows PowerShell

### Linux
1. Press `Ctrl + Alt + T`

**Or:** Look for "Terminal" in your applications menu

## Understanding Your Terminal Window

When you open terminal, you'll see something like this:

```
flpetho@Ferencs-MacBook ~ %
```

Let's break this down:
- `flpetho` = Your username
- `@Ferencs-MacBook` = Your computer name
- `~` = Your current location (~ means "home directory")
- `%` or `$` = Prompt (where you type commands)

**This is called your "prompt" - it's waiting for you to type a command.**

## The 10 Essential Commands

You don't need to memorize hundreds of commands. Here are the 10 you'll use 90% of the time:

### 1. `pwd` - "Print Working Directory"

**What it does:** Shows you where you currently are

```bash
pwd
```

**Output:**
```
/Users/flpetho
```

**Translation:** "I'm in flpetho's home directory"

**When to use:** When you're lost and need to know where you are

---

### 2. `ls` - "List"

**What it does:** Shows you what files and folders are in the current location

```bash
ls
```

**Output:**
```
Desktop    Documents    Downloads    Pictures
```

**Translation:** "These are the folders here"

**Useful variations:**
```bash
ls -la    # Shows ALL files including hidden ones, in list format
```

---

### 3. `cd` - "Change Directory"

**What it does:** Moves you to a different folder

```bash
cd Documents
```

**Translation:** "Go into the Documents folder"

**Common patterns:**
```bash
cd Documents              # Go into Documents folder
cd ..                     # Go up one level (to parent folder)
cd ~                      # Go to your home directory
cd ~/Desktop             # Go directly to Desktop
```

**Pro tip:** Type `cd` and then drag a folder from Finder into Terminal - it auto-fills the path!

---

### 4. `mkdir` - "Make Directory"

**What it does:** Creates a new folder

```bash
mkdir my-project
```

**Translation:** "Create a folder called my-project"

**Create multiple folders at once:**
```bash
mkdir -p projects/2024/ux-research
```

---

### 5. `touch` - Create Empty File

**What it does:** Creates a new empty file

```bash
touch notes.md
```

**Translation:** "Create an empty file called notes.md"

**Create multiple files:**
```bash
touch file1.txt file2.txt file3.txt
```

---

### 6. `cat` - "Concatenate" (View File Contents)

**What it does:** Shows you what's inside a file

```bash
cat notes.md
```

**Translation:** "Show me what's in notes.md"

**When to use:** Quick peek at file contents

---

### 7. `cp` - "Copy"

**What it does:** Copies files or folders

```bash
cp notes.md notes-backup.md
```

**Translation:** "Make a copy of notes.md called notes-backup.md"

**Copy a folder:**
```bash
cp -r my-folder my-folder-backup
```

---

### 8. `mv` - "Move" (or Rename)

**What it does:** Moves or renames files/folders

**Rename:**
```bash
mv old-name.txt new-name.txt
```

**Move to different location:**
```bash
mv file.txt Documents/
```

---

### 9. `rm` - "Remove" (Delete)

**What it does:** Deletes files or folders

**⚠️ WARNING:** This is permanent! No trash/recycle bin!

```bash
rm file.txt              # Delete a file
rm -r folder-name        # Delete a folder and everything in it
```

**Safety tip:** Always double-check before hitting Enter with `rm`!

---

### 10. `open` (macOS) / `start` (Windows)

**What it does:** Opens files/folders in their default application

```bash
open .                   # Opens current folder in Finder
open file.pdf            # Opens PDF in default viewer
```

**Windows:**
```bash
start .                  # Opens current folder in Explorer
```

---

## Understanding File Paths

This is probably the most confusing part, so let's break it down:

### Absolute Path
**Starts from the root of your computer**

```bash
/Users/flpetho/Documents/my-project
```

**Translation:** Start at the root (`/`), go to Users, then flpetho, then Documents, then my-project

**When to use:** When you want to be very specific about location

### Relative Path
**Starts from where you currently are**

```bash
Documents/my-project
```

**Translation:** From where I am now, go to Documents, then my-project

**When to use:** Most of the time (it's shorter!)

### Special Symbols

- `.` = Current directory
- `..` = Parent directory (one level up)
- `~` = Your home directory
- `/` = Root directory (top of the file system)

**Examples:**
```bash
cd .              # Stay where you are (not useful, but valid)
cd ..             # Go up one level
cd ../..          # Go up two levels
cd ~/.            # Go to home directory
```

## Common Terminal Patterns for Claude Code

Here's what you'll do most days with Claude Code:

### Pattern 1: Navigate to Project and Start Claude

```bash
cd ~/Documents/my-project        # Go to your project
ls                               # See what's there
claude                          # Start Claude Code
```

### Pattern 2: Create New Project

```bash
cd ~/Documents                   # Go to Documents
mkdir new-ux-project            # Create project folder
cd new-ux-project               # Go into it
claude                          # Start Claude Code
```

### Pattern 3: Check What's in Your Project

```bash
pwd                             # Where am I?
ls                              # What's here?
cat README.md                   # What's in this file?
```

### Pattern 4: Organize Files

```bash
mkdir research                  # Create research folder
mv interview-notes.md research/ # Move file into folder
cd research                     # Go into research folder
ls                              # Verify file is there
```

## Terminal Tips & Tricks

### 1. Tab Completion (Your Best Friend!)

Start typing and press `Tab` - the terminal will auto-complete!

```bash
cd Doc[TAB]              # Autocompletes to "Documents"
```

**If multiple options exist, press `Tab` twice to see all options.**

### 2. Command History

Use `↑` (up arrow) and `↓` (down arrow) to scroll through previous commands.

**Don't retype everything - just scroll to your previous command!**

### 3. Clear the Screen

Terminal getting cluttered?

```bash
clear               # Clears the screen (or Cmd+K / Ctrl+L)
```

### 4. Stop a Running Command

If something is running and you want to stop it:

Press `Ctrl + C`

### 5. Copy and Paste in Terminal

**macOS:**
- Copy: `Cmd + C`
- Paste: `Cmd + V`

**Windows/Linux:**
- Copy: `Ctrl + Shift + C` or right-click
- Paste: `Ctrl + Shift + V` or right-click

### 6. Drag and Drop

You can drag a folder from Finder/Explorer into Terminal to get its path!

```bash
cd [drag folder here]
```

### 7. Get Help

```bash
man ls              # Manual for ls command
ls --help           # Help for ls command
```

## Common Mistakes & How to Fix Them

### Mistake 1: "No such file or directory"

**What happened:** You tried to access something that doesn't exist or you're in the wrong location.

**Fix:**
```bash
pwd                 # Where am I?
ls                  # What's actually here?
```

### Mistake 2: "Permission denied"

**What happened:** You don't have permission to access that file/folder.

**Fix:**
- Are you in the right location?
- Do you own this file?
- Try: `ls -la` to see permissions

### Mistake 3: Got Lost

**Fix:**
```bash
cd ~                # Go home
pwd                 # Confirm where you are
```

### Mistake 4: Typo in File Name

**Remember:** Terminal is case-sensitive!
- `Document` ≠ `document`
- `MyFile.txt` ≠ `myfile.txt`

**Fix:** Use Tab completion to avoid typos

### Mistake 5: Spaces in File Names

**Problem:**
```bash
cd My Documents     # This doesn't work!
```

**Fix - Use quotes:**
```bash
cd "My Documents"   # This works!
```

**Or use backslash:**
```bash
cd My\ Documents    # This also works!
```

## Practice Exercises

### Exercise 1: The Navigation Challenge (5 min)

1. Open your terminal
2. Find out where you are: `pwd`
3. Go to your home directory: `cd ~`
4. List what's there: `ls`
5. Go to your Desktop: `cd Desktop`
6. Go back to home: `cd ..`

### Exercise 2: Create a Practice Project (10 min)

```bash
# 1. Go to Documents
cd ~/Documents

# 2. Create a project folder
mkdir claude-practice

# 3. Go into it
cd claude-practice

# 4. Create some files
touch notes.md ideas.txt tasks.md

# 5. List them
ls

# 6. View one file
cat notes.md

# 7. Create a subfolder
mkdir research

# 8. Move a file
mv ideas.txt research/

# 9. Verify it moved
ls research/

# 10. Clean up (optional)
cd ..
rm -r claude-practice
```

### Exercise 3: Real-World Scenario (15 min)

**Scenario:** You're starting a new UX research project.

**Tasks:**
1. Create a folder structure for your research
2. Create initial files for different aspects
3. Practice navigating between folders
4. Add some content to files

**See the full exercise:** [day-02-cli-scavenger-hunt.md](../exercises/day-02-cli-scavenger-hunt.md)

## Terminal Cheat Sheet

Keep this handy!

| Command | What it Does | Example |
|---------|-------------|---------|
| `pwd` | Show current location | `pwd` |
| `ls` | List files and folders | `ls` or `ls -la` |
| `cd` | Change directory | `cd Documents` |
| `cd ..` | Go up one level | `cd ..` |
| `cd ~` | Go to home directory | `cd ~` |
| `mkdir` | Create folder | `mkdir my-folder` |
| `touch` | Create empty file | `touch file.txt` |
| `cat` | View file contents | `cat notes.md` |
| `cp` | Copy file | `cp file.txt backup.txt` |
| `mv` | Move/rename file | `mv old.txt new.txt` |
| `rm` | Delete file | `rm file.txt` |
| `open` | Open file/folder | `open .` |
| `clear` | Clear screen | `clear` |
| `Tab` | Auto-complete | Type and press Tab |
| `↑/↓` | Command history | Press up/down arrows |
| `Ctrl+C` | Stop command | Press Ctrl+C |

## Success Checklist

By the end of Day 2, you should be able to:

- [ ] Open your terminal without fear
- [ ] Navigate to any folder using `cd`
- [ ] Create folders and files
- [ ] See what's in folders using `ls`
- [ ] Know where you are using `pwd`
- [ ] Use Tab completion
- [ ] Feel comfortable (maybe even confident!) with terminal

## Tomorrow: Day 3

**We'll learn:**
- How to start Claude Code in your projects
- Effective ways to communicate with Claude
- Creating your first real documents
- Working on an actual UX/PM project

**Homework (Optional):**
1. Practice the 10 essential commands
2. Create a practice project folder
3. Navigate around your file system
4. Try Tab completion and command history

## Additional Resources

- [CLI Commands Cheat Sheet](../cheat-sheets/cli-commands.md)
- [Terminal Troubleshooting Guide](../resources/terminal-troubleshooting.md)
- [Video: Terminal Basics](https://www.youtube.com/placeholder)

## Q&A Notes

*(Will be updated after live session)*

---

## Key Takeaways

1. **Terminal is just another way to work with files** - not scary, just different
2. **You only need ~10 commands** - That's it!
3. **Tab completion is your friend** - Use it constantly
4. **Practice makes comfortable** - The more you use it, the easier it gets
5. **Mistakes are okay** - You can't break anything easily

**Remember:** Every developer, designer, and PM who uses terminal was once exactly where you are now. You've got this!

---

*Questions? Stuck? Post in the workshop channel or reach out to [instructor contact]*
