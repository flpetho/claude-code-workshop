# Claude Code Prompts for Building
*Copy-paste prompts for common development tasks*

## 🎯 How to Use These Prompts

1. **Start every Claude Code session** by stating your tech stack
2. **Copy the prompt** that matches what you need
3. **Customize** the brackets [like this] with your specifics
4. **Let Claude Code build** - it will create files and write code

---

## 🚀 Starting a New Project

### Initial Project Setup

```
Create a new Next.js 14 project with:
- TypeScript
- Tailwind CSS
- App Router
- ESLint and Prettier configured
- Basic folder structure (app, components, lib, types)
- README with setup instructions
```

### Add shadcn/ui

```
Initialize shadcn/ui in this project with:
- Default configuration
- Add these components: button, input, form, card, dialog
- Create a demo page showing all components
```

### Project Context File

```
Create a CLAUDE.md file documenting:
- Tech stack: Next.js 14, TypeScript, Tailwind, shadcn/ui
- Project structure
- Key libraries we're using
- Coding conventions
- [Add any project-specific context]
```

---

## 🔐 Authentication

### Add Clerk Authentication

```
Set up Clerk authentication with:
- Clerk provider in root layout
- Sign-in and sign-up pages
- Protected routes middleware
- User button component
- Environment variables documentation
```

### Add Supabase Authentication

```
Set up Supabase authentication with:
- Supabase client configuration
- Auth provider component
- Login/signup forms using shadcn/ui
- Protected route component
- Email/password and social auth options
```

---

## 💾 Database Setup

### Supabase Database Schema

```
Create a Supabase database schema for [your feature]:
- [Table 1] with columns: [list fields]
- [Table 2] with columns: [list fields]
- Foreign key relationships
- Row Level Security policies
- TypeScript types for all tables
```

### Prisma Setup

```
Set up Prisma ORM with:
- Schema for [your database tables]
- Database connection configuration
- Prisma Client setup
- TypeScript types generation
- Basic CRUD functions
```

---

## 📝 Forms

### Basic Form with Validation

```
Create a form for [purpose] using react-hook-form and zod with:
- Fields: [list field names and types]
- Validation rules: [describe requirements]
- shadcn/ui form components
- Error messages
- Loading state during submission
- Success/error toast notifications
```

### Multi-Step Form

```
Create a multi-step form for [purpose] with:
- Step 1: [fields]
- Step 2: [fields]
- Step 3: [fields]
- Progress indicator
- Back/Next navigation
- Data persistence between steps
- Final submission handler
```

---

## 🎨 UI Components

### Data Display Component

```
Create a [component name] component that:
- Displays [type of data]
- Uses shadcn/ui card components
- Shows loading skeleton
- Handles empty state
- Includes error boundary
- Mobile responsive
```

### Modal/Dialog Component

```
Create a modal dialog for [purpose] that:
- Opens on [trigger action]
- Contains [form/content description]
- Uses shadcn/ui dialog
- Handles close on success
- Mobile-friendly
```

### Dashboard Layout

```
Create a dashboard layout with:
- Sidebar navigation with [menu items]
- Top header with user menu
- Main content area
- Mobile responsive (hamburger menu)
- Uses shadcn/ui components
```

---

## 📊 Data Fetching

### API Route with TanStack Query

```
Create an API route and query hook for [purpose]:
- API route: app/api/[endpoint]/route.ts
- Fetches [data description]
- Error handling
- TanStack Query hook with:
  - Loading state
  - Error state
  - Caching
  - Automatic refetch
```

### Server Component with Database

```
Create a server component that:
- Fetches [data] from Supabase
- Displays using [layout/component]
- Handles errors gracefully
- Shows loading state
- Passes data to client components
```

---

## 🎯 Feature-Specific

### File Upload with uploadthing

```
Set up file upload using uploadthing:
- Upload endpoint for [file types]
- Upload button component
- Progress indicator
- File preview after upload
- Delete functionality
- Store file URLs in database
```

### Drag-and-Drop List

```
Create a sortable list using @dnd-kit where users can:
- Drag items to reorder
- Visual feedback during drag
- Save order to database
- Mobile-friendly (touch support)
- Smooth animations
```

### Rich Text Editor

```
Add a Tiptap editor for [purpose] with:
- Basic formatting (bold, italic, lists)
- Headings
- Links
- Code blocks
- Save content as HTML or JSON
- shadcn/ui styled toolbar
```

### Data Table

```
Create a data table using TanStack Table for [data type]:
- Columns: [list columns]
- Sorting on [columns]
- Filtering by [fields]
- Pagination (25 per page)
- Mobile responsive
- shadcn/ui table styling
```

### Chart/Visualization

```
Create a [chart type] using Recharts showing:
- Data from [source]
- X-axis: [data]
- Y-axis: [data]
- Interactive tooltips
- Responsive sizing
- Color scheme matching theme
```

---

## 💰 Payments (Stripe)

### Stripe Checkout Setup

```
Set up Stripe payments with:
- Stripe API key configuration
- Checkout session endpoint
- Product/price IDs for [products]
- Success page
- Cancel page
- Webhook handler for payment confirmation
```

### Subscription Management

