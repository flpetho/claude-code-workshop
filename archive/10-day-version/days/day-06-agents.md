# Day 6: Agents - Your AI Specialists

## Learning Objectives

By the end of this session, you will:
1. Understand what agents are and why they're powerful
2. Know when to use agents vs. basic Claude Code
3. Use pre-built agents for common UX/PM tasks
4. Combine agents for complex workflows
5. Understand how to find and explore available agents

## Recap: Week 1 Complete!

**You've learned:**
- How to use the terminal confidently
- How to work with Claude Code effectively
- How to organize projects for maximum efficiency
- Real UX/PM workflows (documentation, flows, research synthesis)

**This week:** Advanced features that multiply your productivity!

## What Are Agents?

### The Basic Idea

Think of agents as **specialized AI assistants** within Claude Code. Instead of Claude Code doing everything, you can call in specialists for specific tasks.

**Analogy:**
- **Claude Code** = General practitioner doctor
- **Agents** = Medical specialists (cardiologist, neurologist, etc.)

### Why Use Agents?

**Regular Claude Code:**
```
You: "Review this design document and check for issues"
Claude: *Reads document, provides general feedback*
```

**With Design Review Agent:**
```
You: "Use the design-review agent to analyze design-spec.md"
Claude: *Launches specialist agent that:*
- Checks for missing sections
- Validates user flows
- Reviews accessibility considerations
- Identifies edge cases
- Provides structured feedback report
```

**Result:** More thorough, consistent, specialized analysis.

## When to Use Agents

### Use Regular Claude Code When:
- Simple file operations (read, write, edit)
- Quick questions
- Basic documentation
- Straightforward tasks

### Use Agents When:
- Need specialized expertise (design review, research analysis)
- Complex multi-step workflows
- Repetitive tasks that need consistency
- Analysis requiring specific framework or methodology
- Tasks that benefit from structured approach

## How Agents Work

### Starting an Agent

**Basic syntax:**
```
Use the [agent-name] agent to [task]
```

**Example:**
```
Use the design-review agent to analyze user-onboarding-spec.md
```

### What Happens:
1. Claude Code launches the specialized agent
2. Agent reads relevant files
3. Agent applies its specialized knowledge
4. Agent provides structured output
5. Control returns to you

**Think of it as:** Calling in a consultant for a specific task.

## Pre-Built Agents for UX/PM Work

### 1. Design Review Agent

**Purpose:** Comprehensive design specification review

**When to use:**
- After drafting a design spec
- Before stakeholder review
- When you want to catch issues early

**How to use:**
```
Use the design-review agent to analyze specs/checkout-flow-spec.md and provide a detailed review with specific recommendations
```

**What it checks:**
- All required sections present
- User flows are complete
- Edge cases considered
- Accessibility requirements
- Component specifications
- Success metrics defined

**Output:** Structured report with:
- Overall assessment
- Section-by-section analysis
- Missing elements
- Recommendations prioritized

### 2. Research Synthesis Agent

**Purpose:** Analyze multiple research documents and identify patterns

**When to use:**
- After collecting user interviews
- When you have multiple feedback sources
- Need to identify themes across documents

**How to use:**
```
Use the research-synthesis agent to analyze all files in research/interviews/ and identify key themes with frequency counts
```

**What it does:**
- Reads all specified files
- Identifies recurring themes
- Counts frequency of mentions
- Extracts representative quotes
- Provides prioritized insights

### 3. Documentation Generator Agent

**Purpose:** Create consistent, well-structured documentation

**When to use:**
- Need to document multiple features consistently
- Creating design system documentation
- Building knowledge base

**How to use:**
```
Use the documentation-generator agent to create component documentation for all components in components/ folder
```

**What it creates:**
- Consistent structure across all docs
- Standard sections (overview, props, examples, accessibility)
- Links between related documents
- Index/navigation

### 4. Flow Diagram Agent

**Purpose:** Create Mermaid flowcharts from text descriptions

**When to use:**
- Documenting user journeys
- Mapping decision trees
- Visualizing processes

