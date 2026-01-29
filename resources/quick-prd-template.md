# Quick PRD Template
*One-page planning document for your project*

Copy this template, fill it out, and save as `PRD.md` in your project folder. Claude Code can read it and help you build!

---

## Project: [Your Project Name]

**Created**: [Date]
**Target Launch**: [Date or timeframe]

---

## 🎯 The Problem

**Who has this problem?**
[Be specific: "UX researchers who..." not "everyone who..."]

**What's the pain?**
[What's frustrating/time-consuming/impossible today?]

**How are they solving it now?**
[Manual process? Different tool? Not solving it?]

---

## 💡 The Solution

**One-sentence pitch:**
[Project Name] helps [target users] [accomplish goal] by [unique approach]

**Core value:**
[What's the ONE thing that makes this useful?]

---

## ✅ MVP Features (Build These First)

### Week 1-2: Must Have
- [ ] **[Feature 1]**: [Specific description]
  - User story: As a [user type], I want to [action] so that [benefit]
  - Success: [How you know it works]

- [ ] **[Feature 2]**: [Specific description]
  - User story: As a [user type], I want to [action] so that [benefit]
  - Success: [How you know it works]

- [ ] **[Feature 3]**: [Specific description]
  - User story: As a [user type], I want to [action] so that [benefit]
  - Success: [How you know it works]

### Week 3-4: Should Have
- [ ] **[Feature 4]**: [Description]
- [ ] **[Feature 5]**: [Description]

### Later: Nice to Have
- [ ] **[Feature 6]**: [Description]
- [ ] **[Feature 7]**: [Description]

---

## 👥 Users & Flows

**Primary user**: [Detailed description]
- Demographics: [Age, role, tech comfort, etc.]
- Goals: [What they want to accomplish]
- Frustrations: [What blocks them today]

**Key user flow:**
1. User arrives at [entry point]
2. User [action 1]
3. User [action 2]
4. User achieves [outcome]

---

## 🔧 Technical Requirements

### Must Have
- **User Accounts**: Yes / No
- **Data Storage**: [What needs to be saved?]
- **File Uploads**: Yes / No - [What types?]
- **Search**: Yes / No
- **Real-time Features**: Yes / No - [What?]
- **Notifications**: Yes / No - [Email/In-app/Push?]
- **Payments**: Yes / No - [One-time/Subscription?]

### Complexity Checklist
Mark all that apply (each adds complexity):
- [ ] User authentication
- [ ] File uploads
- [ ] Payments
- [ ] Real-time features
- [ ] Complex forms (multi-step, conditional)
- [ ] Data tables (sorting, filtering)
- [ ] Drag-and-drop
- [ ] Third-party integrations
- [ ] Multiple user roles/permissions

**Total checked**: ___
- 0-2: Simple (you can build this!)
- 3-5: Moderate (expect some challenges)
- 6+: Complex (consider getting help)

---

## 🎨 Design Requirements

**Style**: [Modern/Minimal/Playful/Corporate/etc.]

**Key screens** (in priority order):
1. **[Screen name]**: [What it shows/does]
2. **[Screen name]**: [What it shows/does]
3. **[Screen name]**: [What it shows/does]

**Components needed**:
- [ ] Forms (simple/complex/multi-step)
- [ ] Tables (with sorting/filtering?)
- [ ] Cards/Lists
- [ ] Modals/Dialogs
- [ ] Charts/Visualizations
- [ ] Navigation (top/side/both)
- [ ] Other: [List any special needs]

---

## 🚀 Tech Stack

Based on [Tech Stack Reference](tech-stack-reference.md):

**Framework**: Next.js 14 + TypeScript
**Styling**: Tailwind CSS + shadcn/ui
**Database**: [Supabase / Vercel Postgres / Other]
**Auth**: [Clerk / Supabase Auth / Other]
**Hosting**: Vercel

**Additional services** (based on features):
- Forms: react-hook-form + zod
- [Other libraries based on complexity checklist above]

---

## 📊 Success Metrics

How will you know it's working?

- [ ] **Metric 1**: [Specific, measurable goal]
- [ ] **Metric 2**: [Specific, measurable goal]
- [ ] **Metric 3**: [Specific, measurable goal]

**User feedback**: [How will you collect feedback?]

---

## ⚠️ Risks & Constraints

**Technical risks:**
- [What might go wrong?]

**Time constraints:**
- [What's the realistic timeline?]

**Budget constraints:**
- **Development time**: [Estimated hours]
- **Monthly costs**: [Estimated services cost]

---

## 🎯 Out of Scope (NOT Building)

Be explicit about what you're NOT doing:
- ❌ [Feature/complexity that's deferred]
- ❌ [Platform you're not supporting]
- ❌ [Integration that's not included]

---

## 📅 Implementation Plan

### Week 1
- [ ] Setup: Create Next.js project, add Tailwind, initialize shadcn/ui
- [ ] Auth: Add authentication with [service]
- [ ] Database: Set up database schema
- [ ] Build: [Core feature 1]

### Week 2
- [ ] Build: [Core feature 2]
- [ ] Build: [Core feature 3]
- [ ] Polish: Error handling, loading states

### Week 3-4
- [ ] Build: Should-have features
- [ ] Test: User testing with 3-5 people
- [ ] Deploy: Push to production

---

## 🤖 Using This PRD with Claude Code

Save this as `PRD.md` in your project folder.

**Start each session with:**
```
"Read PRD.md. Let's build [specific feature from MVP list].

Tech stack:
- Next.js 14 with TypeScript
- Tailwind CSS + shadcn/ui
- [Your database choice]
- [Your auth choice]

Create [specific component/feature]."
```

**As you build:**
- Check off features as completed
- Update "Out of Scope" as you discover constraints
- Add notes about technical decisions

---

## 📝 Notes & Decisions

[Use this section to document:]
- Why you chose X over Y
- Technical challenges encountered
- Changes from original plan
- Things you learned

---

## 🆘 Red Flags to Avoid

If Claude Code (or any AI) suggests these, STOP and reconsider:

❌ **"Let's build our own authentication"** → Use Clerk/Supabase Auth
❌ **"Store files in the database"** → Use cloud storage (uploadthing/Supabase Storage)
❌ **"Handle payments directly"** → Use Stripe
❌ **"Build a custom drag-and-drop"** → Use @dnd-kit
❌ **"Create our own rich text editor"** → Use Tiptap
❌ **"Send emails from your server"** → Use email service (Resend)

Always use existing libraries/services for complex features!

---

## ✅ Ready to Build?

- [ ] PRD is complete and specific
- [ ] MVP scope is realistic (2-4 weeks)
- [ ] Tech stack is chosen
- [ ] Services budget is approved ($0-50/mo to start)
- [ ] Have design mockups or wireframes (even rough ones)
- [ ] Claude Code is installed and ready

**Let's build!** 🚀

---

**Need more detail?** See the [complete PRD Guide](prd-guide.md) with interview questions and examples.

---

*Template version 1.0 - January 2026*
