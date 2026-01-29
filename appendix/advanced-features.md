# Advanced Features

This guide covers advanced Claude Code features beyond the core workshop content. These are optional but powerful tools for advanced users.

## Hooks: Automation Triggers

**What are hooks?** Scripts that run automatically when events happen.

**Common use cases**:
- Auto-update documentation when files change
- Run tests before commits
- Format code on save
- Track time automatically

### Example: Auto-Update README

Create `.claude/hooks/file-change.sh`:

```bash
#!/bin/bash
# Runs when files change

if [[ "$CHANGED_FILE" == src/* ]]; then
    # Update README with new file count
    COUNT=$(ls src/ | wc -l)
    echo "## Files: $COUNT" >> README.md
fi
```

Make executable:
```bash
chmod +x .claude/hooks/file-change.sh
```

**Note**: Hooks are powerful but can be complex. Start with simple examples.

## MCP Servers: Custom Tools

**What is MCP?** Model Context Protocol - extends Claude Code with custom tools.

**Examples**:
- Jira integration (create/read tickets)
- Database access (query data)
- API integrations (fetch live data)
- Custom file formats (parse proprietary data)

### Creating an MCP Server

**Beyond workshop scope**, but resources:
- https://modelcontextprotocol.io
- Claude Code MCP documentation
- Community examples on GitHub

## Advanced Custom Commands

### Commands with Complex Logic

**Example**: Multi-step workflow command

`.claude/commands/research-flow.md`:
```markdown
---
description: Complete research workflow
---

Execute this multi-step research process:

1. Ask user for:
   - Research topic
   - Number of sources to analyze
   - Output format (report/presentation/doc)

2. Search for sources in the research/ folder

3. Analyze each source in parallel:
   - Extract key findings
   - Identify themes
   - Note methodology

4. Synthesize across all sources:
   - Common themes
   - Conflicting findings
   - Gaps in research

5. Generate deliverable in requested format

6. Save results to research-outputs/[topic]/[date].md
```

### Conditional Commands

Commands that adapt based on context:

```markdown
---
description: Smart commit message generator
---

Analyze the staged changes (git diff --staged) and:

IF changes are in src/:
  - Generate technical commit message
  - Include affected files
  - Suggest tests to update

ELSE IF changes are in docs/:
  - Generate documentation update message
  - List sections updated

ELSE:
  - Generate general commit message

Format: "type(scope): description"
```

## Agents: Deep Dive

### Agent Types

**Explore Agent**:
- Searches codebase thoroughly
- Multi-hop reasoning
- Use for: "How does X work?"

**Plan Agent**:
- Architectural planning
- Multi-step task decomposition
- Use for: Complex feature planning

**General Agent**:
- Versatile problem solving
- Multi-tool access
- Use for: Open-ended tasks

### When to Use Agents

**Use agents for**:
- ✅ Complex, multi-file analysis
- ✅ Architectural questions
- ✅ Exploratory research

**Use direct Claude Code for**:
- ❌ Simple file edits
- ❌ Single-file questions
- ❌ Quick tasks

## Configuration Files

### `.claude/config.json`

Advanced configuration options:

```json
{
  "model": "claude-sonnet-4-5",
  "maxTokens": 4096,
  "temperature": 0.7,
  "customInstructions": "Always use FamilySearch branding",
  "excludePaths": [
    "node_modules/",
    ".git/",
    "*.tmp"
  ]
}
```

### Project Templates

Create reusable project templates:

```bash
~/.claude/templates/
├── genealogy-tool/
│   ├── template.json
│   ├── src/
│   └── .claude/
└── research-dashboard/
    ├── template.json
    ├── src/
    └── .claude/
```

Use with:
```bash
claude init --template genealogy-tool
```

## Performance Optimization

### Context Management

**Limit context** for faster responses:

```bash
# Only include specific directories
claude --include src/ docs/

# Exclude large directories
claude --exclude node_modules/ build/
```

### Caching Strategies

**Use .claudeignore** to reduce context:

```
# .claudeignore
node_modules/
*.log
build/
dist/
.env
*.tmp
```

## Team Collaboration

### Shared Command Libraries

**Create team command repository**:

```bash
~/team-claude-commands/
├── genealogy/
│   ├── citation.md
│   ├── research-log.md
│   └── family-story.md
├── product/
│   ├── prd.md
│   ├── competitive.md
│   └── user-story.md
└── README.md
```

**Symlink to projects**:

```bash
ln -s ~/team-claude-commands/genealogy/*.md .claude/commands/
```

### Command Sharing Best Practices

1. **Document well**: Clear descriptions and examples
2. **Version control**: Keep commands in Git
3. **Test thoroughly**: Ensure commands work for team
4. **Namespace**: Prefix team commands (`team-cite`, `fg-research`)

## Advanced Workflows

### Automated Research Pipeline

```bash
# research-pipeline.sh

#!/bin/bash

# 1. Collect sources
claude /collect-sources

# 2. Analyze in parallel
claude "Analyze all files in sources/ in parallel"

# 3. Synthesize findings
claude /synthesize-research

# 4. Generate report
claude /generate-report

echo "✅ Research pipeline complete!"
```

### Continuous Documentation

Hook that updates docs on code changes:

```bash
# .claude/hooks/post-commit.sh

#!/bin/bash

# Generate updated documentation
claude "Update ARCHITECTURE.md based on latest code changes"

# Commit doc updates
git add ARCHITECTURE.md
git commit --amend --no-edit
```

## Security Considerations

**Don't commit**:
- ❌ API keys or tokens
- ❌ Credentials files
- ❌ .env files
- ❌ Personal data

**Use .gitignore**:
```
.env
.env.local
credentials.json
secrets/
*.key
```

**Audit hooks**:
- Review hook scripts before running
- Understand what automation does
- Test in safe environment first

## Further Learning

**Resources**:
- Claude Code Documentation: https://docs.anthropic.com/claude-code
- MCP Protocol: https://modelcontextprotocol.io
- Community Examples: GitHub topic:claude-code
- FamilySearch Internal: #claude-code Slack channel

**Experiment safely**:
- Use Git branches
- Test on sample projects
- Ask in community channels
- Start simple, add complexity gradually

---

**Remember**: Advanced features are optional. The core workshop skills (basic commands, Git workflow, simple custom commands) cover 80% of daily use cases.

Only explore advanced features when you have a specific need they solve!