**How to use:**
```
Use the flow-diagram agent to create a user flow diagram for the password reset process described in password-reset-notes.txt
```

**What it creates:**
- Properly formatted Mermaid syntax
- Decision points clearly marked
- All paths accounted for
- Error states included

### 5. Competitive Analysis Agent

**Purpose:** Structure competitive analysis with consistent framework

**When to use:**
- Analyzing multiple competitors
- Creating comparison matrices
- Identifying market gaps

**How to use:**
```
Use the competitive-analysis agent to analyze competitors/uber-eats/ and competitors/doordash/ and create a comparison report
```

**What it provides:**
- Structured comparison framework
- Feature parity matrix
- Strengths/weaknesses analysis
- Opportunity identification

## Practical Workflow Examples

### Workflow 1: Complete Design Spec Review

**Scenario:** You've drafted a design spec and want thorough feedback before sharing with team.

**Step 1: Draft your spec (Day 5 skills)**
```bash
claude
```
```
Create a design spec for password reset flow in specs/password-reset-spec.md
```

**Step 2: Use design review agent**
```
Use the design-review agent to analyze specs/password-reset-spec.md and provide comprehensive feedback
```

**Step 3: Review agent's feedback**
Agent provides structured report like:

```markdown
# Design Review: Password Reset Flow

## Overall Assessment
Specification is 75% complete. Strong user flow and components section.
Missing critical edge cases and accessibility details.

## Section Analysis

### ✅ Well-Documented Sections
- User Flow: Complete, all steps covered
- Components: Well-specified with properties
- Success Metrics: Clear and measurable

### ⚠️ Needs Improvement
- Edge Cases: Only 2 of 8 common scenarios covered
- Accessibility: Missing keyboard navigation details
- Error States: Generic error handling, needs specifics

### ❌ Missing Sections
- Security considerations (password reset token expiry, rate limiting)
- Email template specifications
- Analytics events to track

## Priority Recommendations

### P0 (Must address before review)
1. Add security considerations section
2. Document all edge cases
3. Specify error messages for each failure scenario

### P1 (Should address)
4. Add detailed accessibility requirements
5. Include email template mockups
6. Define analytics event structure

[... detailed breakdown continues]
```

**Step 4: Address feedback**
```
Add a Security Considerations section to specs/password-reset-spec.md covering token expiry (15 min), rate limiting (5 attempts per hour), and secure token generation
```

**Step 5: Re-review if needed**
```
Use the design-review agent again to verify I've addressed the P0 issues
```

### Workflow 2: Multi-Document Research Analysis

**Scenario:** Conducted 8 user interviews. Need to synthesize findings.

**Step 1: Organize interviews**
```
research/
├── interviews/
│   ├── participant-01.md
│   ├── participant-02.md
│   ├── ...
│   └── participant-08.md
```

**Step 2: Launch synthesis agent**
```
Use the research-synthesis agent to analyze all files in research/interviews/ and create a comprehensive themes analysis in research/synthesis/key-themes.md
```

**Step 3: Agent processes all interviews**
Agent reads all 8 files, identifies patterns, creates:

```markdown
# Research Synthesis - Key Themes

## Executive Summary
8 participants, ages 24-45, mobile banking app study
5 major themes identified, 3 critical pain points

## Theme Frequency Matrix

| Theme | Participants | Severity | Business Impact |
|-------|--------------|----------|-----------------|
| Security anxiety | 8/8 (100%) | High | Critical |
| Slow load times | 7/8 (88%) | High | High |
| Confusing navigation | 6/8 (75%) | Medium | High |
| Lack of budgeting tools | 5/8 (63%) | Low | Medium |
| Poor transaction search | 4/8 (50%) | Medium | Low |

## Detailed Theme Analysis

### Theme 1: Security Anxiety (Critical)
**Frequency:** 8 out of 8 participants (100%)
**Severity:** High - Blocking feature adoption

**Key Insights:**
- All participants expressed concern about mobile security
- 6 participants avoid mobile banking for large transactions due to security fears
- 5 participants mentioned wanting biometric authentication

**Representative Quotes:**
> "I just don't feel safe doing big transfers on my phone" - P03
> "Why can't I use Face ID like other banking apps?" - P06
> "I always wonder if someone is watching when I type my password" - P07

**Recommendations:**
1. Implement biometric authentication (P0)
2. Add visible security indicators throughout app (P0)
3. Create security education flow for new users (P1)

[... continues for each theme]
```

