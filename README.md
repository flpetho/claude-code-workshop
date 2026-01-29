# Claude Code 101 - UX/PM Workshop

**5-Day Workshop for Building with AI**

🌐 **Live Site**: https://flpetho.github.io/claude-code-workshop/
📦 **Repository**: https://github.com/flpetho/claude-code-workshop
👥 **Audience**: UX/PM professionals at FamilySearch
📅 **Last Updated**: January 28, 2026

---

## 📋 Quick Start

### Running Locally

```bash
# Navigate to project
cd ~/Sites/projects/claude-code-101

# Start local server
python3 -m http.server 8080

# Or using Node.js
npx http-server -p 8080 -c-1

# View in browser
open http://localhost:8080
```

### Making Updates

```bash
# 1. Edit files locally
# 2. Test at localhost:8080
# 3. When ready, commit and push:

git add .
git commit -m "Description of changes"
git push

# 4. GitHub Pages auto-deploys in ~2 minutes
# 5. Check live site: https://flpetho.github.io/claude-code-workshop/
```

---

## 🗂️ Project Structure

```
claude-code-101/
├── index.html                    # Main workshop website
├── viewer.html                   # Markdown content viewer
├── social-share.png              # Social media preview image
├── .nojekyll                     # GitHub Pages config
│
├── days/                         # Workshop modules (5 days)
│   ├── day-01-foundation.md
│   ├── day-02-research.md
│   ├── day-03-design.md
│   ├── day-04-product-tools.md
│   └── day-05-deploy.md
│
├── exercises/                    # Hands-on practice
│   ├── day-01-portfolio-setup.md
│   ├── day-02-research-dashboard.md
│   ├── day-03-prototype.md
│   ├── day-04-competitive-intel.md
│   └── day-05-toolkit.md
│
├── resources/                    # Reference materials
│   ├── installation-reference.md          # AWS Bedrock setup
│   ├── simple-github-setup.md             # GitHub for beginners
│   ├── git-cheatsheet.md                  # Quick git reference
│   ├── main-project-guide.md              # 5-day project guide
│   ├── professional-workflow.md           # Two-phase approach
│   ├── project-selection-template.md      # Choosing projects
│   ├── prd-guide.md                       # Complete PRD system
│   ├── quick-prd-template.md              # One-page PRD
│   ├── tech-stack-reference.md            # Complete tech guide
│   ├── quick-tech-stack.md                # Top 10 technologies
│   ├── claude-code-prompts.md             # Copy-paste prompts
│   └── visual-guides-reference.md         # Visual asset specs
│
├── resources/img/               # Images
│   ├── cc-logo.svg
│   ├── homebrew.png
│   └── workforceapp.png
│
├── scripts/
│   └── workshop-init-project.sh          # Project setup script
│
├── cheat-sheets/               # Quick references
│   ├── cli-commands.md
│   └── claude-code-commands.md
│
├── presenter-notes/            # Instructor guides
│   └── day-01-script.md
│
├── appendix/                   # Advanced topics
│   ├── advanced-features.md
│   ├── installation-guides.md
│   └── orchestration-system.md
│
├── archive/                    # Old content
│   └── 10-day-version/        # Original 10-day curriculum
│
└── revisions/                  # Working drafts
    └── 20260128/              # Latest revisions
```

---

## 🎯 What This Workshop Covers

### 5-Day Structure

**Day 1: Foundation + Project Setup**
- IDE setup (VSCode, Cursor, Antigravity)
- GitHub workflow
- Choose and start your project

**Day 2: Research Intelligence**
- Data processing
- Visualizations
- Working session

**Day 3: Design Tools & Prototypes**
- Custom slash commands
- Interactive elements
- Polish features

**Day 4: Polish & Professional Workflow**
- Two-phase planning approach
- Professional techniques
- Project refinement

**Day 5: Deploy & Ship**
- Deploy to GitHub Pages
- Present to team
- Celebrate success

### Key Philosophy

✅ **Build ONE project** over 5 days (not separate exercises)
✅ **Git through Claude Code** (natural language, not manual commands)
✅ **IDE-focused** (visual feedback, integrated terminal)
✅ **Fear reduction** ("you won't break your computer")
✅ **Real projects** (FamilySearch tools or UX/PM productivity)

---

## 🚀 Deployment

### GitHub Pages Setup (Already Done)

This site is configured for GitHub Pages:

1. **Repository**: https://github.com/flpetho/claude-code-workshop
2. **Settings** → **Pages** → Deploy from `main` branch
3. **Live URL**: https://flpetho.github.io/claude-code-workshop/
4. **Auto-deploys** on every push to `main` (~1-2 minutes)

### Making Updates Go Live

```bash
# Make your changes locally
# Test at localhost:8080

# When ready:
git add .
git commit -m "Your change description"
git push

# GitHub Pages automatically rebuilds
# Live in 1-2 minutes!
```

### Monitoring Deployments

