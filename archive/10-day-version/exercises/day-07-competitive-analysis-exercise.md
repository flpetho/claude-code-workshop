# Day 7 Exercise: Competitive Analysis Workflow

## Exercise Overview

**Duration**: 45 minutes
**Goal**: Create a complete competitive analysis using Claude Code workflows
**Difficulty**: Intermediate to Advanced

## Scenario

You're analyzing three project management tools (Asana, Trello, Monday.com) for your company. Management wants to understand the competitive landscape before building new features.

## What You'll Learn

1. How to structure competitive analysis projects
2. Using templates for consistency
3. Creating comparison matrices
4. Synthesizing insights across competitors
5. Identifying opportunities

## Step-by-Step Instructions

### Part 1: Project Setup (5 min)

**Step 1: Create project structure**
```bash
cd ~/Documents
mkdir pm-tools-competitive-analysis
cd pm-tools-competitive-analysis
```

**Step 2: Create folder structure**
```bash
mkdir -p competitors/{asana,trello,monday}
mkdir analysis
mkdir synthesis
mkdir templates
```

**Step 3: Verify structure**
```bash
ls -R
```

You should see:
```
competitors/asana
competitors/trello
competitors/monday
analysis/
synthesis/
templates/
```

### Part 2: Create Analysis Template (10 min)

**Step 4: Start Claude Code**
```bash
claude
```

**Step 5: Create template**

```
Create a competitive analysis template in templates/competitor-template.md with these sections:

# [Competitor Name] - Project Management Tool Analysis

## Product Overview
- Company: [Name]
- Founded: [Year]
- Target market: [Description]
- Market position: [Leader/Challenger/Niche]
- Pricing: [Model]

## Core Features

### Task Management
| Feature | Available | Implementation Quality | Notes |
|---------|-----------|----------------------|-------|
| Create tasks | ✅/❌ | ⭐⭐⭐⭐⭐ | [Observations] |
| Subtasks | ✅/❌ | ⭐⭐⭐⭐⭐ | [Observations] |
| Task dependencies | ✅/❌ | ⭐⭐⭐⭐⭐ | [Observations] |
| Recurring tasks | ✅/❌ | ⭐⭐⭐⭐⭐ | [Observations] |

### Collaboration
| Feature | Available | Implementation Quality | Notes |
|---------|-----------|----------------------|-------|
| Comments | ✅/❌ | ⭐⭐⭐⭐⭐ | [Observations] |
| @mentions | ✅/❌ | ⭐⭐⭐⭐⭐ | [Observations] |
| File sharing | ✅/❌ | ⭐⭐⭐⭐⭐ | [Observations] |
| Real-time updates | ✅/❌ | ⭐⭐⭐⭐⭐ | [Observations] |

### Views
- List view: ✅/❌
- Board view: ✅/❌
- Calendar view: ✅/❌
- Timeline view: ✅/❌
- Gantt chart: ✅/❌

## User Experience

### Onboarding
- First-time user experience: [Description]
- Time to first task created: [Estimate]
- Quality: ⭐⭐⭐⭐⭐
- Notes: [Observations]

### Interface
- Visual style: [Minimal/Bold/Colorful/etc]
- Information density: [High/Medium/Low]
- Learning curve: [Steep/Moderate/Gentle]
- Mobile experience: ⭐⭐⭐⭐⭐

## Pricing

| Tier | Price | User Limit | Key Features |
|------|-------|------------|--------------|
| Free | $0 | [Limit] | [Features] |
| Basic | $X/user/mo | [Limit] | [Features] |
| Premium | $X/user/mo | [Limit] | [Features] |
| Enterprise | Custom | Unlimited | [Features] |

## Integrations
- Slack: ✅/❌
- Google Drive: ✅/❌
- Microsoft Teams: ✅/❌
- Zoom: ✅/❌
- Total integrations: [Number]

## Strengths
1. **[Strength 1]**: [Why this matters]
2. **[Strength 2]**: [Why this matters]
3. **[Strength 3]**: [Why this matters]

## Weaknesses
1. **[Weakness 1]**: [Why this is a limitation]
2. **[Weakness 2]**: [Why this is a limitation]
3. **[Weakness 3]**: [Why this is a limitation]

## User Feedback Themes
(From reviews, forums, social media)

### Common Praise
- "[Theme or quote]"
- "[Theme or quote]"

### Common Complaints
- "[Theme or quote]"
- "[Theme or quote]"

## Unique Differentiators
[What makes this tool unique in the market?]

## Best For
[What types of teams/projects is this tool best suited for?]

## Not Ideal For
[What types of teams/projects would struggle with this tool?]

## Last Updated
[Date]

Use markdown formatting throughout with clear tables and emoji ratings.
```