**Step 4: Create executive summary**
```
Based on research/synthesis/key-themes.md, create a 1-page executive summary for stakeholders in research/synthesis/executive-summary.md
```

### Workflow 3: Design System Documentation

**Scenario:** Building design system, need consistent component docs.

**Step 1: Use documentation generator**
```
Use the documentation-generator agent to create standardized component documentation for all components in the design-system/components/ folder
```

**Step 2: Agent creates consistent docs**
For each component, creates:

```markdown
# Button Component

## Overview
Primary interactive element for user actions.

## Variants

### Primary
- **Use when:** Main call-to-action
- **Visual:** High contrast, filled background
- **Example:** "Submit", "Save Changes"

### Secondary
- **Use when:** Less important actions
- **Visual:** Outlined, no fill
- **Example:** "Cancel", "Go Back"

### Tertiary
- **Use when:** Subtle actions
- **Visual:** Text only, no border
- **Example:** "Learn More", "Skip"

## Props

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| variant | 'primary' \| 'secondary' \| 'tertiary' | 'primary' | Visual style |
| size | 'small' \| 'medium' \| 'large' | 'medium' | Button size |
| disabled | boolean | false | Disable interaction |
| loading | boolean | false | Show loading state |

## Accessibility

- **Keyboard:** Space or Enter activates
- **Screen reader:** Button role announced
- **Focus:** Visible focus ring (2px solid)
- **Disabled:** aria-disabled="true", cannot receive focus

## Usage Guidelines

### Do ✅
- Use primary buttons sparingly (1-2 per screen)
- Provide clear, action-oriented labels ("Save Changes" not "Submit")
- Ensure 44x44px minimum touch target

### Don't ❌
- Don't use multiple primary buttons in same context
- Don't use generic labels like "Click Here"
- Don't rely solely on color for disabled state

## Code Example

\`\`\`jsx
<Button variant="primary" size="medium">
  Save Changes
</Button>
\`\`\`

## Related Components
- [IconButton](./icon-button.md)
- [LinkButton](./link-button.md)
```

**Result:** All component docs follow same structure, easy to navigate, consistent.

## Combining Agents for Complex Tasks

### Example: Complete Feature Documentation

**Scenario:** New feature needs full documentation package.

**Multi-agent workflow:**

```
Step 1: Use the documentation-generator agent to create initial feature spec from my notes in feature-notes.txt

Step 2: Use the flow-diagram agent to create user flow diagrams for all scenarios in the feature spec

Step 3: Use the design-review agent to review the complete spec and identify gaps

Step 4: After I address gaps, use the design-review agent again to validate completeness
```

**This creates:**
- Well-structured spec (generator agent)
- Visual flow diagrams (flow-diagram agent)
- Thoroughly reviewed document (design-review agent)

**All in 15-20 minutes instead of 2-3 hours!**

## Discovering Available Agents

### Finding Agents

**Ask Claude Code:**
```
What agents are available for UX and PM work?
```

**Or explore the agents directory:**
```
ls ~/.claude/agents/
```

### Understanding What an Agent Does

**Ask before using:**
```
What does the research-synthesis agent do and when should I use it?
```

Claude Code explains:
- Agent's purpose
- What it's good at
- When to use it
- Example usage
- Expected output

## Best Practices for Using Agents

### 1. Be Specific About Input

**❌ Vague:**
```
Use an agent to review my design
```

**✅ Specific:**
```
Use the design-review agent to analyze specs/checkout-flow-spec.md and focus on edge cases and accessibility
```

