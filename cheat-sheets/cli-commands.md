# CLI Commands Cheat Sheet
## Essential Terminal Commands for UX/PM Professionals

*Print this and keep it handy!*

---

## Navigation Commands

| Command | What It Does | Example | When to Use |
|---------|-------------|---------|-------------|
| `pwd` | **P**rint **W**orking **D**irectory<br>Shows where you are | `pwd` | When you're lost |
| `ls` | **L**i**s**t files and folders | `ls`<br>`ls -la` | See what's in current folder |
| `cd [folder]` | **C**hange **D**irectory<br>Move to a folder | `cd Documents` | Navigate to folders |
| `cd ..` | Go up one level | `cd ..` | Go to parent folder |
| `cd ~` | Go to home directory | `cd ~` | Go home |
| `cd -` | Go to previous directory | `cd -` | Go back to where you were |

---

## File & Folder Management

| Command | What It Does | Example | When to Use |
|---------|-------------|---------|-------------|
| `mkdir [name]` | **M**a**k**e **Dir**ectory<br>Create a folder | `mkdir my-project` | Create new folders |
| `mkdir -p [path]` | Create nested folders | `mkdir -p projects/2024/ux` | Create multiple levels |
| `touch [name]` | Create empty file | `touch notes.md` | Create new files |
| `rm [file]` | **R**e**m**ove file<br>Permanent! | `rm oldfile.txt` | Delete files |
| `rm -r [folder]` | Remove folder<br>Deletes everything! | `rm -r old-folder` | Delete folders |
| `cp [from] [to]` | **C**o**p**y file | `cp file.txt backup.txt` | Make copies |
| `cp -r [from] [to]` | Copy folder | `cp -r folder backup-folder` | Copy entire folders |
| `mv [from] [to]` | **M**o**v**e or rename | `mv old.txt new.txt` | Move or rename files |

---

## Viewing Files

| Command | What It Does | Example | When to Use |
|---------|-------------|---------|-------------|
| `cat [file]` | **Cat**enate<br>Show file contents | `cat notes.md` | Quick file view |
| `less [file]` | View file (scrollable) | `less longfile.txt` | View long files |
| `head [file]` | Show first 10 lines | `head notes.md` | Preview start of file |
| `tail [file]` | Show last 10 lines | `tail log.txt` | See end of file |
| `open [file]` | Open in default app (macOS) | `open image.png` | Open files |
| `start [file]` | Open in default app (Windows) | `start document.pdf` | Open files |

---

## Finding Things

| Command | What It Does | Example | When to Use |
|---------|-------------|---------|-------------|
| `find [path] -name [pattern]` | Search for files | `find . -name "*.md"` | Find files by name |
| `grep [pattern] [file]` | Search in file contents | `grep "TODO" notes.md` | Find text in files |
| `which [command]` | Find location of command | `which claude` | Check if installed |

---

## Shortcuts & Helpers

| Shortcut | What It Does | When to Use |
|----------|-------------|-------------|
| `Tab` | Auto-complete | While typing - saves time! |
| `↑` / `↓` | Scroll through command history | Reuse previous commands |
| `Ctrl + C` | Stop current command | Cancel a running command |
| `Ctrl + D` or `exit` | Close terminal | Exit terminal |
| `clear` or `Ctrl + L` | Clear screen | Clean up messy terminal |
| `Cmd + K` (macOS) | Clear screen | Clean up messy terminal |

---

## Special Symbols

| Symbol | Meaning | Example | Explanation |
|--------|---------|---------|-------------|
| `.` | Current directory | `ls .` | Where you are now |
| `..` | Parent directory | `cd ..` | One level up |
| `~` | Home directory | `cd ~` | Your user folder |
| `/` | Root or separator | `/Users/name/` | Top level or path separator |
| `*` | Wildcard (match anything) | `rm *.txt` | All .txt files |
| `>` | Redirect output to file | `ls > list.txt` | Save output to file |

---

## Common Terminal Patterns

### Starting a New Project
```bash
cd ~/Documents                  # Go to Documents
mkdir my-new-project           # Create project folder
cd my-new-project              # Go into it
touch README.md                # Create readme
mkdir research analysis        # Create subfolders
ls                             # See what you made
```

