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

## MCP Servers vs Plugins: What's the Difference?

You'll see both terms used - here's what they mean:

### MCP Server = The Tool Itself

**Think: Individual app**

An MCP server connects Claude Code to ONE external service:
- GitHub MCP Server → connects to GitHub
- Notion MCP Server → connects to Notion
- Brave Search MCP Server → connects to web search

**Like:** Installing Spotify on your phone (one app, one purpose)

**When to use:** Most of the time! Simple, focused, you only get what you need.

### Plugin = Bundle Package

**Think: Productivity suite**

A plugin is a **package that can include**:
- ✅ One or more MCP servers
- ✅ Custom slash commands
- ✅ Skills (specialized instructions)
- ✅ Hooks (automation triggers)
- ✅ All configured to work together

**Like:** Installing Microsoft Office (Word + Excel + PowerPoint + templates + tools)

**When to use:** When you want a complete workflow package, especially for team sharing.

### Real Examples

**Individual MCP Servers:**
```
"Install the GitHub MCP server"
"Install the Notion MCP server"
"Install the Brave Search MCP server"
```
Result: Three separate tools, each doing one thing

**Plugin Approach:**
```
"Install the UX Research Plugin"
```
Result: One package that includes:
- Brave Search MCP (for competitive research)
- Google Sheets MCP (for data analysis)
- Custom `/research-synthesis` command
- Custom `/competitive-analysis` command
- Hooks for auto-organizing research files

### Which Should You Start With?

**Beginners: Start with individual MCP servers**
- ✅ Simpler to understand
- ✅ Only get what you need
- ✅ Learn one tool at a time
- ✅ Easy to remove if you don't like it

**After you're comfortable: Explore plugins**
- ✅ Pre-configured workflows
- ✅ Everything works together
- ✅ Great for team consistency
- ✅ Share entire setups with colleagues

**This guide focuses on individual MCP servers** since they're more beginner-friendly, but we'll show you where to find plugins too!

---

## The Best Part: Claude Code Installs Them FOR You!

**You don't need to know how to install MCP servers manually.** Claude Code can handle almost everything!

### What You Can Hand Off to Claude Code:

✅ **Installation commands** - Claude runs `npm install` for you
✅ **Configuration files** - Claude updates your `.claude.json` automatically
✅ **Setup verification** - Claude tests that it's working
✅ **Troubleshooting** - Claude fixes common issues
✅ **Documentation** - Claude explains how to use the server

### What You Need to Do:

🔑 **Get API keys** (when required) - 5 minutes on the service's website
🔄 **Restart Claude Code** - One command after installation
🎯 **Tell Claude Code what you want** - Natural language, no technical knowledge needed

### Example:

**Instead of following complex installation guides, just say:**

```
"Install the GitHub MCP server for me so I can access my repositories"
```

**Claude Code handles everything and tells you exactly what to do next!**

This means MCP servers are **not intimidating** - you're just having a conversation about what capabilities you want.

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

### Step 3: Installation (Claude Code Does Almost Everything!)

**Here's the secret: Claude Code can install MCP servers for you!**

#### What Claude Code Can Do Automatically:

✅ **Run the installation command** (npm install)
✅ **Update your configuration file** (.claude.json or .mcp.json)
✅ **Tell you exactly what to do next** (restart, get API key, etc.)
✅ **Test the installation** after restart
✅ **Troubleshoot** if something goes wrong

#### What You Need to Do:

🔑 **Get API keys** (for servers that need them - like web search)
🔄 **Restart Claude Code** (it can't restart itself)

That's it!

#### The Simple Workflow:

**Just tell Claude Code what you want:**

```
"Install the Brave Search MCP server for me"
```

**Claude Code will:**
1. Run `npm install -g @modelcontextprotocol/server-brave-search`
2. Ask you: "Do you have a Brave Search API key?"
3. If yes → Update your config file with the key
4. If no → Tell you how to get one (with links!)
5. Show you it's installed: "Server installed! Restart Claude Code to use it."

**You restart:**
```bash
# Press Ctrl+C to exit
claude  # Start again
```

**Then test it:**
```
"Search the web for 'best UX research tools 2026'"
```

**Done!** 🎉

#### Example Prompts (Copy & Paste These!)

Just paste these into Claude Code when you're ready:

**For Web Search:**
```
"Install the Brave Search MCP server for me. I don't have an API key yet,
so show me how to get one."
```

**For GitHub:**
```
"Install the GitHub MCP server for me. I want to access my GitHub repositories."
```

**For Notion:**
```
"Install the Notion MCP server for me. I need to connect to my Notion workspace."
```

**For Google Sheets:**
```
"Install the Google Sheets MCP server for me. I want to process spreadsheet data."
```

**For Filesystem:**
```
"Install the Filesystem MCP server for me. I want better file organization tools."
```

**Claude Code handles the technical parts. You just provide the intent!**

---

## Quick Start: Ready-to-Use Installation Prompts

**Copy and paste these exact prompts when you're ready to add MCP servers:**

### 🔍 For Research & Competitive Analysis

**Brave Search (Web Search):**
```
Install the Brave Search MCP server for me. I want to search the web for current
information. I don't have an API key yet, so show me how to get one.
```

**Google Sheets (Data Analysis):**
```
Install the Google Sheets MCP server for me. I need to process survey data and
analyze metrics from spreadsheets.
```

### 📝 For Documentation & Collaboration

**Notion:**
```
Install the Notion MCP server for me. I want to read and update my Notion workspace
directly from Claude Code.
```

**GitHub:**
```
Install the GitHub MCP server for me. I need to manage repositories, create issues,
and work with my GitHub projects.
```

**Slack:**
```
Install the Slack MCP server for me. I want to post updates to channels and read
message history.
```

### 🎨 For Design & Prototyping

**Figma:**
```
Install the Figma MCP server for me. I want to extract design tokens and analyze
component usage from Figma files.
```

**Puppeteer (Browser Automation):**
```
Install the Puppeteer MCP server for me. I need to take screenshots of competitor
websites and automate browser tasks.
```

### 📊 For Data & Databases

**PostgreSQL:**
```
Install the PostgreSQL MCP server for me. I need to analyze user data from our
database and generate reports.
```

**Supabase:**
```
Install the Supabase MCP server for me. I want to connect to our Supabase backend
and access the database.
```

### 📁 For File Management

**Filesystem (Enhanced File Operations):**
```
Install the Filesystem MCP server for me. I need better tools for organizing research
files and batch renaming documents.
```

**Memory (Persistent Context):**
```
Install the Memory MCP server for me. I want Claude to remember project context
across sessions.
```

### After Pasting the Prompt:

1. **Claude Code runs installation** (automatic)
2. **Claude Code asks for API key** (if needed) - with links to get one
3. **Claude Code updates config** (automatic)
4. **You restart Claude Code** (one command)
5. **Start using it!** (just ask natural questions)

**That's the entire process!**

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

## How to Find More MCP Servers & Plugins

### 🎯 Start Here: Official Directories

**1. Anthropic Official Plugins** (Most Reliable)
- https://github.com/anthropics/claude-plugins-official
- Curated by Anthropic team
- Includes both individual MCP servers AND complete plugins
- Guaranteed quality and maintenance
- **Best for beginners**: High trust, well-documented

**2. Official MCP Documentation**
- https://code.claude.com/docs/en/mcp
- Technical setup guides
- Configuration reference
- Protocol specifications

---

### 🌐 Community MCP Server Directories

**3. Claude Directory** (Best for Browsing)
- https://www.claudedirectory.org/
- Search by category: productivity, data, development, etc.
- User ratings and reviews
- Both MCP servers and plugins
- **Best for**: Discovering new tools by use case

**4. Awesome Claude Code** (Comprehensive List)
- https://github.com/jmanhype/awesome-claude-code
- Organized by type: MCP servers, editor integrations, resources
- Active community contributions
- Curated quality list
- **Best for**: Browsing all available options

**5. Daniel Rosehill's MCP List** (Well-Organized)
- https://github.com/danielrosehill/Claude-Code-MCP-List
- Focused specifically on MCP servers
- Regular updates
- Categorized by function
- **Best for**: Quick reference lookup

**6. 50+ Best MCP Servers for 2026**
- https://claudefa.st/blog/tools/mcp-extensions/best-addons
- Categorized and rated
- Use case examples
- Beginner-friendly descriptions
- **Best for**: Top picks with context

**7. Top 10 Essential MCP Servers**
- https://apidog.com/blog/top-10-mcp-servers-for-claude-code/
- Developer favorites (but useful for everyone)
- In-depth explanations
- **Best for**: Starting with proven essentials

---

### 📦 Plugin-Specific Resources

**8. Claude Plugin Hub** (Plugin Marketplace)
- https://www.claudepluginhub.com/
- Browse ready-to-use plugin bundles
- Filter by category and use case
- Installation guides included
- **Best for**: Finding complete workflow packages

**9. Composio Plugin Guides**
- https://composio.dev/blog/full-stack-claude-code-setup-(skills-mcp-plugins)
- How to set up full-stack plugins
- Skills + MCPs + Hooks bundled
- Real-world examples
- **Best for**: Understanding plugin architecture

**10. IntuitionLabs Plugin Comparison**
- https://intuitionlabs.ai/articles/claude-skills-vs-mcp
- Technical comparison of skills vs MCP
- When to use plugins vs individual servers
- **Best for**: Understanding the ecosystem

---

### 🎓 Learning & Setup Guides

**11. Scott Spence's Configuration Guide**
- https://scottspence.com/posts/configuring-mcp-tools-in-claude-code
- Step-by-step walkthrough
- Troubleshooting tips
- Best practices
- **Best for**: Hands-on configuration help

**12. Alex Opacic's Full Stack Guide**
- https://alexop.dev/posts/understanding-claude-code-full-stack/
- MCP + Skills + Subagents + Hooks explained
- Complete ecosystem overview
- **Best for**: Understanding how everything fits together

---

### 💡 How to Use These Resources

**Starting Out? Visit in this order:**

1. **Anthropic Official Plugins** - Install 1-2 trusted MCP servers
2. **Claude Directory** - Browse by your use case to find more
3. **Scott Spence's Guide** - If you run into configuration issues

**Ready to Level Up?**

4. **Claude Plugin Hub** - Explore complete plugin bundles
5. **Awesome Claude Code** - Discover advanced combinations
6. **Composio Guides** - Build custom plugin packages for your team

**Want to Share with Team?**

- Package your favorite MCP servers + slash commands into a plugin
- Share plugin GitHub URL with teammates
- Everyone gets the same setup instantly

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

## Real Example: Installing Web Search MCP (Hands-Off!)

Let's walk through installing the most popular beginner-friendly MCP server, showing **exactly what Claude Code does for you**:

### The Conversation

**You say:**
```
"Install the Brave Search MCP server for me. I don't have an API key yet."
```

**Claude Code responds:**
```
I'll install the Brave Search MCP server for you!

First, let me run the installation command...
[Runs: npm install -g @modelcontextprotocol/server-brave-search]

✅ Server installed successfully!

To use it, you'll need a free API key from Brave Search.
Here's how to get one:

1. Visit: https://brave.com/search/api/
2. Sign up for the free tier (2,000 searches/month)
3. Copy your API key

Once you have your key, tell me: "Add my Brave Search API key: [paste key]"
```

**You get your API key and say:**
```
"Add my Brave Search API key: abc123xyz456..."
```

**Claude Code responds:**
```
Perfect! I've updated your configuration file at ~/.claude.json
with the Brave Search API key.

To activate the MCP server, please restart Claude Code:
- Press Ctrl+C to exit
- Type 'claude' to start again

After restart, you can use it like this:
"Search the web for latest UX trends"
```

**You restart:**
```bash
# Press Ctrl+C
claude  # Start again
```

**Test it:**
```
"Search the web for 'best UX research tools 2026' and summarize the top 5"
```

**Claude Code now searches the web and responds with current results!** 🎉

### What You Actually Did:

1. Asked Claude Code to install it
2. Got an API key (5 minutes on Brave's website)
3. Gave the key to Claude Code
4. Restarted

**That's it!** Claude Code handled all the technical configuration automatically.

---

## Real Example: Installing a Plugin (Even Easier!)

Plugins are even simpler because everything is bundled together. Here's how it works:

### The Conversation

**You say:**
```
"Install the UX Research plugin from Claude Plugin Hub. I want the complete
research workflow setup."
```

**Claude Code responds:**
```
I'll install the UX Research plugin for you!

This plugin includes:
- Brave Search MCP server (web research)
- Google Sheets MCP server (data analysis)
- Custom /research-synthesis command
- Custom /competitive-analysis command
- Research file organization hooks

Installing plugin from GitHub repository...
[Clones plugin repository]
[Installs included MCP servers]
[Registers slash commands]
[Sets up hooks]

✅ Plugin installed successfully!

The plugin needs API keys for:
1. Brave Search API (web search) - Get from: https://brave.com/search/api/
2. Google Sheets API (spreadsheet access) - I'll guide you through setup

Would you like me to help you set up these API keys now?
```

**You say:**
```
"Yes, help me set up the API keys"
```

**Claude Code walks you through each one, then:**
```
All set! Restart Claude Code to activate the plugin.

After restart, try:
- "/research-synthesis" - Analyze multiple research files
- "/competitive-analysis" - Compare competitors systematically
- "Search the web for [topic]" - Web search is now available
```

### What You Actually Did:

1. Asked Claude Code to install the plugin
2. Got 2 API keys (10 minutes total)
3. Let Claude Code configure everything
4. Restarted

**Result:** Complete research workflow with multiple tools + custom commands, all configured and working together!

---

## Common Questions

### MCP Servers

#### Do I need to install MCP servers to use Claude Code?

**No!** Claude Code is powerful out of the box. MCP servers are optional extensions for specific needs.

#### How do I know which MCP servers to install?

**Start with your pain points:**
- Doing competitive research weekly? → Web Search MCP
- Team uses Notion? → Notion MCP
- Analyzing user data? → Database MCP (PostgreSQL, Supabase, etc.)

**Don't install servers "just in case"** - add them when you have a clear use case.

#### Are MCP servers free?

**Most are free and open source!** Some require free API keys (like web search), others work immediately.

A few commercial servers exist, but 90%+ are free community projects.

#### Will MCP servers slow down Claude Code?

**No.** They only activate when you need them. If you're not using GitHub in a prompt, the GitHub MCP server doesn't do anything.

#### Can I uninstall MCP servers?

**Yes!** Just remove them from your configuration file or ask Claude Code: "Uninstall the [server name] MCP server"

#### Do MCP servers access my private data?

**Only if you configure them to.** For example:
- GitHub MCP only accesses repos you give it permission to
- Database MCPs only connect if you provide credentials
- File system MCP only sees your project folder

**Always review permissions** before installing an MCP server.

---

### Plugins

#### When should I use a plugin instead of individual MCP servers?

**Use plugins when:**
- ✅ You want a complete workflow (multiple tools + commands working together)
- ✅ Sharing setup with your team (everyone gets the same configuration)
- ✅ You've identified a common pattern you repeat often
- ✅ Someone has already bundled exactly what you need

**Use individual MCP servers when:**
- ✅ You only need one specific tool
- ✅ You're still learning what you need
- ✅ You want to customize your own workflow
- ✅ You prefer adding tools one at a time

**Most beginners should start with individual MCP servers**, then explore plugins once you know what you need.

#### How do I install a plugin?

**Just ask Claude Code:**
```
"Install the [plugin name] plugin for me"
```

Claude Code handles:
- Cloning the plugin repository
- Installing all included MCP servers
- Setting up slash commands
- Configuring hooks
- Asking you for any needed API keys

Then you restart Claude Code and everything works!

#### Where do I find good plugins?

**Best sources:**
- **Claude Plugin Hub** (https://www.claudepluginhub.com/) - Searchable marketplace
- **Anthropic Official Plugins** (https://github.com/anthropics/claude-plugins-official) - Curated quality
- **Claude Directory** (https://www.claudedirectory.org/) - Community plugins with ratings
- **Awesome Claude Code** (https://github.com/jmanhype/awesome-claude-code) - Comprehensive list

**Browse by your role:** Look for "UX Research," "Product Management," "Design," etc.

#### Can I create my own plugin for my team?

**Yes!** Once you're comfortable with Claude Code:

1. **Identify your team's repeated workflows**
2. **Bundle the MCP servers you use** + custom slash commands
3. **Create a GitHub repository** with plugin manifest
4. **Share the repo URL** with your team

**They install with:**
```
"Install the plugin from https://github.com/yourteam/ux-research-plugin"
```

Everyone gets the same setup instantly!

**Resources:**
- Plugin creation guide: https://composio.dev/blog/full-stack-claude-code-setup-(skills-mcp-plugins)
- Official plugin docs: https://code.claude.com/docs/en/plugins

#### Are plugins safe?

**Check before installing:**
- ✅ Is it from a trusted source? (Official repos, known developers)
- ✅ Does it have good reviews/ratings?
- ✅ Can you see the source code? (GitHub repositories)
- ✅ What permissions does it need? (API keys, file access)

**Plugins from official Anthropic repo are safest** - they're reviewed and maintained.

**Community plugins:** Read the README, check the code, see who created it.

---

## When You're Ready to Go Deeper

### Creating Your Own Plugin (Team Workflow Package)

**Why create a custom plugin?**
- Share your exact Claude Code setup with teammates
- Bundle MCP servers + slash commands + hooks for specific workflows
- One-command installation for new team members
- Version control for team tooling

**What to include:**
- MCP servers your team uses (GitHub, Notion, web search, etc.)
- Custom slash commands for repeated tasks
- Hooks for automation
- Configuration templates
- Documentation

**How to create:**
1. Create GitHub repository
2. Add plugin manifest file
3. Include MCP server configurations
4. Add slash command files
5. Write README with installation instructions

**Example plugin structure:**
```
ux-research-plugin/
├── manifest.json          # Plugin metadata
├── README.md              # Installation & usage
├── mcp-servers/           # MCP configurations
│   ├── brave-search.json
│   └── google-sheets.json
├── commands/              # Slash commands
│   ├── research-synthesis.md
│   └── competitive-analysis.md
└── hooks/                 # Automation
    └── organize-research-files.sh
```

**Resources:**
- **Plugin Template:** https://github.com/anthropics/claude-plugins-official/tree/main/template
- **Creation Guide:** https://composio.dev/blog/full-stack-claude-code-setup-(skills-mcp-plugins)
- **Full Stack Overview:** https://alexop.dev/posts/understanding-claude-code-full-stack/
- **Official Docs:** https://code.claude.com/docs/en/plugins

### Building Your Own MCP Server (Advanced)

Once comfortable with Claude Code, you can create custom MCP servers for:
- Your company's internal APIs
- Proprietary databases
- Custom workflow automation
- Team-specific tools

**Resources:**
- **Official MCP Server SDK:** https://github.com/anthropics/mcp-sdk
- **MCP Server Examples:** https://github.com/anthropics/claude-plugins-official/tree/main/servers
- **Protocol Specification:** https://code.claude.com/docs/en/mcp

### Advanced Configuration

Learn about:
- Environment variables for API keys
- Project-specific vs global servers
- Rate limiting and error handling
- Security best practices
- Transport methods (HTTP, Stdio, SSE)

**Guides:**
- **Configuration Best Practices:** https://scottspence.com/posts/configuring-mcp-tools-in-claude-code
- **Skills vs MCP Technical Deep Dive:** https://intuitionlabs.ai/articles/claude-skills-vs-mcp

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