### 2. Understand Agent Scope

Agents have specialized knowledge. Use the right tool:
- **Design review** → design-review agent
- **Research synthesis** → research-synthesis agent
- **Code review** → code-review agent (not for UX work)

### 3. Review Agent Output

Agents are thorough but not perfect:
- Read their recommendations carefully
- Apply your domain expertise
- Agents suggest, you decide

### 4. Iterate with Agents

```
First pass: Use agent to identify issues
Address issues: Make changes yourself
Second pass: Use agent again to validate fixes
```

### 5. Combine Agents with Regular Claude Code

**Use agents for:** Specialized analysis, structured output
**Use regular Claude Code for:** Edits, quick tasks, file operations

## Common Agent Patterns

### Pattern 1: Review → Fix → Re-review

```
1. Use [review-agent] to analyze [document]
2. [Read agent feedback]
3. [Make changes based on feedback]
4. Use [review-agent] again to verify fixes
```

### Pattern 2: Generate → Customize → Validate

```
1. Use [generator-agent] to create [document type]
2. [Customize the generated content]
3. Use [review-agent] to check quality
```

### Pattern 3: Analyze → Synthesize → Report

```
1. Use [analysis-agent] to process [raw data]
2. [Review analysis output]
3. Create executive summary from analysis
```

## Practice Exercise

Let's practice using agents on a real task.

### Exercise: Complete Design Review Workflow

**Scenario:** You need to create and review a design spec for a new feature.

**Task:**
1. Create a design spec for "Email Preferences Screen"
2. Use design-review agent to analyze it
3. Address agent's feedback
4. Re-review to validate

See [day-06-agents-exercise.md](../exercises/day-06-agents-exercise.md) for step-by-step instructions.

## When Agents Aren't the Right Tool

### Don't Use Agents For:

**Simple file operations:**
```
❌ Use an agent to read this file
✅ Read user-profile-spec.md
```

**Quick questions:**
```
❌ Use an agent to explain Mermaid syntax
✅ How do I create a flowchart in Mermaid?
```

**Single-file edits:**
```
❌ Use an agent to add a section to this doc
✅ Add an Accessibility section to design-spec.md
```

**Use regular Claude Code for these!**

## Troubleshooting Agents

### Issue: Agent taking a long time

**Reason:** Processing many files or complex analysis
**Solution:** Be patient, or specify fewer files

### Issue: Agent output not what you expected

**Reason:** Unclear instructions or wrong agent
**Solution:**
1. Be more specific about what you want
2. Check you're using the right agent for the task
3. Provide example of expected output format

### Issue: Don't know which agent to use

**Solution:**
```
I need to [describe task]. Which agent should I use?
```

Claude Code will recommend the best agent.

## Success Checklist

By the end of Day 6, you should be able to:

- [ ] Explain what agents are and when to use them
- [ ] Use design-review agent for spec analysis
- [ ] Use research-synthesis agent for finding patterns
- [ ] Combine multiple agents in a workflow
- [ ] Know when to use agents vs. regular Claude Code
- [ ] Find and explore available agents

## Tomorrow: Day 7

**We'll learn:**
- More UX/PM workflows (competitive analysis, design systems)
- Advanced documentation patterns
- Creating design system documentation
- Product requirements documents
- Persona creation at scale

**Homework (Optional):**
1. Use design-review agent on a real design spec
2. Try research-synthesis agent if you have research data
3. Experiment with 2-3 different agents
4. Think about which agents would be most useful in your daily work

## Key Takeaways

1. **Agents are specialists** - Use them for tasks requiring specialized knowledge
2. **Not a replacement for you** - Agents assist, you decide
3. **Iterative process** - Use agents multiple times as you refine work
4. **Combine with regular Claude Code** - Agents for analysis, Claude Code for edits
5. **Be specific** - Clear instructions = better agent output

**Week 2 has begun! You're now using advanced features that multiply your productivity!**

---

*Questions? Share your agent experiments in the workshop channel!*
