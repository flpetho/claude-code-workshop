# Quick Tech Stack Guide
*The essential technologies you need to start building*

## 🚀 The Default Stack (Start Here)

Tell Claude Code you're using this stack:

```
"I'm building a web app using:
- Next.js 14 with TypeScript
- Tailwind CSS
- shadcn/ui for components
- Supabase for database and auth
- Vercel for deployment"
```

**Why this stack?**
- All free tiers to start
- Works together seamlessly
- Most beginner-friendly
- Huge community support
- Claude Code knows it well

---

## 📦 Essential Technologies (Top 10)

### 1. **Next.js** - Your Framework
**What**: Full-stack React framework
**Why**: Handles routing, server-side rendering, API routes
**Setup**: `npx create-next-app@latest --typescript --tailwind --app`

### 2. **TypeScript** - Type Safety
**What**: JavaScript with types
**Why**: Catches bugs before they happen
**Setup**: Included in Next.js setup above

### 3. **Tailwind CSS** - Styling
**What**: Utility-first CSS framework
**Why**: Style without leaving your HTML
**Setup**: Included in Next.js setup above

### 4. **shadcn/ui** - UI Components
**What**: Copy-paste component library
**Why**: Beautiful, accessible, customizable
**Setup**: `npx shadcn-ui@latest init`

### 5. **Supabase** - Database + Auth
**What**: Postgres database + authentication + storage
**Why**: Everything you need in one service
**Setup**: Create account at [supabase.com](https://supabase.com)

### 6. **Clerk** - Authentication (Alternative)
**What**: Complete auth solution with UI
**Why**: Easier than Supabase auth, beautiful
**Setup**: `npm install @clerk/nextjs`

### 7. **Vercel** - Deployment
**What**: Cloud platform for Next.js
**Why**: Deploy in 30 seconds, free tier
**Setup**: Connect GitHub at [vercel.com](https://vercel.com)

### 8. **react-hook-form + zod** - Forms
**What**: Form library + validation
**Why**: Professional forms made easy
**Setup**: `npm install react-hook-form zod @hookform/resolvers`

### 9. **TanStack Query** - Data Fetching
**What**: Server state management
**Why**: Handles loading, caching, errors automatically
**Setup**: `npm install @tanstack/react-query`

### 10. **Sentry** - Error Tracking
**What**: Monitors errors in production
**Why**: Know when things break before users complain
**Setup**: Free tier at [sentry.io](https://sentry.io)

---

## 🎯 When You Need More

### File Uploads
**Use**: uploadthing
**Setup**: `npm install uploadthing @uploadthing/react`

### Payments
**Use**: Stripe
**Setup**: `npm install stripe @stripe/stripe-js`

### Email
**Use**: Resend
**Setup**: `npm install resend`

### Drag-and-Drop
**Use**: @dnd-kit
**Setup**: `npm install @dnd-kit/core @dnd-kit/sortable`

### Rich Text Editor
**Use**: Tiptap
**Setup**: `npm install @tiptap/react @tiptap/starter-kit`

### Charts
**Use**: Recharts
**Setup**: `npm install recharts`

### Data Tables
**Use**: TanStack Table
**Setup**: `npm install @tanstack/react-table`

---

## 🎨 Add shadcn/ui Components

```bash
# Add components as you need them
npx shadcn-ui@latest add button
npx shadcn-ui@latest add form
npx shadcn-ui@latest add input
npx shadcn-ui@latest add dialog
npx shadcn-ui@latest add table
npx shadcn-ui@latest add card

# Or add multiple at once
npx shadcn-ui@latest add button form input dialog
```

---

## ⚠️ Never Build These Yourself

Don't even think about building:
- ❌ Authentication system
- ❌ Payment processing
- ❌ Email delivery
- ❌ File uploads to your server
- ❌ Drag-and-drop from scratch
- ❌ Rich text editor
- ❌ Search engine

Always use a library or service.

---

## 💰 Budget Reality Check

### Free Tier (0-100 users)
- Next.js: Free
- Supabase: Free (500MB, 50k auth users)
- Vercel: Free (100GB bandwidth)
- Clerk: Free (10k users)
- **Total: $0/month**

### Growing (100-1000 users)
- Supabase Pro: $25
- Vercel Pro: $20
- Clerk Pro: $25
- uploadthing: $20
- **Total: ~$90/month**

### Scale (1000+ users)
- Budget $200-500+/month
- All services on paid plans

---

## 🚦 First-Time Setup Checklist

Day 1:
- [ ] Create Next.js app with TypeScript and Tailwind
- [ ] Initialize shadcn/ui
- [ ] Create GitHub repo and push
- [ ] Deploy to Vercel (connect GitHub)
- [ ] Create Supabase project

Day 2:
- [ ] Add authentication (Clerk or Supabase)
- [ ] Set up environment variables
- [ ] Add first shadcn/ui components

Day 3+:
- [ ] Add features based on your PRD
- [ ] Install libraries as needed
- [ ] Test frequently

---

## 📚 Quick Start Commands

```bash
# Create project
npx create-next-app@latest my-app --typescript --tailwind --app
cd my-app

# Add shadcn/ui
npx shadcn-ui@latest init

# Add common components
npx shadcn-ui@latest add button form input card dialog

# Install form handling
npm install react-hook-form zod @hookform/resolvers

# Install data fetching
npm install @tanstack/react-query

# Run dev server
npm run dev
```

---

## 🤖 Tell Claude Code Your Stack

Save this in `CLAUDE.md`:

```markdown
# Tech Stack

## Framework
- Next.js 14 (App Router)
- TypeScript
- Tailwind CSS

## UI
- shadcn/ui components
- Radix UI primitives

## Backend
- Supabase (Database + Auth)
- Vercel deployment

## Key Libraries
- react-hook-form + zod (forms)
- TanStack Query (data fetching)
- [Add others as you use them]

## Project Structure
[Describe your folder organization]
```

Claude Code will read this and always use the right technologies!

---

## 🆘 When Something Doesn't Work

1. **Check the official docs** first (link at bottom)
2. **Ask Claude Code**: "I'm getting [error]. Help me fix it."
3. **Include context**: Paste the error message
4. **Check versions**: Make sure you have latest versions

---

## 📖 Essential Documentation

- [Next.js Docs](https://nextjs.org/docs)
- [shadcn/ui](https://ui.shadcn.com)
- [Tailwind CSS](https://tailwindcss.com/docs)
- [Supabase Docs](https://supabase.com/docs)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)

---

**Want more options?** See the [complete Tech Stack Reference](tech-stack-reference.md) for alternatives and advanced choices.

---

*Remember: Ship first, optimize later. This stack gets you to production fast.*

*Last updated: January 2026*