### Navigating to Existing Project
```bash
cd ~/Documents/my-project      # Go directly to project
pwd                            # Confirm you're there
ls                             # See what's in it
```

### Organizing Files
```bash
mkdir archive                  # Create archive folder
mv old-*.md archive/          # Move old files there
ls archive/                    # Verify they moved
```

### Making a Backup
```bash
cp important.md important-backup.md    # Backup a file
cp -r project-folder project-backup/   # Backup a folder
```

---

## Common Mistakes & Fixes

### "No such file or directory"
**Problem:** File/folder doesn't exist or you're in wrong location

**Fix:**
```bash
pwd                   # Where am I?
ls                    # What's here?
cd ~/Documents        # Go to known location
```

### "Permission denied"
**Problem:** Don't have access rights

**Fix:**
```bash
ls -la               # Check file permissions
# Make sure you own the file
```

### Spaces in File Names
**Problem:** `cd My Documents` doesn't work

**Fix:**
```bash
cd "My Documents"    # Use quotes
# OR
cd My\ Documents     # Escape the space
```

### Case Sensitivity
**Remember:** `Documents` ≠ `documents`

**Fix:** Use Tab completion to avoid typos

### Accidentally Deleted Something
**Problem:** Used `rm` and file is gone

**Unfortunately:** No undo! `rm` is permanent
**Prevention:** Always double-check before using `rm`

---

## Pro Tips

1. **Use Tab completion** - Type first few letters, press Tab
2. **Drag & drop** - Drag folders into terminal to get their path
3. **Check before delete** - Always `ls` before `rm`
4. **Use arrow keys** - Don't retype, scroll through history
5. **Make aliases** - Create shortcuts for common commands
6. **Start simple** - You only need the basics to start

---

## Getting Help

| Command | What It Does |
|---------|-------------|
| `man [command]` | Manual for command (press Q to exit) |
| `[command] --help` | Quick help |
| `which [command]` | Find if/where command is installed |

**Example:**
```bash
man ls              # Full manual for ls
ls --help           # Quick help for ls
```

---

## Platform Differences

### macOS vs Windows

| Task | macOS | Windows |
|------|-------|---------|
| Terminal | Terminal | PowerShell / Command Prompt |
| Home folder | `~` or `/Users/name` | `~` or `C:\Users\name` |
| List files | `ls` | `dir` or `ls` (PowerShell) |
| Clear screen | `clear` or `Cmd+K` | `cls` or `clear` |
| Open file | `open file.txt` | `start file.txt` |
| Path separator | `/` (forward slash) | `\` (backslash) |

---

## Claude Code Specific

### Starting Claude Code
```bash
cd ~/Documents/my-project      # Go to project
claude                         # Start Claude Code
```

### Exiting Claude Code
```
exit                          # Or Ctrl+D
```

### Checking Claude Code
```bash
claude --version              # Check if installed
claude --help                # See available commands
```

---

## Your Daily Workflow

**90% of your Claude Code work:**

```bash
# Morning: Start work
cd ~/Documents/my-ux-project
pwd                          # Confirm location
ls                           # See what's here
claude                       # Start working

# During work: Create/organize
mkdir new-research
touch interview-notes.md
mv old-files.md archive/

# End of day: Check status
ls
cat summary.md
```

---

## Commands to Memorize First

**Week 1 Priority:**
1. `cd` - Navigate folders
2. `ls` - See what's here
3. `pwd` - Where am I?
4. `mkdir` - Create folders
5. `touch` - Create files

**Week 2 Priority:**
6. `cat` - View files
7. `mv` - Move/rename
8. `cp` - Copy
9. `rm` - Delete (carefully!)
10. `open` / `start` - Open files

---

## Remember

- **Terminal is not scary** - It's just another way to work with files
- **You can't break much** - Most commands are reversible
- **Tab is your friend** - Use auto-completion constantly
- **Practice makes comfortable** - Use it daily for a week
- **Ask for help** - Everyone was a beginner once

---

**Keep this cheat sheet handy and refer to it often!**

*For more help, see the [Terminal Troubleshooting Guide](../resources/terminal-troubleshooting.md)*

---

**Version 1.0** | Created for Claude Code 101 Workshop | December 2024
