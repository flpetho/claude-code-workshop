# Claude Code Commands Cheat Sheet
## Quick Reference for UX/PM Professionals

*Print this and keep it handy!*

---

## 🚀 Starting & Stopping

| Command | What It Does | When to Use |
|---------|-------------|-------------|
| `claude` | Start Claude Code in current folder | Every time you want to work |
| `claude --version` | Check if installed and version | Verify installation |
| `exit` or `Ctrl+D` | Exit Claude Code | When you're done |
| `Ctrl+C` | Cancel current operation | If something's running too long |

---

## 💬 How to Talk to Claude Code

### Pattern for Success

**Good prompt structure:**
```
[Context] + [Task] + [Format] + [Location]
```

**Example:**
```
I'm working on a UX research project. Read all files in interviews/ and create a synthesis document called analysis/themes.md with a table of key themes, supporting quotes, and recommendations.
```

---

## 📝 Common UX/PM Tasks

### Create Documentation

```
Create a [document-type] called [filename] with sections for:
- Section 1
- Section 2
- Section 3

Use markdown formatting with headers and bullet points.
```

**Examples:**
- Design specification
- User research plan
- Meeting notes template
- Feature requirements doc

### Read and Analyze Files

```
Read [filename] and [what to do with it]
```

**Examples:**
```
Read meeting-notes.txt and create a structured document with action items extracted

Read participant-interview.md and identify the top 3 pain points mentioned

Read all files in research/ and create a summary of common themes
```

### Synthesize Multiple Files

```
Read all files in [folder]/ and create [output]
```

**Examples:**
```
Read all files in interviews/ and identify common themes across participants

Read all competitor analysis files and create a comparison matrix

Read all files in feedback/ and extract top feature requests with frequency
```

### Create Tables and Lists

```
Create a [table/list] showing [what to include]
```

**Examples:**
```
Create a markdown table comparing 3 competitors across 5 features

Create a prioritized list of user pain points from the research

Create a feature comparison matrix with checkmarks for available features
```

### Format and Structure

```
Read [messy-file] and reformat as [structured-format]
```

**Examples:**
```
Read draft.txt and reformat as a proper design spec with headers and sections

Read notes.txt and create a professional meeting notes document

Read research-data.txt and organize into themed sections with quotes
```

---

## 🎯 Specific Request Patterns

### For Design Specs

```
Create a design specification for [feature] with:
- Overview
- User flow
- Screens required
- Components
- Interactions
- Accessibility considerations
- Success metrics

Save as specs/[feature-name]-spec.md
```

### For User Flows (Mermaid Diagrams)

```
Create a Mermaid flowchart for [process] showing:
- Entry point
- Decision points
- Possible paths
- End states

Save as flows/[flow-name].md with diagram and description
```

### For Meeting Notes

```
Read [raw-notes] and create structured meeting notes with:
- Attendees
- Discussion topics
- Decisions made
- Action items (as a table with owner and due date)
- Next steps

Save as meetings/[date]-meeting-notes.md
```

### For Research Synthesis

```
Read all files in [research-folder]/ and create a synthesis document with:
- Key themes (with frequency)
- Representative quotes
- Patterns identified
- Recommendations

Include a summary table of themes.
Save as analysis/synthesis.md
```

### For Personas

```
Create a user persona document for [user-type] with:
- Demographics
- Goals
- Frustrations
- Tech comfort level
- Typical day
- Quote in their voice
- How our product helps

Save as personas/[persona-name].md
```

### For Competitive Analysis

```
Create a competitive analysis for [competitor] with:
- Overview
- Key features
- Pricing model
- Strengths and weaknesses
- Notable UX patterns
- User feedback summary

Save as competitors/[competitor-name]/analysis.md
```

---

## 🔄 Iterative Requests

### First: Create Structure
```
Create a design spec for user onboarding with all main sections
```

### Then: Add Details
```
Add a detailed user flow section to the design spec with step-by-step breakdown
```

### Then: Enhance
```
Add a table of edge cases with mitigation strategies to the design spec
```

### Finally: Refine
```
Add accessibility considerations for each screen in the user flow
```

---

## ✏️ Editing and Refining

### Add Content
```
Add a section called [section-name] to [filename] after [existing-section]
```

### Modify Existing
```
Update the [section-name] in [filename] to include [new content]
```

### Reorganize
```
Reorganize [filename] to have sections in this order: [list sections]
```

### Expand
```
Expand the [section-name] in [filename] with more detail about [topic]
```

### Convert Format
```
Convert the bullet points in [filename] to a table with columns for [columns]
```

---

## 📊 Creating Tables

### Feature Comparison
```
Create a markdown table comparing [items] across these dimensions:
- Dimension 1
- Dimension 2
- Dimension 3

Use ✅ for available, ⏳ for partial, ❌ for unavailable
```

### Action Items
```
Create a table of action items from [filename] with columns:
- Task
- Owner
- Due Date
- Status (use emoji: ⏳ pending, 🔄 in progress, ✅ done)
```

### Status Tracking
```
Create a project status table with:
- Phase
- Status
- Completion %
- Notes
```

---

## 📁 Working with Folders

### Batch Processing
```
For each file in [folder]/, create a [document-type] in [output-folder]/ with the same name
```

