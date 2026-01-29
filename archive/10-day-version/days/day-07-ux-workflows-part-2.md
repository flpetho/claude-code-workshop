# Day 7: Real UX/PM Workflows - Part 2

## Learning Objectives

By the end of this session, you will:
1. Create comprehensive competitive analyses with Claude Code
2. Generate design system documentation at scale
3. Write product requirements documents (PRDs) effectively
4. Create user personas systematically
5. Combine workflows for complex projects

## Recap: What We've Covered

**Week 1:** Foundation skills (CLI, Claude Code basics, project organization)
**Day 5:** First UX workflows (design docs, flows, research synthesis)
**Day 6:** Agents for specialized tasks

**Today:** More advanced UX/PM workflows you'll use daily!

## Workflow 1: Competitive Analysis

### The Challenge

Analyzing competitors is time-consuming:
- Manually documenting each competitor's features
- Creating comparison matrices
- Identifying gaps and opportunities
- Keeping analysis consistent across competitors

**Traditional approach:** 4-6 hours per competitor
**With Claude Code:** 30-45 minutes per competitor

### The Claude Code Workflow

#### Step 1: Set Up Structure

```bash
competitive-analysis/
├── CLAUDE.md                     # Project guide
├── competitors/
│   ├── uber-eats/
│   │   ├── screenshots/
│   │   └── analysis.md
│   ├── doordash/
│   │   ├── screenshots/
│   │   └── analysis.md
│   └── grubhub/
│       ├── screenshots/
│       └── analysis.md
├── analysis/
│   ├── feature-comparison.md
│   ├── pricing-comparison.md
│   └── ux-patterns.md
├── synthesis/
│   ├── opportunities.md
│   └── threats.md
└── templates/
    └── competitor-template.md
```

#### Step 2: Create Template

```bash
claude
```

```
Create a comprehensive competitor analysis template in templates/competitor-template.md with:

# [Competitor Name] - Competitive Analysis

## Company Overview
- Founded: [Year]
- Headquarters: [Location]
- Market position: [Leader/Challenger/Niche]
- Key differentiator: [What makes them unique]

## Product Overview
- Platform: [iOS/Android/Web/Desktop]
- Latest version: [Version]
- Last updated: [Date]
- App store rating: iOS [X.X] / Android [X.X]
- Total downloads: [Approximate number]

## Feature Analysis

### Core Features
| Feature Category | Features | Implementation Quality | Notes |
|-----------------|----------|----------------------|-------|
| [Category 1] | [List features] | ⭐⭐⭐⭐⭐ | [Observations] |

### Unique Features
- Feature 1: [Description]
- Feature 2: [Description]

## User Experience

### Onboarding
- Steps: [Number]
- Time to value: [Estimate]
- Quality: ⭐⭐⭐⭐☆
- Notes: [Observations]

### Navigation
- Pattern: [Tab bar/Hamburger/etc]
- Depth: [Shallow/Deep]
- Discoverability: [High/Medium/Low]
- Notes: [Observations]

### Visual Design
- Style: [Minimal/Bold/Playful/etc]
- Primary colors: [Colors]
- Typography: [Serif/Sans-serif, size scale]
- Imagery: [Photography/Illustration/Icons]
- Overall polish: ⭐⭐⭐⭐⭐

## Pricing Model
| Tier | Price | Features | Target User |
|------|-------|----------|-------------|
| Free | $0 | [Features] | [Who] |
| Premium | $X/mo | [Features] | [Who] |

## Technical Performance
- Load time: [Fast/Medium/Slow]
- Responsiveness: [Smooth/Occasional lag/Frequent issues]
- Offline functionality: [Yes/No/Partial]
- Accessibility: [WCAG level if known]

## Strengths
1. **[Strength 1]**: [Why this is a strength]
2. **[Strength 2]**: [Why this is a strength]

## Weaknesses
1. **[Weakness 1]**: [Why this is a weakness]
2. **[Weakness 2]**: [Why this is a weakness]

## User Feedback Analysis
(From app store reviews, social media, etc.)

### Common Praise
- "[Quote from positive review]" - [Source]
- "[Quote from positive review]" - [Source]

### Common Complaints
- "[Quote from negative review]" - [Source]
- "[Quote from negative review]" - [Source]

## Market Position

### Target Audience
- Primary: [Description]
- Secondary: [Description]

### Competitive Advantage
[What gives them an edge in the market]

### Vulnerabilities
[Where they could be challenged]

## Screenshots Reference
- [Link to screenshot 1]
- [Link to screenshot 2]

## Opportunities for Us
[How we could differentiate or improve on their approach]

## Last Updated
[Date] by [Your name]

Use clear markdown formatting, tables, and emoji ratings where helpful.
```