### Part 3: Research and Document First Competitor (10 min)

**Step 6: Research Asana**

For this exercise, we'll use publicly available information. In real life, you'd:
- Use the product yourself (sign up for trial)
- Read reviews on G2, Capterra
- Check their website for features and pricing
- Look at user testimonials

For now, use this simplified research data:

```
Create competitors/asana/analysis.md using templates/competitor-template.md and fill it in based on this research:

ASANA RESEARCH NOTES:
- Founded 2008, one of the earliest PM tools
- Market leader position
- Very polished, professional interface
- Strength: Workflow automation (rules, forms, approvals)
- Strength: Multiple project views (list, board, timeline, calendar, Gantt)
- Strength: Enterprise features (portfolios, workload management)
- Weakness: Can be overwhelming for small teams
- Weakness: Expensive at scale ($13.49/user/mo for premium)
- Weakness: Mobile app is good but not as full-featured as desktop
- Free tier: Up to 15 team members, limited features
- Premium: $13.49/user/mo
- Business: $30.49/user/mo
- 200+ integrations
- User feedback: "Powerful but has learning curve" "Best for larger teams"
- Best for: Medium to large teams with complex workflows
- Not ideal for: Small teams wanting simplicity

Be thorough and specific when filling in the template.
```

**Step 7: Review Asana analysis**
```
exit
```
```bash
cat competitors/asana/analysis.md
```

Should see a complete, well-structured analysis!

### Part 4: Analyze Remaining Competitors (10 min)

**Step 8: Restart Claude and analyze Trello**
```bash
claude
```

```
Create competitors/trello/analysis.md using templates/competitor-template.md based on these notes:

TRELLO RESEARCH NOTES:
- Founded 2011, acquired by Atlassian 2017
- Known for simplicity - popularized Kanban boards
- Very visual, card-based interface
- Strength: Incredibly simple and intuitive
- Strength: Great for visual thinkers
- Strength: Generous free tier
- Strength: Power-Ups system for extensibility
- Weakness: Limited views (mainly just boards)
- Weakness: Lacks advanced PM features (Gantt, dependencies, etc)
- Weakness: Gets messy with complex projects
- Free: Unlimited cards, 10 boards per workspace
- Standard: $5/user/mo
- Premium: $10/user/mo
- Enterprise: $17.50/user/mo
- 200+ Power-Ups (integrations)
- User feedback: "Perfect for simple projects" "Wish it had more views"
- Best for: Small teams, simple projects, visual organizers
- Not ideal for: Complex projects, large enterprises

Fill in all sections of the template thoroughly.
```

**Step 9: Analyze Monday.com**

```
Create competitors/monday/analysis.md using templates/competitor-template.md based on these notes:

MONDAY.COM RESEARCH NOTES:
- Founded 2012 (originally daPulse)
- Fast-growing, very marketing-heavy
- Colorful, highly customizable interface
- Strength: Extreme customization - can build almost anything
- Strength: Beautiful, modern interface
- Strength: Great for non-technical users
- Strength: Excellent templates library
- Weakness: Pricing is per seat, gets expensive
- Weakness: Can be overwhelming with options
- Weakness: Sometimes TOO flexible - easy to overcomplicate
- Individual: $0 (up to 2 seats)
- Basic: $8/seat/mo (min 3 seats)
- Standard: $10/seat/mo
- Pro: $16/seat/mo
- Enterprise: Custom pricing
- 40+ integrations (fewer than competitors)
- User feedback: "Love the flexibility" "Great UI" "Wish it was cheaper"
- Best for: Teams wanting customization, non-technical users
- Not ideal for: Budget-conscious teams, simple needs

Fill in all template sections with detail.
```