Check deployment status:
1. Go to https://github.com/flpetho/claude-code-workshop
2. Click **Actions** tab
3. See "pages build and deployment" runs
4. Green checkmark = live ✅

---

## 📝 Key Files Explained

### Website Files

**`index.html`**
- Main landing page
- Navigation to all modules
- "Getting Started", "5-Day Workshop", "After Workshop" sections
- Uses Tailwind CSS for styling
- Responsive design

**`viewer.html`**
- Renders markdown files
- Syntax highlighting for code
- Table of contents generation
- Used by all content links

**`social-share.png`**
- 875×554px image
- Shows when link is shared (iMessage, Slack, LinkedIn, etc.)
- Features CLAUDE CODE ASCII art

### Content Files

**`days/*.md`**
- Daily module content
- 1-hour format (teaching + hands-on)
- Supportive tone for beginners
- Includes troubleshooting

**`resources/*.md`**
- Reference guides and templates
- Post-workshop learning materials
- Planning tools (PRD, tech stack)
- Copy-paste prompts

### Configuration Files

**`.nojekyll`**
- Tells GitHub Pages not to use Jekyll
- Ensures proper file serving

**`.gitignore`**
- Excludes .DS_Store and backup files
- Keeps repo clean

---

## 🛠️ Common Tasks

### Adding a New Resource

1. Create markdown file in `resources/`
2. Add link in `index.html` "After Workshop" section
3. Test locally
4. Commit and push

```html
<!-- Add to index.html -->
<div class="card-hover bg-card rounded-lg border border-border p-6">
    <h3 class="text-lg font-semibold mb-2">New Resource Title</h3>
    <p class="text-sm text-muted-foreground mb-4">Description here</p>
    <a href="viewer.html?file=resources/new-resource.md" class="btn btn-primary text-xs">Read More</a>
</div>
```

### Updating a Day Module

1. Edit the file in `days/`
2. Test at `localhost:8080/viewer.html?file=days/day-01-foundation.md`
3. Commit with descriptive message
4. Push to deploy

### Adding an Image

1. Add image to `resources/img/`
2. Reference in markdown: `![Alt text](resources/img/filename.png)`
3. Path is relative to website root
4. Commit and push

---

## 📊 What Was Accomplished (Jan 28, 2026)

### Major Updates

✅ **Restructured from 10 days to 5 days**
- More realistic for busy professionals
- Project-focused (build ONE tool)
- Each day = complete milestone

✅ **Added 6 new comprehensive resources**
- Quick PRD Template (one-page planning)
- Complete PRD Guide (interview system)
- Quick Tech Stack (top 10 essentials)
- Complete Tech Stack Reference (100+ technologies)
- Claude Code Prompts (copy-paste library)
- Professional Workflow (two-phase approach)

✅ **Updated Git/GitHub approach**
- Simplified to: create repo → tell Claude Code to commit
- Manual git commands → natural language
- Removed git config step (Claude Code handles automatically)

✅ **Installation guide for FamilySearch**
- AWS Bedrock-specific setup
- Workforce App Store images
- Homebrew setup visuals
- Environment variables documented

✅ **Website enhancements**
- "After Workshop: Level Up" section with 8 resources
- Main Project Guide in 5-Day Workshop section
- Organized by category (Planning, Tech Stack, Guidance)
- Social share meta tags for link previews

✅ **GitHub Pages deployment**
- Live at: https://flpetho.github.io/claude-code-workshop/
- Auto-deploys on push
- Social share image configured
- No custom domain issues

### Files Created Today

**New Resources:**
- `resources/quick-prd-template.md`
- `resources/quick-tech-stack.md`
- `resources/claude-code-prompts.md`

**Updated:**
- `resources/installation-reference.md` (AWS Bedrock setup)
- `resources/simple-github-setup.md` (removed manual git config)
- `resources/prd-guide.md` (Claude Code integration)
- `resources/tech-stack-reference.md` (updated date, Claude Code context)
- `days/day-01-foundation.md` (IDE explanation)
- `days/day-04-product-tools.md` (resource links)
- `days/day-05-deploy.md` (resource links)
- `index.html` (After Workshop section, Main Project Guide card)
- `social-share.png` (link preview image)

### Commits Today

Total commits: 10
- Initial commit with all workshop content
- Added installation images
- Integrated PRD and tech stack resources
- Updated GitHub setup guide
- Styled Main Project Guide card
- Configured social share meta tags
- Fixed GitHub Pages deployment

---

## 🎨 Design System

### Colors

- **Primary Orange**: `#D17D59`
- **Dark Background**: `#262624`
- **Card Background**: `#2e2e2c`
- **Border**: `hsl(240 3.7% 15.9%)`
- **Foreground**: `hsl(0 0% 98%)`

### Typography

- **Font Family**: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Helvetica', 'Arial', sans-serif
- **Heading Sizes**: 2xl (32px), xl (24px), lg (18px)
- **Body**: 14px (sm)

### Buttons

- **Primary**: Orange background, dark text
- **Secondary**: Gray background, white text
- **Hover**: Slight color shift, smooth transition

