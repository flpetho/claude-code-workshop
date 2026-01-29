# CLAUDE.md - Project Guide

## Project: Claude Code 101 Workshop
**Type**: educational
**Language**: markdown, html, javascript
**Purpose**: 10-day workshop curriculum for UX/PM professionals learning Claude Code

## Project Structure

- `days/` - 10 daily module content files (markdown)
- `exercises/` - Hands-on practice exercises for each day
- `examples/` - Generic UX/PM example projects (templates)
- `cheat-sheets/` - Quick reference materials (printable)
- `presenter-notes/` - Instructor scripts and guidance
- `resources/` - Pre-workshop and post-workshop materials
- `index.html` + `css/` + `js/` - Interactive workshop website

## Content Creation Guidelines

### Writing Module Content (days/*)
- **Audience**: UX/PM professionals, may be new to CLI
- **Tone**: Friendly, encouraging, not overly technical
- **Structure**:
  - Learning objectives (3-5)
  - Key concepts (5-7 bullet points)
  - Demo walkthrough (step-by-step)
  - Hands-on exercise
  - Homework (optional)
  - Additional resources
- **Length**: 1500-2500 words per day
- **Include**: Screenshots, diagrams, real examples

### Writing Exercises (exercises/*)
- **Format**: Step-by-step instructions
- **Include**:
  - Prerequisites
  - Expected outcomes
  - Troubleshooting tips
  - Extension challenges for fast learners
- **Tone**: Clear, directive, encouraging

### Creating Examples (examples/*)
- **Realistic but generic**: Don't use company-specific content
- **Complete**: Include all files needed
- **Document**: Add README explaining the example
- **Variety**: Cover different UX/PM scenarios

### Cheat Sheets (cheat-sheets/*)
- **Printable**: Single page PDF format
- **Visual**: Use tables, diagrams, icons
- **Organized**: Group related commands/concepts
- **Beginner-friendly**: No jargon without explanation

## Development Commands

```bash
# Start local server to view website
python3 -m http.server 8080

# Open in browser
open http://localhost:8080

# Build content.js from markdown files
node build-content.js
```

## Working with Claude Code on This Project

**For content creation:**
- "Create Day X module content following the structure in CLAUDE.md"
- "Draft an exercise for [topic] with step-by-step instructions"
- "Create a cheat sheet for CLI commands, UX/PM-focused, printable"

**For examples:**
- "Create a generic design system documentation example"
- "Build a competitive analysis template with sample content"

**For website:**
- "Update the navigation to show progress for completed modules"
- "Add a search feature to find specific topics"

## Key Principles

1. **Beginner-first**: Assume no CLI or dev experience
2. **UX/PM-focused**: Examples should be relevant to their work
3. **Hands-on**: Every module includes practice
4. **Encouraging**: Build confidence, not intimidation
5. **Practical**: Focus on real workflows they'll use

## Timeline

- Week 1 (Dec 16-23): Days 1-2 + cheat sheets
- Week 2 (Dec 26-Jan 2): Days 3-4 + examples
- Week 3 (Jan 3-9): Days 5-7 + examples
- Week 4 (Jan 10-16): Days 8-10 + website
- Week 5 (Jan 17-23): Testing + refinement

**Workshop Delivery**: Late January 2026