```
Create subscription management with Stripe:
- Subscribe button for [plan]
- Portal link for managing subscription
- Check subscription status
- Display current plan
- Upgrade/downgrade options
```

---

## ✉️ Email

### Transactional Email with Resend

```
Set up email sending with Resend:
- Email template for [purpose]
- React Email component
- Send function in API route
- Error handling
- Environment variables
```

### Welcome Email Flow

```
Create a welcome email flow that:
- Triggers on user signup
- Sends using Resend
- Uses React Email template
- Includes [welcome content]
- Has proper error handling
```

---

## 🔍 Search

### Basic Search

```
Add search functionality for [content type]:
- Search input component
- Filter [data source] by [fields]
- Display results
- Handle no results state
- Debounce input (300ms)
```

### Algolia Search Integration

```
Set up Algolia search for [content]:
- Index configuration
- Search UI component
- InstantSearch integration
- Facets for [categories]
- Pagination
```

---

## 🧪 Testing & Quality

### Unit Tests Setup

```
Set up Vitest for testing:
- Configuration file
- Example tests for [component]
- Mock Supabase/API calls
- Run test script in package.json
```

### Error Monitoring (Sentry)

```
Add Sentry error tracking:
- Initialize Sentry client
- Error boundary component
- Capture API errors
- Environment configuration
- Sourcemaps setup
```

---

## 📱 Mobile & Responsive

### Make Component Responsive

```
Make this [component name] responsive:
- Desktop: [describe layout]
- Tablet: [describe layout]
- Mobile: [describe layout]
- Use Tailwind breakpoints
- Test on different screen sizes
```

### Add Mobile Navigation

```
Convert desktop navigation to mobile-friendly:
- Hamburger menu
- Slide-out drawer
- Close on route change
- Smooth animations
- Accessibility (keyboard nav)
```

---

## 🔧 Optimization

### Add Loading States

```
Improve UX with loading states for:
- [Component/page name]
- Skeleton loaders using shadcn/ui
- Suspense boundaries
- Loading spinners for actions
```

### Performance Optimization

```
Optimize performance for [page/component]:
- Add React.memo where needed
- Optimize images with next/image
- Lazy load [components]
- Reduce bundle size
- Add performance monitoring
```

---

## 🚀 Deployment

### Prepare for Production

```
Prepare app for production:
- Add error boundaries everywhere
- Add loading states to all async operations
- Configure environment variables
- Set up proper TypeScript types
- Add basic SEO metadata
- Create deployment checklist
```

### Vercel Deployment Setup

```
Configure for Vercel deployment:
- Environment variables documentation
- Build configuration
- Preview deployments setup
- Production domain configuration
- Deployment workflow documentation
```

---

## 🐛 Debugging

### Debug This Error

```
I'm getting this error:
[paste full error message]

In this file:
[file path and relevant code]

Using:
- [your tech stack]

Help me:
1. Understand what's wrong
2. Fix the error
3. Prevent it in the future
```

### Code Review

```
Review this [component/feature]:
[paste code or file path]

Check for:
- Security issues
- Performance problems
- Best practices
- TypeScript type safety
- Accessibility
- Error handling

Suggest improvements.
```

---

## 🎓 Learning & Documentation

### Explain This Code

```
Explain what this code does and why:
[paste code]

Break it down:
- What problem does it solve?
- How does it work?
- What are the key concepts?
- Any gotchas I should know?
```

### Add Documentation

```
Add comprehensive documentation to:
[file path or component name]

Include:
- JSDoc comments
- Usage examples
- Props/parameters documentation
- Return types
- Edge cases
```

---

## 💡 Pro Tips for Better Prompts

### Be Specific
❌ "Create a form"
✅ "Create a form for user registration with email, password, name fields using react-hook-form and zod validation"

### Include Context
❌ "Add authentication"
✅ "Add Clerk authentication to this Next.js 14 app. I already have Clerk installed. Create sign-in/sign-up pages and protect /dashboard routes"

### State Your Stack
❌ "Make this component"
✅ "Using Next.js 14, TypeScript, Tailwind, and shadcn/ui, create [component]"

### Request Completeness
❌ "Show me the main part"
✅ "Give me the complete component code including imports, types, and export"

### Ask for Explanations
Add: "Explain what this code does and where to place the files"

---

## 🔄 Iterative Development

### Improve Existing Feature

```
Improve this [feature]:
[describe current state]

Add:
- [enhancement 1]
- [enhancement 2]
- [enhancement 3]

Maintain:
- Current functionality
- Existing data
- User experience
```

### Refactor for Clarity

```
Refactor this code to be:
- More readable
- Better typed
- Follow Next.js best practices
- More maintainable

[paste code or file path]
```

---

## 📚 Related Resources

- [Quick Tech Stack Guide](quick-tech-stack.md) - Choose your technologies
- [Quick PRD Template](quick-prd-template.md) - Plan before building
- [Tech Stack Reference](tech-stack-reference.md) - Comprehensive technology guide
- [PRD Guide](prd-guide.md) - Detailed project planning

---

**Remember**: Claude Code works best when you:
1. State your tech stack upfront
2. Be specific about requirements
3. Iterate in small steps
4. Test frequently

**Happy building!** 🚀

---

*Last updated: January 2026*