### Organize Files
```
Look at all files in [folder]/ and suggest how to organize them into subfolders
```

### Create Structure
```
Create this folder structure:
[paste structure]

And add README.md files in each folder explaining their purpose
```

---

## 🎨 Mermaid Diagrams

### Flowcharts
```
Create a Mermaid flowchart showing [process] with decision points and different paths
```

### Sequence Diagrams
```
Create a Mermaid sequence diagram showing how [feature] works between [components]
```

### User Journey
```
Create a Mermaid user journey diagram for [task] showing user emotions at each step
```

**Mermaid renders in:** GitHub, many doc tools, VS Code

---

## ⚠️ What NOT to Ask

### ❌ Don't Ask Claude to:
- Create actual visual designs or mockups
- Browse the internet for information
- Access files outside current project
- Remember previous conversations
- Write actual code (unless you want to learn)
- Make decisions without your input

### ✅ Instead Ask Claude to:
- Document design decisions
- Structure information
- Create text-based diagrams
- Format and organize content
- Synthesize and analyze text
- Create templates and specifications

---

## 💡 Pro Tips

### 1. Be Specific About Location
```
✅ Save as research/synthesis/themes.md
❌ Save somewhere
```

### 2. Specify Format
```
✅ Create a markdown table with columns for Feature, Priority, Status
❌ Make a list of features
```

### 3. Reference Existing Files
```
✅ Read participant-03-interview.md
❌ Read that interview file
```

### 4. Break Down Complex Tasks
```
Step 1: Create the structure
Step 2: Add content to each section
Step 3: Add tables and formatting
```

### 5. Use Templates
```
Using the template in templates/design-spec-template.md, create a spec for [feature]
```

### 6. Ask Claude to Explain
```
Can you explain what you just created and how it's organized?
```

### 7. Request Specific Sections
```
Create just the "Edge Cases" section for the existing design spec
```

---

## 🚨 Common Issues & Fixes

### "I can't find that file"
**Fix:** Check you're in the right folder
```
pwd              # Where am I?
ls               # What files exist?
```

### "That's not what I wanted"
**Fix:** Be more specific next time
```
Add more details about format, structure, content
```

### "Can you remember what we did earlier?"
**Fix:** Claude doesn't remember. Give context:
```
Earlier you created themes.md. Now add a recommendations section to it.
```

### "Nothing happened"
**Fix:** Check if Claude is waiting for more input
```
Look for the prompt. Did your command complete?
```

---

## 📋 Daily Workflow Pattern

### Morning: Start Project
```bash
cd ~/Documents/my-project
claude
```

### During Work: Create & Edit
```
[Use specific prompts from above]
```

### Verify: Check Output
```
exit
cat filename.md
open filename.md
```

### Next Task: Restart
```bash
claude
```

---

## 🎓 Example Session

```bash
# Navigate to project
cd ~/Documents/mobile-app-redesign

# Start Claude Code
claude

# Create initial spec
"Create a design spec for user profile screen with standard sections"

# Add details
"Add a detailed component list with properties for each component"

# Create flow
"Create a Mermaid flowchart showing the user flow for editing profile"

# Exit
exit

# Verify
cat specs/user-profile-spec.md
open specs/user-profile-spec.md
```

---

## 📚 Template Prompts to Save

**Save these prompts for reuse:**

### Design Spec Template
```
Create a design specification for [FEATURE] with sections for Overview, User Flow, Screens, Components, Interactions, Accessibility, Edge Cases, and Success Metrics. Use markdown formatting.
```

### Research Synthesis Template
```
Read all files in [FOLDER]/ and create a synthesis document with key themes (include frequency), representative quotes, patterns, and recommendations. Include a summary table.
```

### Meeting Notes Template
```
Read [RAW-NOTES] and create structured meeting notes with Attendees, Discussion Topics, Decisions Made, Action Items (as table), and Next Steps.
```

### Competitive Analysis Template
```
Create a competitive analysis for [COMPETITOR] with Overview, Key Features, Pricing, Strengths, Weaknesses, UX Patterns, and User Feedback.
```

---

## ✅ Quick Command Reference

| What You Want | What to Ask |
|---------------|-------------|
| Create new document | "Create [type] called [name] with [sections]" |
| Read existing file | "Read [filename] and [action]" |
| Analyze multiple files | "Read all files in [folder]/ and [action]" |
| Create table | "Create a markdown table with [columns]" |
| Create diagram | "Create a Mermaid [type] showing [content]" |
| Format content | "Reformat [file] as [structure]" |
| Extract information | "From [file] extract [what] and [how to present]" |
| Add to existing | "Add [content] to [file] in [section]" |

---

## 🎯 Remember

1. **Start in the right folder** - Claude only sees files where you started it
2. **Be specific** - Clear prompts = better results
3. **Verify output** - Always check what Claude created
4. **Iterate** - Build complexity step by step
5. **Save successful prompts** - Reuse what works
6. **Use templates** - Consistent structure every time

---

**Keep this cheat sheet handy and refer to it often!**

*For CLI commands, see [cli-commands.md](./cli-commands.md)*

---

**Version 1.0** | Created for Claude Code 101 Workshop | December 2024