#### Step 3: Analyze First Competitor

Gather information about a competitor (use their app, read reviews, research online), then:

```
Using the template in templates/competitor-template.md, create a detailed analysis of Uber Eats and save it as competitors/uber-eats/analysis.md.

Based on these notes I gathered:
[Paste your research notes here]

Fill in all sections with specific details. Use tables for comparisons. Be thorough but concise.
```

#### Step 4: Repeat for Other Competitors

```
Using the template in templates/competitor-template.md, create a detailed analysis of DoorDash and save it as competitors/doordash/analysis.md based on my research notes.

[Paste research notes]
```

**Result:** Consistent, thorough analysis of each competitor!

#### Step 5: Create Comparison Matrix

```
Read all analysis files in competitors/ and create a comprehensive feature comparison matrix in analysis/feature-comparison.md.

Create a table comparing these feature categories across all competitors:
- Discovery & Search
- Ordering & Checkout
- Tracking & Notifications
- Payment Options
- Customer Support
- Loyalty Programs

Use:
- ✅ for well-implemented features
- ⏳ for partially implemented features
- ❌ for missing features

Add a "Our Opportunity" column showing where we could differentiate.
```

Claude creates:

```markdown
# Feature Comparison Matrix

## Discovery & Search

| Feature | Uber Eats | DoorDash | GrubHub | Our Opportunity |
|---------|-----------|----------|---------|-----------------|
| Cuisine filters | ✅ Comprehensive (20+ types) | ✅ Good (15 types) | ⏳ Limited (10 types) | Match best-in-class |
| Dietary filters | ✅ Excellent (Vegan, GF, Keto, etc) | ⏳ Basic (Vegan only) | ❌ None | **WIN: Most comprehensive** |
| Price filters | ✅ ($-$$$$) | ✅ ($-$$$$) | ✅ ($-$$$$) | Match standard |
| Map view | ✅ Great implementation | ⏳ Basic | ❌ None | Match Uber Eats |
| Search suggestions | ✅ AI-powered | ✅ Standard | ⏳ Limited | **Opportunity for AI innovation** |

## Ordering & Checkout

| Feature | Uber Eats | DoorDash | GrubHub | Our Opportunity |
|---------|-----------|----------|---------|-----------------|
| Scheduled orders | ✅ Up to 7 days ahead | ⏳ Same day only | ❌ None | **WIN: Most flexible** |
| Group ordering | ⏳ Via shared cart | ✅ Built-in feature | ✅ Built-in feature | Match best-in-class |
| Special instructions | ✅ Per item + order level | ✅ Order level only | ✅ Order level only | Match Uber Eats |
| Tip customization | ✅ Full control | ✅ Full control | ✅ Full control | Match standard |

[... continues for all categories]

## Summary: Our Differentiation Opportunities

### High Impact (Do These)
1. **Most comprehensive dietary filters** - None of the competitors are excellent here
2. **AI-powered recommendations** - Opportunity to be significantly better
3. **Most flexible scheduling** - Clear win available

### Medium Impact (Consider These)
4. Map view matching Uber Eats quality
5. Group ordering as built-in feature

### Low Impact (Match Standard)
6. Standard features where all competitors are similar
```

#### Step 6: Synthesize Insights

```
Based on all competitive analysis files, create synthesis/opportunities.md documenting:

# Opportunities Analysis

## Where We Can Win

List 5-7 clear opportunities where we can differentiate from all competitors.

For each:
- The opportunity
- Why it matters (user value)
- Current competitor state (who does what)
- Our approach (how we'd do it better)
- Business impact (why invest here)
- Effort estimate (T-shirt size: S/M/L)

Prioritize by impact vs. effort.

## Market Gaps

What are users asking for that no competitor provides well?

Use a table format for clarity.
```

**Complete competitive analysis done in a fraction of the time!**

### Pro Tips for Competitive Analysis

**Tip 1: Do Your Own Research First**
Claude Code organizes and structures - you provide the insights:
```
1. Use the competitor apps yourself
2. Take screenshots
3. Read app store reviews
4. Note your observations
5. THEN use Claude Code to structure it all
```

**Tip 2: Update Regularly**
```
Create a file called analysis/update-log.md tracking when each competitor was last reviewed. Makes it easy to know what needs refreshing.
```