### Part 5: Create Comparison Matrix (8 min)

**Step 10: Generate feature comparison**

```
Read all three analysis files in competitors/ and create analysis/feature-comparison.md with a comprehensive comparison matrix.

Include these categories:
- Task Management Features
- Collaboration Features
- Views Available
- Automation Capabilities
- Integrations
- Pricing (create table comparing each tier)
- Best For (what type of team/project)

Use:
- ✅ for available and well-implemented
- ⏳ for available but limited
- ❌ for not available

Add an "Insight" column showing what this means for users.

Format with clear tables and headers.
```

**Expected output:**

```markdown
# Project Management Tools - Feature Comparison

## Executive Summary
[High-level comparison of the three tools]

## Task Management Features

| Feature | Asana | Trello | Monday.com | Insight |
|---------|-------|--------|------------|---------|
| Basic tasks | ✅ Advanced | ✅ Simple | ✅ Flexible | All handle basics well |
| Subtasks | ✅ Unlimited depth | ⏳ Via checklists | ✅ Subitems | Asana most robust |
| Dependencies | ✅ Native | ❌ Power-Up only | ✅ Native | Trello weakest |
| Recurring tasks | ✅ Advanced rules | ⏳ Power-Up | ✅ Automation | Asana most flexible |

[... continues for all categories]

## Pricing Comparison

| Tier | Asana | Trello | Monday.com |
|------|-------|--------|------------|
| Free | 15 users, limited | Unlimited users, 10 boards | 2 users | Trello most generous |
| Entry | $13.49/user | $5/user | $8/seat (min 3) | Trello cheapest entry |
| Mid | $30.49/user | $10/user | $10/seat | Comparable at this level |
| Enterprise | Custom | $17.50/user | Custom | Varies significantly |

## Best For Matrix

| Tool | Team Size | Project Complexity | Technical Skill | Budget |
|------|-----------|-------------------|-----------------|--------|
| Asana | Medium-Large (10-100+) | High | Medium | Higher |
| Trello | Small-Medium (2-20) | Low-Medium | Low | Lower |
| Monday.com | Small-Large (3-50+) | Medium-High | Low | Medium-Higher |

[... continues]
```

### Part 6: Synthesize Opportunities (7 min)

**Step 11: Create opportunities analysis**

```
Based on all competitive analysis files, create synthesis/opportunities.md documenting:

# Market Opportunities Analysis

## Where We Can Differentiate

Analyze gaps and opportunities in the current market. For each opportunity:
- What's the gap?
- Why does it matter?
- What do competitors offer today?
- How could we do it better?
- Estimated impact (High/Medium/Low)
- Estimated effort (High/Medium/Low)

Prioritize opportunities by impact/effort ratio.

## User Needs Not Well Served

Based on user feedback themes across all three competitors, what are users consistently struggling with?

Create a table showing:
| User Need | Asana | Trello | Monday | Opportunity Score |
|-----------|-------|--------|--------|-------------------|
| [Need] | [How well met] | [How well met] | [How well met] | [High/Med/Low] |

## Pricing Strategy Insights

What does competitive pricing tell us about the market and where we could position ourselves?

## Recommended Focus Areas

Top 3-5 recommendations for where to focus our product development based on this analysis.

Use data from the competitive analysis to support recommendations.
```

**Step 12: Exit Claude**
```
exit
```

### Part 7: Review Complete Analysis (5 min)

**Step 13: See what you created**
```bash
# View structure
ls -R

# View comparison matrix
cat analysis/feature-comparison.md

# View opportunities
cat synthesis/opportunities.md
```

**Step 14: Reflect on the process**

Answer these questions:

1. **How long did this take vs. doing it manually?**
   - Manual approach: 4-6 hours for three competitors
   - Claude Code approach: 45 minutes

2. **What value did Claude Code add?**
   - Consistent structure across all analyses
   - Comprehensive comparison matrices
   - Synthesized insights across competitors

3. **What did you still need to provide?**
   - Research data (product knowledge)
   - Strategic insights
   - Prioritization decisions

4. **Could you do this for real competitors?**
   - Yes! Just replace fake research data with real research
   - Same workflow, same efficiency

## Success Criteria

