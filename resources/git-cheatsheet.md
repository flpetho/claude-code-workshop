# Git Quick Reference

**Printable single-page cheat sheet for Claude Code 101 Workshop**

## Daily Workflow (Use These Every Day!)

### Check what changed
```bash
git status
```
Shows: modified files, untracked files, current branch

### Save your changes
```bash
git add .
git commit -m "Describe what you did"
git push
```

**Example**:
```bash
git add .
git commit -m "Add meeting notes formatter tool"
git push
```

### See your history
```bash
git log --oneline
```
Shows recent commits (newest first)

## Working with Branches

### Create and switch to new branch
```bash
git checkout -b feature-name
```

**Example**:
```bash
git checkout -b research-dashboard
```

### Switch back to main
```bash
git checkout main
```

### See all branches
```bash
git branch
```
Current branch has `*` next to it

### Merge branch into main
```bash
git checkout main
git merge feature-name
```

### Delete branch after merging
```bash
git branch -d feature-name
```

## Syncing with GitHub

### Get latest changes from GitHub
```bash
git pull
```
Run this before starting work each day!

### Push your branch to GitHub
```bash
git push origin branch-name
```

**First time pushing new branch**:
```bash
git push -u origin branch-name
```
The `-u` remembers the connection for next time

## Checking Your Work

### See what you changed
```bash
git diff
```
Shows line-by-line changes (not yet staged)

### See what you're about to commit
```bash
git diff --staged
```

### View file history
```bash
git log --oneline filename.md
```

## GitHub Operations (Web UI)

These are done on github.com, not in terminal:

1. **Create Pull Request**:
   - Push branch to GitHub
   - Go to repository on GitHub
   - Click "Compare & pull request"
   - Add description
   - Click "Create pull request"

2. **Merge Pull Request**:
   - Review changes in PR
   - Click "Merge pull request"
   - Confirm merge
   - Delete branch (optional)

3. **Enable GitHub Pages**:
   - Repository → Settings
   - Pages (left sidebar)
   - Source: main branch
   - Save

## Emergency Commands (Use Carefully!)

### Undo all local changes
```bash
git checkout .
```
⚠️ **Warning**: Deletes all uncommitted changes!

### Undo last commit (keep changes)
```bash
git reset HEAD~1
```
Useful if you committed too early

### Undo last commit (delete changes)
```bash
git reset --hard HEAD~1
```
⚠️ **Warning**: Deletes the commit AND changes!

## Common Scenarios

### Scenario: Made changes, want to save

```bash
git add .
git commit -m "Descriptive message"
git push
```

### Scenario: Starting new feature work

```bash
git checkout main
git pull
git checkout -b new-feature
# ... make changes ...
git add .
git commit -m "Add new feature"
git push -u origin new-feature
```

### Scenario: Teammate pushed changes

```bash
git checkout main
git pull
```

### Scenario: Want to merge completed work

```bash
# On feature branch
git add .
git commit -m "Finish feature"
git push

# Switch to main
git checkout main
git pull

# Merge feature
git merge feature-branch
git push

# Delete feature branch
git branch -d feature-branch
```

## Reading Git Output

### Green text
- Staged files (ready to commit)
- "On branch main" (current location)

### Red text
- Modified files (not staged yet)
- Untracked files (new files Git doesn't know about)

### "nothing to commit, working tree clean"
- ✅ All changes saved!
- Everything is committed

### "Your branch is ahead of origin/main"
- You have local commits not yet pushed
- Solution: `git push`

### "Your branch is behind origin/main"
- GitHub has changes you don't have locally
- Solution: `git pull`

## Git Commit Message Best Practices

**Good commit messages**:
- `Add research dashboard with filtering`
- `Fix navigation menu alignment`
- `Update meeting notes template`
- `Create /competitive-analysis command`

**Bad commit messages**:
- `Update` (too vague)
- `Fixed stuff` (not descriptive)
- `asdfasdf` (not helpful)
- `WIP` (okay for personal branches, not for shared code)

**Format**:
- Start with verb: Add, Update, Fix, Create, Remove
- Be specific about what changed
- Keep under 50 characters if possible

## Troubleshooting

### Problem: "fatal: not a git repository"
**Solution**: You're not in a project folder. Navigate to your project:
```bash
cd ~/Sites/projects/your-project-name
```

### Problem: "Permission denied (publickey)"
**Solution**: Authentication issue. Use Personal Access Token instead of SSH.

### Problem: "Merge conflict"
**Solution**:
1. Open conflicted files (listed in terminal)
2. Look for `<<<<<<<`, `=======`, `>>>>>>>` markers
3. Choose which version to keep
4. Remove conflict markers
5. Save file
6. `git add .` and `git commit`

### Problem: "Your branch has diverged"
**Solution**:
```bash
git pull --rebase
```
Or ask instructor for help!

## Quick Tips

1. **Commit often**: Better to have many small commits than one huge commit
2. **Pull before push**: Always `git pull` before `git push` to avoid conflicts
3. **Read the output**: Git tells you exactly what to do - read the messages!
4. **Use descriptive branch names**: `research-dashboard` not `branch1`
5. **Don't panic**: Almost everything in Git can be undone

## Workshop Workflow by Day

**Day 1**: `git add`, `git commit`, `git push` (basics)

**Day 2**: `git checkout -b`, `git merge` (branches)

**Day 3**: Create Pull Request on GitHub (web UI)

**Day 4**: `git pull`, collaboration workflow

**Day 5**: `git tag`, GitHub Pages deployment

---

**Pro tip**: Keep this cheat sheet open in a browser tab during the workshop!

Need help? Ask your instructor - Git gets easier with practice! 🚀