**Tip 3: Use Visual Documentation**
```
Store screenshots in each competitor's folder, reference them in the analysis. Claude Code can help you document what's shown in each screenshot.
```

## Workflow 2: Design System Documentation

### The Challenge

Design systems have many components to document:
- Buttons, inputs, cards, modals, navigation, etc.
- Each needs: description, variants, props, examples, accessibility notes
- Must be consistent across all component docs
- Updates need to happen across multiple files

**Manual documentation:** 30-45 min per component (10+ hours for complete system)
**With Claude Code:** 5-10 min per component (1-2 hours for complete system)

### The Claude Code Workflow

#### Step 1: Create Design System Structure

```bash
design-system/
├── CLAUDE.md
├── README.md
├── foundations/
│   ├── colors.md
│   ├── typography.md
│   ├── spacing.md
│   └── icons.md
├── components/
│   ├── button.md
│   ├── input.md
│   ├── card.md
│   ├── modal.md
│   └── [... more components]
├── patterns/
│   ├── forms.md
│   ├── navigation.md
│   └── data-display.md
└── templates/
    └── component-template.md
```

#### Step 2: Create Component Documentation Template

```
Create templates/component-template.md for consistent component documentation:

# [Component Name]

## Overview
[Brief description of component purpose and when to use it]

## Anatomy
[Description of component structure - can reference a diagram]

## Variants

### [Variant 1 Name]
- **Use when:** [Usage context]
- **Visual appearance:** [Description]
- **Example use case:** [Specific example]

[Repeat for all variants]

## Props/Properties

| Prop | Type | Default | Required | Description |
|------|------|---------|----------|-------------|
| [prop1] | [type] | [default] | Yes/No | [what it does] |

## States

| State | Visual Changes | Interaction |
|-------|----------------|-------------|
| Default | [description] | [behavior] |
| Hover | [description] | [behavior] |
| Active/Pressed | [description] | [behavior] |
| Focused | [description] | [behavior] |
| Disabled | [description] | [behavior] |
| Loading | [description] | [behavior] |
| Error | [description] | [behavior] |

## Sizes

| Size | Dimensions | Use Case |
|------|------------|----------|
| Small | [dimensions] | [when to use] |
| Medium (Default) | [dimensions] | [when to use] |
| Large | [dimensions] | [when to use] |

## Usage Guidelines

### Do ✅
- [Best practice 1]
- [Best practice 2]

### Don't ❌
- [Anti-pattern 1]
- [Anti-pattern 2]

## Accessibility

- **Keyboard navigation:** [How to interact with keyboard]
- **Screen reader:** [What gets announced]
- **ARIA attributes:** [Required ARIA attributes]
- **Focus management:** [How focus works]
- **Color contrast:** [Contrast ratios]
- **Touch targets:** [Minimum sizes]

## Responsive Behavior
[How component adapts to different screen sizes]

## Related Components
- [Related component 1]
- [Related component 2]

## Design Tokens Used
```

Colors:
- Primary: [token name]
- Text: [token name]

Typography:
- Font family: [token name]
- Size: [token name]
```

## Code Examples

### Basic Usage
\`\`\`jsx
<ComponentName prop="value">
  Content
</ComponentName>
\`\`\`

### With Variants
\`\`\`jsx
<ComponentName variant="secondary" size="large">
  Content
</ComponentName>
\`\`\`

### Complex Example
\`\`\`jsx
[More complex usage example]
\`\`\`

## Implementation Notes
[Technical considerations for developers]

## Changelog
- [Date]: [What changed]

Format with clear headers, tables, and code blocks.
```

#### Step 3: Document Components

**For each component:**

```
Using templates/component-template.md, create documentation for the Button component in components/button.md.

Button details:
- Variants: Primary (filled), Secondary (outlined), Tertiary (text only), Destructive (red)
- Sizes: Small (32px height), Medium (40px height), Large (48px height)
- Props: variant, size, disabled, loading, icon (left or right)
- All buttons need 44x44px minimum touch target
- Support keyboard activation (Space/Enter)
- Show loading spinner when loading=true
- Disabled buttons have 40% opacity and no cursor pointer

Fill in all sections based on these details. Be thorough and specific.
```

#### Step 4: Use Agents for Consistency

```
Use the documentation-generator agent to create component documentation for Input, Textarea, Select, Checkbox, and Radio components based on my design system specs in design-system-specs.md. Use the template from templates/component-template.md for consistency.
```

