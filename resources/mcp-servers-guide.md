# MCP Servers & Plugins Guide

**Extend Claude Code with superpowers - beginner-friendly guide for UX/PM professionals**

---

## What Are MCP Servers? (Simple Explanation)

**MCP** stands for **Model Context Protocol** - but you don't need to remember that.

Think of MCP servers as **apps for Claude Code**. Just like you install apps on your phone to add new features, you install MCP servers to give Claude Code new abilities.

### Real-World Analogy

**Your phone without apps:**
- Makes calls
- Sends texts
- Takes photos

**Your phone with apps:**
- Navigate with Google Maps
- Order food with DoorDash
- Track fitness with Apple Health
- Listen to music with Spotify

**Claude Code without MCP servers:**
- Writes code
- Reads local files
- Runs terminal commands

**Claude Code with MCP servers:**
- Access your GitHub repositories
- Read and write to databases
- Search the web
- Connect to Notion, Google Drive, Slack
- Browse websites automatically
- And hundreds more...

---

## Why Do I Need MCP Servers?

You don't *need* them to start! But they become powerful when you want to:

### Common UX/PM Use Cases

**1. Research & Data**
- **Web search MCP** - Claude Code can search the web and include current information
- **Database MCP** - Analyze user data directly from your database
- **Google Sheets MCP** - Process spreadsheet data without manual downloads

**2. Documentation & Collaboration**
- **Notion MCP** - Read and update Notion pages directly
- **Google Drive MCP** - Access docs, sheets, and presentations
- **Slack MCP** - Post updates or read channel history

**3. Design & Development**
- **GitHub MCP** - Create issues, PRs, and manage repositories
- **Figma MCP** - Extract design tokens and specs
- **Screenshot MCP** - Capture and analyze web pages

**4. Workflow Automation**
- **Calendar MCP** - Schedule meetings and check availability
- **Email MCP** - Draft and send emails
- **File system MCP** - Organize and process large file collections

---

## Getting Started (No Technical Knowledge Required)

### Step 1: Understand What You Get Out of the Box

Claude Code already comes with powerful built-in features. You don't need any MCP servers to:
- Build HTML/CSS/JavaScript prototypes
- Process multiple files in your project
- Create slash commands
- Use agents for parallel work

**Start here first!** Only add MCP servers when you have a specific need.

---

### Step 2: When You're Ready, Pick ONE Server

**Don't install everything at once!** Pick one server that solves a current problem.

#### Beginner-Friendly First Servers

**For Research & Competitive Analysis:**
- **Web Search** - Let Claude Code search Google and include current results
- **Brave Search** - Privacy-focused web search

**For Documentation:**
- **Notion** - If your team uses Notion for docs
- **Google Drive** - Access your Drive files

**For Data Analysis:**
- **Google Sheets** - Process spreadsheet data
- **CSV** - Work with CSV files more efficiently

**For Team Collaboration:**
- **GitHub** - If you're already using GitHub
- **Slack** - Send updates to channels

---

### Step 3: Installation (Simplified)

**Most MCP servers follow this pattern:**

1. **Install the server** (one command in terminal)
   ```bash
   npm install -g @modelcontextprotocol/server-name
   ```

2. **Tell Claude Code about it** (add to config file)
   - Claude Code will often help you with this!
   - Or follow the server's README instructions

3. **Restart Claude Code**
   ```bash
   # Exit Claude Code (Ctrl+C)
   # Start it again
   claude
   ```

4. **Start using it!**
   ```
   "Search the web for latest user research trends in 2026"
   ```

**Tip:** When you're ready to install your first MCP server, just tell Claude Code: *"Help me install the [server name] MCP server"* and it will guide you through the process!

---

## Popular MCP Servers for UX/PM Work

### Essential Servers (Most Useful First)

| Server | What It Does | UX/PM Use Case |
|--------|-------------|----------------|
| **Web Search** | Search the web | Competitive research, trend analysis, current statistics |
| **GitHub** | Access repositories | Manage project repos, create issues, review PRs |
| **Notion** | Read/write Notion | Update project docs, extract research notes |
| **Google Sheets** | Process spreadsheets | Analyze survey data, process metrics |
| **Puppeteer** | Automate browsers | Screenshot competitors, test flows, scrape content |
| **PostgreSQL** | Database access | Analyze user data, generate reports |
| **Filesystem** | Enhanced file ops | Organize research files, batch rename |
| **Memory** | Persistent memory | Claude remembers context across sessions |

### Specialized Servers (For Specific Needs)

| Server | What It Does | When You'd Use It |
|--------|-------------|-------------------|
| **Figma** | Extract design data | Pull design tokens, analyze component usage |
| **Slack** | Send messages | Post updates, read channel history |
| **Google Drive** | Access Drive files | Process docs/sheets without downloading |
| **Jira** | Issue tracking | Create tickets, update status |
| **Linear** | Project management | Sync tasks and issues |
| **Supabase** | Backend services | Connect to Supabase database and storage |

---

## How to Find More MCP Servers

### Official Directories

**1. Anthropic Official Plugins** (Most Reliable)
- https://github.com/anthropics/claude-plugins-official
- Curated by Anthropic team
- Guaranteed quality and maintenance

**2. Official MCP Documentation**
- https://code.claude.com/docs/en/mcp
- Setup guides and configuration help

### Community Directories (Searchable)

**3. Claude Directory** (Best for Browsing)
- https://www.claudedirectory.org/
- Search by category: productivity, data, development, etc.
- User ratings and reviews

**4. Awesome Claude Code** (Comprehensive List)
- https://github.com/jmanhype/awesome-claude-code
- Organized by type: MCP servers, editor integrations, resources
- Active community