✅ **You've successfully completed the exercise if:**

1. Created complete project structure
2. Built reusable template
3. Analyzed three competitors consistently
4. Generated comprehensive comparison matrix
5. Synthesized opportunities from analysis
6. Understand how to apply this to real competitors
7. See time savings vs. manual approach

## Extension Challenges

### Challenge 1: Add Visual Analysis

```
For each competitor, create a SWOT analysis (Strengths, Weaknesses, Opportunities, Threats) in markdown table format in their analysis file.
```

### Challenge 2: Create Stakeholder Summary

```
Create a one-page executive summary of the competitive analysis suitable for presenting to executives. Include key findings, recommended actions, and visual comparison tables.
```

### Challenge 3: Add More Competitors

Add Notion and ClickUp to the analysis:
1. Research both tools
2. Use the template to analyze them
3. Update comparison matrix to include them
4. Revise opportunities analysis

### Challenge 4: Deep Dive on One Feature

Pick one feature category (e.g., "Automation") and create a deep-dive analysis:
- How does each competitor implement it?
- What are the pros/cons of each approach?
- What could we learn from each?
- What's the opportunity for innovation?

## Real-World Application

This workflow works for:
- Any competitive analysis (not just PM tools)
- E-commerce platforms
- Mobile apps
- B2B SaaS
- Consumer products
- Design tools

**The key:** Consistent research → template-based documentation → comprehensive comparison → strategic synthesis

## Common Variations

### For Mobile App Competitive Analysis
Add sections for:
- App store ratings and reviews
- Download numbers
- Screen flow analysis
- UI/UX patterns
- Onboarding analysis

### For E-Commerce Competitive Analysis
Add sections for:
- Checkout flow
- Product discovery
- Search functionality
- Payment options
- Shipping/returns
- Customer service

### For B2B SaaS Competitive Analysis
Add sections for:
- Sales process
- Implementation/onboarding
- Customer success
- Security/compliance
- API capabilities
- Enterprise features

## Troubleshooting

### Issue: Research data is overwhelming

**Solution:** Start with just the basics:
- Core features (what does it do?)
- Pricing
- Target market
- 2-3 strengths
- 2-3 weaknesses

You can always add more detail later.

### Issue: Comparison matrices getting too complex

**Solution:** Break into multiple tables:
- Don't try to compare everything in one table
- Group related features
- Create separate tables for different aspects

### Issue: Hard to identify opportunities

**Solution:** Look for patterns:
- What do users complain about across ALL competitors?
- What features are missing from ALL competitors?
- What's clunky in all implementations?
- Where is pricing particularly high/low?

## Tips for Real Competitive Analysis

**1. Use the products yourself**
- Sign up for trials
- Complete real tasks
- Experience the UX firsthand
- Take screenshots

**2. Read user reviews**
- App stores (mobile apps)
- G2, Capterra, TrustRadius (B2B)
- Reddit, Twitter (unfiltered feedback)
- Look for patterns, not one-offs

**3. Document continuously**
- Don't wait until you've researched everything
- Document as you go
- Easy to fill in template incrementally

**4. Update regularly**
- Competitors change
- Set reminder to review every quarter
- Track changes over time

**5. Share widely**
- These analyses are valuable to whole organization
- Product, design, marketing all benefit
- Keep in shared location

## Next Steps

**Tomorrow (Day 8):**
- Create custom agents for YOUR specific workflows
- Introduction to hooks (automation)
- Customize Claude Code's behavior
- Build your personal productivity system

**Optional homework:**
- Apply this workflow to real competitors in your space
- Create a template for a different type of analysis (market research, user research, design system audit)
- Share your competitive analysis with your team

---

## Checklist: Did You Complete Everything?

- [ ] Created project structure
- [ ] Built competitor analysis template
- [ ] Analyzed three competitors using template
- [ ] Generated feature comparison matrix
- [ ] Created opportunities analysis
- [ ] Reviewed complete output
- [ ] Understand time savings
- [ ] Can apply to real competitors
- [ ] Reflected on process and value
- [ ] Ready to use this workflow at work

**Excellent work!** You now have a repeatable workflow for professional competitive analysis!

---

*Questions? Stuck on something? Post in the workshop channel!*