**Result:** All components documented with identical structure!

#### Step 5: Create Component Index

```
Read all files in components/ and create components/README.md with:

# Component Library

## Overview
[Brief intro to component library]

## Component Categories

### Form Components
- [Button](./button.md) - [One-line description]
- [Input](./input.md) - [One-line description]
[... all form components]

### Layout Components
[... list]

### Feedback Components
[... list]

## Component Status

| Component | Designed | Documented | Implemented | Tested |
|-----------|----------|------------|-------------|--------|
| Button | ✅ | ✅ | ✅ | ✅ |
| Input | ✅ | ✅ | 🔄 | ⏳ |
[... all components with status]

Legend:
- ✅ Complete
- 🔄 In progress
- ⏳ Not started

## Quick Start
[How to use the design system]

Create clickable links to each component page.
```

### Pro Tips for Design System Documentation

**Tip 1: Start with Foundation**
Document colors, typography, spacing FIRST. Components reference these foundations.

**Tip 2: Use Real Examples**
```
Include actual use cases: "Use primary button for main CTA like 'Sign Up' or 'Submit Order'"
```

**Tip 3: Update in Batches**
```
When you update the template, regenerate all component docs:
"Update all component docs in components/ to include a new 'Mobile Behavior' section after 'Responsive Behavior'"
```

**Tip 4: Link Liberally**
```
Create connections between related components, patterns, and foundations. Makes system navigable.
```

## Workflow 3: Product Requirements Documents (PRDs)

### The Challenge

PRDs need to be:
- Comprehensive (cover all aspects)
- Structured (easy to navigate)
- Clear (no ambiguity)
- Aligned (tie to business goals)

**Manual PRD writing:** 4-8 hours
**With Claude Code:** 1-2 hours

### The Claude Code Workflow

#### Step 1: Brain Dump Your Ideas

```bash
touch prd-notes.txt
open prd-notes.txt
```

Write everything you know about the feature:
```
Feature: Push notification preferences

Why: Users complain about too many notifications
Business goal: Reduce notification opt-outs by 40%
User goal: Control which notifications they receive

Types of notifications:
- Order status updates (important!)
- Promotional offers
- App updates and new features
- Tips and tricks
- Account security alerts

Should let users:
- Toggle categories on/off
- Maybe set quiet hours?
- Quick mute all option

Concerns:
- What if OS notifications are off?
- How to handle gracefully
- Don't want to annoy users

Success metrics:
- Notification opt-out rate
- Engagement with notifications
- User satisfaction scores
```

#### Step 2: Generate PRD Structure

```bash
claude
```

```
Read prd-notes.txt and create a comprehensive Product Requirements Document called prd-notification-preferences.md with this structure:

# Product Requirements Document: Push Notification Preferences

## Executive Summary
[High-level overview in 3-4 sentences]

## Problem Statement

### User Problem
[What problem are we solving for users?]

### Business Problem
[What business problem does this address?]

### Current State
[How do things work now?]

### Desired State
[How will things work after this feature?]

## Goals and Success Metrics

### Primary Goals
1. [Goal 1]
2. [Goal 2]

### Success Metrics
| Metric | Current | Target | Timeline |
|--------|---------|--------|----------|
| [Metric 1] | [Current value] | [Target value] | [When] |

## User Research Summary
[Key insights from research that informed this feature]

## Target Users

### Primary Audience
[Who will use this most]

### Secondary Audience
[Who else will benefit]

## User Stories

### Must Have
- As a [user type], I want to [action] so that [benefit]

### Should Have
- As a [user type], I want to [action] so that [benefit]

### Nice to Have
- As a [user type], I want to [action] so that [benefit]

## Feature Requirements

### Functional Requirements

#### Notification Categories
[Details about each category]

#### User Controls
[What users can control]

#### Permission Handling
[How to handle OS permissions]

### Non-Functional Requirements
- Performance: [Requirements]
- Security: [Requirements]
- Privacy: [Requirements]
- Accessibility: [Requirements]

## User Experience

### User Flow
[High-level flow through the feature]

### Screens Required
1. [Screen name] - [Purpose]

### Interactions
[Key interactions]

## Technical Considerations

### Frontend
[What needs to be built]

### Backend
[API requirements, database changes]

### Third-Party Services
[Any external services needed]

## Dependencies
- [ ] Dependency 1
- [ ] Dependency 2

## Edge Cases
1. [Edge case 1] - [How to handle]

## Out of Scope
[What we're explicitly NOT doing in this version]

## Timeline and Milestones

| Milestone | Description | Target Date | Owner |
|-----------|-------------|-------------|-------|
| Research | [What] | [Date] | [Who] |
| Design | [What] | [Date] | [Who] |
| Development | [What] | [Date] | [Who] |
| Testing | [What] | [Date] | [Who] |
| Launch | [What] | [Date] | [Who] |

## Risks and Mitigation

| Risk | Impact | Likelihood | Mitigation |
|------|--------|------------|------------|
| [Risk 1] | High/Med/Low | High/Med/Low | [Strategy] |

## Open Questions
1. [Question 1]
2. [Question 2]

## Stakeholders
- Product: [Name]
- Design: [Name]
- Engineering: [Name]
- Marketing: [Name]

## Appendix
- [Link to research findings]
- [Link to designs]
- [Link to technical specs]

Base the content on prd-notes.txt. Use placeholders where details need to be filled in. Be specific and thorough where you have enough information.
```