**5. Daniel Rosehill's MCP List** (Well-Organized)
- https://github.com/danielrosehill/Claude-Code-MCP-List
- Focused specifically on MCP servers
- Regular updates

### Best-Of Lists (Curated)

**6. 50+ Best MCP Servers for 2026**
- https://claudefa.st/blog/tools/mcp-extensions/best-addons
- Categorized and rated
- Use case examples

**7. Top 10 Essential MCP Servers**
- https://apidog.com/blog/top-10-mcp-servers-for-claude-code/
- Developer favorites (but useful for everyone)

### Setup Guides

**8. Scott Spence's Configuration Guide**
- https://scottspence.com/posts/configuring-mcp-tools-in-claude-code
- Step-by-step walkthrough
- Troubleshooting tips

---

## Configuration Basics (Don't Worry, It's Simple!)

MCP servers can be configured at different levels:

### Where MCP Server Configurations Live

**1. User Level** (`~/.claude.json`)
- Applies to all your projects
- Good for: Web search, GitHub, Notion (things you always want)

**2. Project Level** (`.mcp.json` in project folder)
- Only for that specific project
- Good for: Project-specific database connections, APIs
- Can be shared with team via git

**Most beginners should use User Level configuration** - set it once, use it everywhere.

---

## Real Example: Installing Web Search MCP

Let's walk through installing the most popular beginner-friendly MCP server:

### Step 1: Install the Server

```bash
npm install -g @modelcontextprotocol/server-brave-search
```

### Step 2: Get an API Key (Free)

1. Go to https://brave.com/search/api/
2. Sign up for free tier (2,000 searches/month)
3. Copy your API key

### Step 3: Configure Claude Code

Tell Claude Code:
```
"Help me configure the Brave Search MCP server with my API key: [paste key]"
```

Claude Code will update your configuration file automatically.

### Step 4: Restart and Test

```bash
# Restart Claude Code
claude

# Test it
"Search the web for 'best UX research tools 2026' and summarize the top 5"
```

**That's it!** Now Claude Code can search the web.

---

## Common Questions

### Do I need to install MCP servers to use Claude Code?

**No!** Claude Code is powerful out of the box. MCP servers are optional extensions for specific needs.

### How do I know which MCP servers to install?

**Start with your pain points:**
- Doing competitive research weekly? → Web Search MCP
- Team uses Notion? → Notion MCP
- Analyzing user data? → Database MCP (PostgreSQL, Supabase, etc.)

**Don't install servers "just in case"** - add them when you have a clear use case.

### Are MCP servers free?

**Most are free and open source!** Some require free API keys (like web search), others work immediately.

A few commercial servers exist, but 90%+ are free community projects.

### Will MCP servers slow down Claude Code?

**No.** They only activate when you need them. If you're not using GitHub in a prompt, the GitHub MCP server doesn't do anything.

### Can I uninstall MCP servers?

**Yes!** Just remove them from your configuration file. They won't affect your projects.

### Do MCP servers access my private data?

**Only if you configure them to.** For example:
- GitHub MCP only accesses repos you give it permission to
- Database MCPs only connect if you provide credentials
- File system MCP only sees your project folder

**Always review permissions** before installing an MCP server.

---

## When You're Ready to Go Deeper

### Building Your Own MCP Server

Once comfortable with Claude Code, you can create custom MCP servers for:
- Your company's internal APIs
- Proprietary databases
- Custom workflow automation
- Team-specific tools

**Resources:**
- Official MCP Server SDK: https://github.com/anthropics/mcp-sdk
- MCP Server Examples: https://github.com/anthropics/claude-plugins-official/tree/main/servers

### Advanced Configuration

Learn about:
- Environment variables for API keys
- Project-specific vs global servers
- Rate limiting and error handling
- Security best practices

**Guide:** https://scottspence.com/posts/configuring-mcp-tools-in-claude-code

---

## Recommended Learning Path

**Week 1-2: Workshop**
- Focus on core Claude Code features
- Build projects with built-in capabilities
- Don't worry about MCP servers yet

**Week 3-4: First MCP Server**
- Pick ONE server for a real pain point
- Install and configure it
- Use it in daily work

**Month 2: Expand**
- Add 2-3 more servers as needs arise
- Start combining servers (e.g., web search + Google Sheets)
- Create workflows using multiple MCPs

**Month 3+: Advanced**
- Explore niche servers for specific tasks
- Consider building custom MCP for your team
- Share configurations with colleagues

---

## Top 5 MCP Servers to Start With (UX/PM Focus)

Based on feedback from UX/PM professionals:

1. **Web Search (Brave)** - Most immediately useful, current data access
2. **Notion** - If your team uses Notion, huge time saver
3. **GitHub** - Streamline repo management and documentation
4. **Google Sheets** - Process survey data and metrics
5. **Filesystem** - Better file organization and batch operations

**Start with #1** (Web Search) - it's free, easy to set up, and immediately valuable.

---

## Key Takeaways

✅ **MCP servers are optional** - Claude Code is powerful without them
✅ **Install one at a time** - Don't overwhelm yourself
✅ **Focus on pain points** - Add servers that solve real problems
✅ **Free and open source** - Most are community-built and free
✅ **Easy to remove** - Not permanent, experiment freely
✅ **Claude Code helps** - Ask Claude to help you install and configure

**Remember:** You built tools during the workshop without any MCP servers. They're add-ons for when you're ready to level up specific workflows.

---

## Need Help?

**During Workshop:**
- Ask instructor for MCP server recommendations
- We can help install your first server

**After Workshop:**
- FamilySearch #claude-code Slack channel
- MCP Server documentation (linked above)
- Claude Directory community forums

---

**Ready to explore?** Browse directories above and pick ONE server that excites you!

---

*Last Updated: January 29, 2026*
*Beginner-friendly guide for UX/PM professionals*