---

## 🔧 Technical Details

### Technologies Used

- **HTML/CSS/JavaScript**: Static website
- **Tailwind CSS**: Utility-first styling (via CDN)
- **Marked.js**: Markdown rendering
- **Highlight.js**: Code syntax highlighting
- **GitHub Pages**: Free hosting
- **Custom domain**: Previously rebeccalaszlo.com (removed)

### Browser Compatibility

- Chrome/Edge (latest)
- Safari (latest)
- Firefox (latest)
- Mobile browsers (responsive design)

### Performance

- Lightweight (no build step)
- Fast loading (CDN resources)
- Markdown files load on demand
- No JavaScript framework overhead

---

## 🐛 Troubleshooting

### Local Server Won't Start

```bash
# Try different port
python3 -m http.server 8081

# Or use Node.js
npx http-server -p 8081
```

### Changes Not Showing on Live Site

1. Check GitHub Actions for deployment status
2. Wait 2-3 minutes for build to complete
3. Clear browser cache: `Cmd + Shift + R`
4. Try incognito window

### Social Share Image Not Updating

1. Check file exists: `social-share.png` in root
2. File size should be ~25KB
3. Clear social media cache:
   - Facebook: https://developers.facebook.com/tools/debug/
   - LinkedIn: https://www.linkedin.com/post-inspector/

### Git Push Fails

```bash
# Check remote
git remote -v

# Should show:
# origin  https://github.com/flpetho/claude-code-workshop.git

# If different, update:
git remote set-url origin https://github.com/flpetho/claude-code-workshop.git
```

---

## 📚 Additional Documentation

### Workshop-Related

- **CLAUDE.md**: Project instructions for Claude Code
- **IMPLEMENTATION-SUMMARY.md**: Implementation plan
- **V2-UPDATES-APPLIED.md**: v2.0 integration notes
- **V2-INTEGRATION-COMPLETE.md**: Revision summary

### For Participants

All content is accessible through the website:
- Getting Started guides
- 5-day modules
- Exercises
- Resource library
- After Workshop materials

### For Instructors

- `presenter-notes/day-01-script.md`
- Archive folder has old 10-day content for reference
- Appendix has advanced topics

---

## 🎯 Success Metrics

### Workshop Goals

**Participants should:**
- ✅ Complete all 5 sessions
- ✅ Build one working tool
- ✅ Deploy to GitHub Pages
- ✅ Present on Day 5
- ✅ Feel confident to continue

**Target rates:**
- 90%+ attendance
- 80%+ homework completion
- 100% Day 5 presentations
- 4.5+/5 satisfaction score

---

## 📞 Support & Contact

**Repository**: https://github.com/flpetho/claude-code-workshop
**Live Site**: https://flpetho.github.io/claude-code-workshop/
**FamilySearch Slack**: #claude-code
**Workshop Delivery**: Late January 2026

---

## 🔄 Version History

**v2.0** (January 28, 2026) - **CURRENT**
- Complete 5-day curriculum
- Project-focused learning
- IDE-first approach
- Git through Claude Code
- 6 new planning/tech resources
- Live on GitHub Pages

**v1.0** (December 2024)
- Initial 10-day curriculum
- Exercise-focused
- Archived for reference

---

## ⚡ Quick Commands Reference

```bash
# Development
python3 -m http.server 8080        # Start local server
open http://localhost:8080         # Open in browser

# Git workflow
git status                         # Check changes
git add .                          # Stage all changes
git commit -m "message"            # Commit with message
git push                           # Deploy to GitHub Pages

# Check deployment
# Visit: https://github.com/flpetho/claude-code-workshop/actions

# View live site
open https://flpetho.github.io/claude-code-workshop/
```

---

## 💡 Working with Claude Code on This Project

When you return to this project, you can ask Claude Code:

```
"Update day-02-research.md to add a new section about X.
Follow the supportive tone and include code examples."

"Add a new resource card to index.html for Y.
Put it in the 'After Workshop' section, use the existing card pattern."

"Create a new quick reference guide for Z in resources/.
Keep it one-page, printable, and beginner-friendly."

"Review the website at localhost:8080 and suggest improvements."
```

Claude Code has full context from this README and CLAUDE.md!

---

## ✅ Next Steps

**Immediate (if needed):**
- [ ] Test all links on live site
- [ ] Verify social sharing in multiple apps
- [ ] Review content for typos

**Before workshop delivery:**
- [ ] Pilot test with 2-3 participants
- [ ] Gather feedback and adjust
- [ ] Create participant welcome email
- [ ] Set up Slack channel

**Future enhancements:**
- [ ] Add video walkthroughs
- [ ] Create example projects
- [ ] Build alumni showcase
- [ ] Expand resource library

---

**The workshop is ready to ship! 🚀**

Everything is documented, deployed, and ready for participants.

**Happy teaching!**

---

*Last Updated: January 28, 2026*
*Status: Production Ready*
*Built with Claude Code assistance*