#### Step 3: Use Agents to Review

```
Use the design-review agent to analyze prd-notification-preferences.md and identify:
- Missing critical sections
- Areas that need more detail
- Assumptions that should be validated
- Risks not considered
- Success metrics that should be added

Provide prioritized recommendations for strengthening the PRD.
```

#### Step 4: Refine Based on Feedback

```
Address the P0 issues identified by the agent by adding [specific sections] to prd-notification-preferences.md
```

### Real PRD Example Output

After Claude Code processes your notes:

```markdown
# Product Requirements Document: Push Notification Preferences

## Executive Summary

Push Notification Preferences allows users to granularly control which types of notifications they receive from our app. This feature addresses user feedback about notification fatigue while maintaining engagement with important updates. By giving users control, we expect to reduce notification opt-outs by 40% while maintaining or improving engagement with high-value notifications.

## Problem Statement

### User Problem
Users report feeling overwhelmed by the number and variety of notifications from our app. Current implementation is all-or-nothing: users either receive all notifications or disable them entirely at the OS level. This binary choice means users who disable notifications miss critical updates like order status changes and security alerts.

**Key user quotes:**
> "I turned off all notifications because I was getting too many promotional messages, but now I miss when my order is delivered" - Research Participant #7

> "I wish I could just get the important stuff and none of the marketing" - App Store Review

### Business Problem
- Current notification opt-out rate: 35% (industry average: 15-20%)
- Lost engagement opportunity with opted-out users
- Promotional notification effectiveness declining
- Unable to reach users with time-sensitive security alerts when they've opted out globally

### Current State
- Single toggle for all notifications in iOS Settings / Android Notification Settings
- No in-app control over notification types
- No visibility into which notifications users actually want
- Marketing sends notifications to all opted-in users regardless of interest

### Desired State
- Users have granular control over notification categories
- In-app preferences center makes control easily discoverable
- Users can customize notification behavior without leaving the app
- Backend respects user preferences and doesn't send unwanted notifications
- Analytics show which notification types users value most

## Goals and Success Metrics

### Primary Goals
1. **Reduce notification opt-outs** by giving users control instead of forcing all-or-nothing choice
2. **Maintain engagement** with high-value notifications (order status, security)
3. **Improve user satisfaction** by respecting user preferences

### Success Metrics

| Metric | Current | Target | Timeline |
|--------|---------|--------|----------|
| Notification opt-out rate | 35% | ≤21% (40% reduction) | 3 months post-launch |
| Order status notification engagement | 65% | ≥70% (maintain/improve) | 3 months post-launch |
| User satisfaction (post-purchase survey) | 7.2/10 | ≥8.0/10 | 3 months post-launch |
| Promotional notification engagement | 8% | ≥12% (better targeting) | 3 months post-launch |

### Secondary Metrics
- Average number of categories enabled per user
- Time spent in preferences screen (proxy for clarity)
- Support tickets related to notifications (should decrease)

[... continues with full PRD details]
```

## Workflow 4: User Personas at Scale

### The Challenge

Creating multiple personas with consistent format and depth.

### The Claude Code Workflow

#### Step 1: Create Persona Template

```
Create templates/persona-template.md:

# [Persona Name]

## Photo
[Placeholder: Link to photo or description]

## Demographics
- **Age:** [Age or age range]
- **Location:** [Where they live]
- **Occupation:** [Job title]
- **Education:** [Education level]
- **Tech proficiency:** [Low/Medium/High]
- **Income bracket:** [Range]

## Overview
[2-3 sentence summary of who this persona is]

## Goals
1. **[Goal 1]**: [Description]
2. **[Goal 2]**: [Description]
3. **[Goal 3]**: [Description]

## Frustrations
1. **[Frustration 1]**: [Description]
2. **[Frustration 2]**: [Description]
3. **[Frustration 3]**: [Description]

## Behaviors
- [Behavior 1]
- [Behavior 2]
- [Behavior 3]

## Technology Usage
- **Devices:** [What devices they use]
- **Apps they love:** [Apps they use regularly]
- **Tech comfort:** [How comfortable with technology]
- **Social media:** [Which platforms, how often]

## In Their Own Words
> "[Quote that captures their perspective on the problem your product solves]"

## How [Your Product] Helps
[3-4 sentences on how your product specifically addresses this persona's needs]

## User Journey Touchpoints
1. **Awareness:** [How they learn about product]
2. **Consideration:** [What they evaluate]
3. **Purchase:** [What drives decision]
4. **Usage:** [How they use product]
5. **Loyalty:** [What keeps them engaged]

## Design Implications
- [Design consideration 1]
- [Design consideration 2]
- [Design consideration 3]
```

#### Step 2: Generate Personas from Research

```
Based on our user research in research/synthesis/themes.md, create 3 distinct user personas:

1. Tech-savvy early adopter (high engagement, values innovation)
2. Practical mainstream user (moderate engagement, values reliability)
3. Reluctant occasional user (low engagement, values simplicity)

Save as:
- personas/tech-savvy-early-adopter.md
- personas/practical-mainstream.md
- personas/reluctant-occasional.md

Use the template from templates/persona-template.md. Make each persona feel real with specific details, quotes, and behaviors based on actual research findings.
```

#### Step 3: Create Persona Summary

```
Read all personas in personas/ and create personas/README.md with:

# User Personas

## Overview
[Introduction to our persona set]

## Primary Personas

### [Persona 1 Name]
![Photo placeholder]
[2-sentence summary]
**Key Insight:** [Most important thing to know]
[Link to full persona]

[Repeat for each persona]

## When to Use Each Persona

| Persona | Best For | Not Appropriate For |
|---------|----------|---------------------|
| [Name] | [Use case] | [Anti-use case] |

## Design Principles by Persona
[How each persona influences design decisions]

Format beautifully with clear organization.
```

## Combining Workflows for Complex Projects

### Example: Complete Feature Package

**Scenario:** You're launching a new feature and need complete documentation.

**Multi-workflow approach:**

```
Step 1: Create PRD
"Create product requirements document for [feature]"

Step 2: Generate personas (if needed)
"Based on PRD, create 2 personas representing primary user types"

Step 3: Create design spec
"Based on PRD, create design specification for [feature]"

Step 4: Document user flows
"Create Mermaid flowcharts for all scenarios in design spec"

Step 5: Research competitors
"Using competitive analysis template, document how competitors handle this feature"

Step 6: Create comparison
"Compare our proposed approach vs. competitors, create opportunities analysis"

Step 7: Package everything
"Create a summary document linking to all artifacts with executive summary"
```

**Result:** Complete feature package ready for stakeholder review!

## Practice Exercise

See [day-07-competitive-analysis-exercise.md](../exercises/day-07-competitive-analysis-exercise.md) for hands-on practice with competitive analysis workflow.

## Success Checklist

By the end of Day 7, you should be able to:

- [ ] Create comprehensive competitive analyses
- [ ] Document design systems at scale
- [ ] Write thorough PRDs efficiently
- [ ] Generate consistent personas
- [ ] Combine multiple workflows for complex projects
- [ ] Use templates effectively for consistency

## Tomorrow: Day 8

**We'll learn:**
- Creating custom agents for your specific workflows
- Introduction to hooks (automation on steroids)
- Customizing Claude Code's output style
- Building your personal productivity system

**Homework (Optional):**
1. Use competitive analysis workflow on real competitors
2. Document one component from your design system
3. Start a PRD for an upcoming feature
4. Create a persona based on real research

## Key Takeaways

1. **Templates = Consistency** - Create once, reuse forever
2. **Claude Code excels at structure** - You provide insights, it organizes
3. **Combine workflows for maximum impact** - Build complete documentation packages
4. **Iteration is key** - Start with structure, refine with details
5. **Agents for review** - Use specialized agents to ensure quality

**You now have professional workflows for the most common UX/PM documentation tasks!**

---

*Questions? Share your documentation wins in the workshop channel!*
