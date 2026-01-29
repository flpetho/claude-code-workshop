# Technology Stack Reference Guide
*A comprehensive guide to proven technologies for building modern applications*

## 🤖 Using This Guide with Claude Code

**Tell Claude Code your stack upfront:**
```
"I'm building a [type of app] using:
- Next.js 14 with TypeScript
- Tailwind CSS and shadcn/ui
- Supabase for database and auth
- Vercel for deployment

Create [specific feature]..."
```

**Why this matters:** Claude Code generates better code when it knows your tech stack. Reference this guide to choose your stack, then include it in every Claude Code session.

**Pro tip:** Add your stack to `CLAUDE.md` in your project root so Claude Code always remembers it.

---

## 🎯 How to Use This Guide
- **Green Badge 🟢**: Production-ready, highly recommended
- **Yellow Badge 🟡**: Good but with considerations
- **Red Badge 🔴**: Avoid or use with extreme caution
- **Cost Indicators**: 💰 Free | 💰💰 <$50/mo | 💰💰💰 <$200/mo | 💰💰💰💰 Enterprise
- **Last Updated**: January 2026

---

## 📦 Frontend Frameworks

> **What are Frontend Frameworks?**  
> Frontend frameworks are the foundation of your web application - think of them as the skeleton and nervous system of your app. They determine how your app is built, how pages are served to users, how fast it loads, and how it handles user interactions. Choosing the right framework is like choosing between building a house with wood, steel, or concrete - each has its strengths.
> 
> **Why do I need one?**  
> You need a framework to organize your code, handle routing between pages, manage how data flows through your app, and optimize performance. Without a framework, you'd be writing everything from scratch, which is like trying to build a car by first mining the iron ore.
>
> **When to think about this:**  
> This is literally the first decision when starting any web project. It affects everything else you'll build.

### Full-Stack Frameworks
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Next.js 14+** | 🟢 | 💰 | React framework with server-side rendering, API routes, and full-stack capabilities | Default choice for new projects - handles everything |
| **Remix** | 🟢 | 💰 | Full-stack framework focused on web standards and progressive enhancement | Heavy data loading, complex routing needs |
| **SvelteKit** | 🟡 | 💰 | Full-stack framework for Svelte with great performance | If team knows Svelte, wants smaller bundle sizes |
| **Nuxt 3** | 🟢 | 💰 | Vue.js full-stack framework with great DX | If team prefers Vue ecosystem |
| **T3 Stack** | 🟢 | 💰 | Next.js + TypeScript + Tailwind + tRPC + Prisma starter | Type-safe full-stack apps, great starting point |
| **Astro** | 🟢 | 💰 | Content-focused framework with islands architecture | Content sites, blogs, documentation |

### SPA Frameworks
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Vite + React** | 🟢 | 💰 | Lightning-fast build tool with React | Pure client-side SPAs, build tools |
| **Create React App** | 🔴 | 💰 | Deprecated React starter | Never - unmaintained, use Vite instead |

---

## 🎨 UI Component Libraries

> **What are UI Component Libraries?**  
> These are pre-built, reusable pieces of user interface - like LEGO blocks for your app. Instead of coding a button, dropdown, modal, or date picker from scratch, you use professionally designed and tested components. They handle accessibility, browser compatibility, and edge cases you wouldn't think of.
>
> **Why do I need one?**  
> Building UI components from scratch is like making your own furniture when IKEA exists. A simple dropdown needs to handle keyboard navigation, screen readers, click-outside, mobile touch, and dozens of edge cases. These libraries have already solved these problems.
>
> **When to think about this:**  
> Right after choosing your framework. This choice affects your app's look, feel, and development speed. As a UX designer, this is probably the most visible and impactful choice you'll make.

### Component Systems
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **shadcn/ui** | 🟢 | 💰 | Copy-paste component library using Radix + Tailwind | Maximum flexibility, you own the code, modern design |
| **Ant Design** | 🟢 | 💰 | Enterprise-focused component library with everything included | Complex business applications, need everything |
| **Material-UI (MUI)** | 🟢 | 💰/💰💰💰 | Google's Material Design for React | When Material Design is required |
| **Chakra UI** | 🟡 | 💰 | Modular, accessible component library | Good but development slowed |
| **Mantine** | 🟢 | 💰 | Full-featured library with 100+ components | Rapid development, includes forms, dates, etc. |
| **NextUI** | 🟢 | 💰 | Beautiful, modern React UI library | Great animations, modern design |
| **Tremor** | 🟢 | 💰 | Dashboard-focused components | Analytics dashboards, data visualization |
| **Arco Design** | 🟡 | 💰 | ByteDance's enterprise library | Alternative to Ant Design |

### Headless UI Libraries
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Radix UI** | 🟢 | 💰 | Unstyled, accessible component primitives | Building custom design systems, used by shadcn |
| **Headless UI** | 🟢 | 💰 | Unstyled components by Tailwind team | With Tailwind CSS |
| **React Aria** | 🟢 | 💰 | Adobe's accessibility-first components | Maximum accessibility requirements |
| **Ark UI** | 🟢 | 💰 | Universal headless components | Multi-framework support |

---

## 🎯 Specialized UI Libraries

> **What are Specialized UI Libraries?**  
> These are libraries that solve specific UI challenges exceptionally well. While component libraries give you general building blocks, specialized libraries handle complex interactions like drag-and-drop, data tables, rich text editing, or complex forms.
>
> **Why do I need them?**  
> Some UI patterns are deceptively complex. Your drag-and-drop that seems "simple" needs to handle mouse events, touch events, keyboard navigation, accessibility announcements, auto-scrolling, collision detection, and more. One library prevents weeks of debugging.
>
> **When to think about this:**  
> Whenever your PRD includes any complex interaction. If you're thinking "users should be able to..." followed by drag, sort, edit rich text, upload files, etc., you need a specialized library.

### Drag and Drop
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **@dnd-kit** | 🟢 | 💰 | Modern, accessible, performant drag-and-drop | First choice for any drag-drop needs |
| **react-beautiful-dnd** | 🟡 | 💰 | Atlassian's beautiful DnD library | Stable but in maintenance mode |
| **SortableJS** | 🟢 | 💰 | Framework-agnostic sorting library | Non-React projects |
| **react-sortable-hoc** | 🔴 | 💰 | HOC-based drag and drop | Outdated patterns, don't use |

### Data Tables
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **TanStack Table** | 🟢 | 💰 | Headless table library with all features | Complex data tables, sorting, filtering |
| **AG-Grid** | 🟢 | 💰/💰💰💰💰 | Enterprise data grid with Excel features | Excel-like functionality needed |
| **DataTables** | 🟡 | 💰 | jQuery-based table plugin | Legacy projects only |

### Forms
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **react-hook-form** | 🟢 | 💰 | Performant forms with minimal re-renders | Always use for forms |
| **zod** | 🟢 | 💰 | TypeScript-first schema validation | Always pair with react-hook-form |
| **Formik** | 🟡 | 💰 | Popular form library | Older, more verbose alternative |
| **React Final Form** | 🟡 | 💰 | Framework-agnostic forms | Specific requirements |

### Rich Text Editors
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Tiptap** | 🟢 | 💰/💰💰💰 | Headless, extensible rich text editor | Modern editor needs, great DX |
| **Lexical** | 🟢 | 💰 | Meta's extensible text editor framework | Complex editor requirements |
| **Slate** | 🟡 | 💰 | Customizable framework for rich text | Very custom needs |
| **Quill** | 🟡 | 💰 | Simple rich text editor | Basic needs, older projects |
| **TinyMCE** | 🟡 | 💰/💰💰💰 | Classic WYSIWYG editor | Legacy support |

### Charts & Visualizations
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Recharts** | 🟢 | 💰 | Composable React charts | Most charting needs |
| **Chart.js** | 🟢 | 💰 | Simple, flexible JavaScript charts | Basic charts |
| **D3.js** | 🟢 | 💰 | Low-level visualization library | Custom/complex visualizations |
| **Visx** | 🟢 | 💰 | Airbnb's visualization primitives | D3 power with React |
| **Apache ECharts** | 🟢 | 💰 | Comprehensive charting library | Complex dashboards |
| **Tremor** | 🟢 | 💰 | Dashboard components with charts | Quick dashboards |
| **Nivo** | 🟢 | 💰 | Responsive charts with good defaults | Alternative to Recharts |

### File Upload
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **uploadthing** | 🟢 | 💰/💰💰 | Type-safe uploads for Next.js | Easiest solution for Next.js |
| **Filepond** | 🟢 | 💰 | Flexible file upload library | Framework agnostic |
| **Uppy** | 🟢 | 💰 | Modular file uploader | Complex upload needs |
| **react-dropzone** | 🟢 | 💰 | Drag-drop file uploads | Simple drag-drop areas |

---

## 🎭 Styling Solutions

> **What are Styling Solutions?**  
> These determine how you write and organize the visual styles (colors, spacing, typography, layouts) of your app. It's the difference between finger-painting and using professional brushes - both create art, but one is far more efficient and maintainable.
>
> **Why do I need one?**  
> CSS without a system becomes chaos - styles conflict, specificity wars happen, and changes break unrelated components. Styling solutions provide structure, prevent conflicts, and enable consistent design systems.
>
> **When to think about this:**  
> Immediately after choosing your component library. Many components require specific styling solutions (shadcn needs Tailwind, MUI has its own system).

### CSS Frameworks & Tools
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Tailwind CSS** | 🟢 | 💰 | Utility-first CSS framework | Default choice, rapid development |
| **CSS Modules** | 🟢 | 💰 | Locally scoped CSS | Component-specific styles |
| **styled-components** | 🟡 | 💰 | CSS-in-JS with tagged templates | If team prefers CSS-in-JS |
| **Emotion** | 🟡 | 💰 | Performant CSS-in-JS | Alternative to styled-components |
| **Vanilla Extract** | 🟢 | 💰 | Zero-runtime CSS-in-TypeScript | Type-safe styling |
| **UnoCSS** | 🟢 | 💰 | Instant atomic CSS engine | Faster Tailwind alternative |
| **Stitches** | 🟡 | 💰 | CSS-in-JS with great DX | Good but less maintained |

### Animation Libraries
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Framer Motion** | 🟢 | 💰 | Production-ready React animation library | Complex animations, gestures |
| **React Spring** | 🟢 | 💰 | Spring-physics based animations | Natural feeling animations |
| **Auto-Animate** | 🟢 | 💰 | Zero-config animation utility | Dead simple animations |
| **Lottie React** | 🟢 | 💰 | After Effects animations in React | Designer-created animations |
| **GSAP** | 🟢 | 💰/💰💰💰 | Professional-grade animation | Complex timeline animations |
| **Rive** | 🟢 | 💰/💰💰💰 | Interactive animations platform | Interactive vector animations |

---

## 🗄️ State Management

> **What is State Management?**  
> State is your app's memory - what's in the shopping cart, is the user logged in, what page are they on. State management is how you organize and update this information across your entire application without chaos.
>
> **Why do I need it?**  
> Without state management, you're playing telephone - passing data through 10 components to reach the one that needs it. Components show different data, updates get lost, and debugging becomes a nightmare.
>
> **When to think about this:**  
> As soon as you have data that multiple components need to share, or when you find yourself passing props through multiple levels just to reach a deeply nested component.

### Client State
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Zustand** | 🟢 | 💰 | Lightweight (~8KB) state management | First choice for client state |
| **Valtio** | 🟢 | 💰 | Proxy-based state management | Simple, intuitive API |
| **Jotai** | 🟢 | 💰 | Atomic approach to state | Complex state dependencies |
| **Redux Toolkit** | 🟡 | 💰 | Modern Redux with less boilerplate | Only if Redux required |
| **MobX** | 🟡 | 💰 | Observable-based state | Specific reactive needs |
| **XState** | 🟢 | 💰 | State machines for JavaScript | Complex state logic |
| **Context API** | 🟢 | 💰 | Built-in React solution | Simple, small state needs |

### Server State & Data Fetching
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **TanStack Query** | 🟢 | 💰 | Powerful async state management | Always for server state |
| **SWR** | 🟢 | 💰 | Data fetching with caching by Vercel | Simpler alternative |
| **tRPC** | 🟢 | 💰 | End-to-end typesafe APIs | TypeScript full-stack |
| **Apollo Client** | 🟡 | 💰 | GraphQL client with caching | If using GraphQL |

---

## 🔐 Authentication & Authorization

> **What is Authentication & Authorization?**  
> Authentication is verifying identity (checking ID at the door). Authorization is permissions (VIP vs general admission). Together, they control who can access your app and what they can do.
>
> **Why do I need it?**  
> Building auth yourself is like building your own bank vault - theoretically possible, but you'll miss critical security details. Professional services handle passwords, 2FA, social logins, session management, and security threats you don't know exist.
>
> **When to think about this:**  
> The moment your app needs user accounts. This is typically the second thing you set up (after the framework) because everything else depends on knowing who the user is.

### Authentication Services
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Clerk** | 🟢 | 💰/💰💰 | Complete auth with pre-built UI | Fastest to implement, best DX |
| **Supabase Auth** | 🟢 | 💰/💰💰 | Open source auth with RLS | Using Supabase stack |
| **Auth0** | 🟢 | 💰💰/💰💰💰💰 | Enterprise-grade auth platform | Enterprise requirements |
| **Firebase Auth** | 🟢 | 💰/💰💰 | Google's auth service | Google ecosystem |
| **NextAuth.js/Auth.js** | 🟢 | 💰 | Authentication library for Next.js | Custom requirements |
| **Kinde** | 🟢 | 💰/💰💰 | Modern auth platform | Good Clerk alternative |
| **Lucia** | 🟡 | 💰 | Simple, flexible auth library | Learning or full control |
| **AWS Cognito** | 🟡 | 💰💰 | AWS auth service | AWS ecosystem only |

---

## 💾 Databases & ORMs

> **What are Databases & ORMs?**  
> Databases are your app's permanent memory - where user profiles, posts, and data live forever. ORMs (Object-Relational Mapping) are translators that let developers work with databases using normal code instead of SQL.
>
> **Why do I need them?**  
> Without a database, your app has amnesia - everything disappears on refresh. ORMs prevent SQL injection attacks, provide type safety, and make database operations feel like regular JavaScript.
>
> **When to think about this:**  
> If your app needs to remember ANYTHING between sessions, you need a database. This is usually the third decision (after framework and auth).

### Databases
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Supabase** | 🟢 | 💰/💰💰 | Postgres + Auth + Realtime + Storage | Best all-in-one solution |
| **Vercel Postgres** | 🟢 | 💰/💰💰 | Serverless Postgres by Vercel | With Vercel deployment |
| **Neon** | 🟢 | 💰/💰💰 | Serverless Postgres with branching | Modern Postgres hosting |
| **PlanetScale** | 🟢 | 💰/💰💰 | Serverless MySQL with branching | MySQL with great DX |
| **Turso** | 🟢 | 💰/💰💰 | Edge SQLite database | Edge/embedded needs |
| **MongoDB Atlas** | 🟡 | 💰/💰💰 | Managed MongoDB | Document database needs |
| **Railway Postgres** | 🟢 | 💰💰 | Simple Postgres hosting | Good for beginners |
| **Upstash Redis** | 🟢 | 💰 | Serverless Redis | Caching, rate limiting |

### ORMs & Query Builders  
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Prisma** | 🟢 | 💰 | Next-gen ORM with great DX | Default choice, best DX |
| **Drizzle** | 🟢 | 💰 | TypeScript ORM, SQL-like | Lighter than Prisma |
| **TypeORM** | 🟡 | 💰 | Mature, feature-rich ORM | Legacy projects |
| **Kysely** | 🟢 | 💰 | Type-safe SQL query builder | SQL control with types |
| **Knex.js** | 🟡 | 💰 | SQL query builder | Lower level control |

---

## ☁️ File Storage & CDN

> **What is File Storage?**  
> Cloud storage for user uploads - images, videos, documents. Think of it as Google Drive for your app. CDNs (Content Delivery Networks) serve these files from servers near your users for fast loading.
>
> **Why do I need it?**  
> Storing files in your database is like putting photos in Excel - technically possible but terrible. Cloud storage handles upload, security, global distribution, image resizing, and prevents your server from crashing when someone uploads a 4K video.
>
> **When to think about this:**  
> The moment your PRD mentions "upload", "attach", "profile picture", or any file handling.

### Storage Services
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **uploadthing** | 🟢 | 💰/💰💰 | Type-safe uploads for Next.js | Easiest for Next.js |
| **Supabase Storage** | 🟢 | 💰/💰💰 | S3-compatible object storage | With Supabase |
| **Cloudinary** | 🟢 | 💰/💰💰💰 | Media management platform | Image/video optimization |
| **AWS S3** | 🟢 | 💰💰 | Industry standard object storage | Direct control, scale |
| **Vercel Blob** | 🟢 | 💰/💰💰 | Simple blob storage by Vercel | With Vercel |
| **ImageKit** | 🟢 | 💰/💰💰 | Real-time image optimization | Cloudinary alternative |
| **Firebase Storage** | 🟢 | 💰/💰💰 | Google's file storage | Firebase ecosystem |

---

## 💳 Payment Processing

> **What are Payment Services?**  
> These handle everything money-related - credit cards, subscriptions, refunds, invoices, taxes, and compliance. They're your app's cash register and accounting department combined.
>
> **Why do I need them?**  
> Handling payments yourself is ILLEGAL without PCI compliance certification. One bug could expose credit cards and bankrupt you. Payment services handle security, fraud, currency conversion, taxes, and regulations in every country.
>
> **When to think about this:**  
> The instant money is involved. Never try to build payment handling yourself - it's the fastest way to legal trouble.

### Payment Processors
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Stripe** | 🟢 | 2.9% + 30¢ | Complete payment infrastructure | Always first choice |
| **Stripe Checkout** | 🟢 | Included | Hosted payment page | Simplest implementation |
| **Paddle** | 🟢 | 5-7% | Merchant of Record | Handles taxes globally |
| **Lemon Squeezy** | 🟢 | 5% + 50¢ | MoR for digital products | Simple SaaS billing |
| **PayPal** | 🟡 | 2.9% + 30¢ | Alternative payment method | If users demand it |
| **Square** | 🟢 | 2.9% + 30¢ | Payment processing | Physical + online |

---

## 📧 Email Services

> **What are Email Services?**  
> Services that send automated emails from your app - welcome emails, password resets, notifications, newsletters. They ensure emails reach inboxes, not spam folders.
>
> **Why do I need them?**  
> Email delivery is surprisingly hard. You need to manage sender reputation, handle bounces, comply with spam laws, and format for 50+ email clients. One mistake and you're blacklisted.
>
> **When to think about this:**  
> Every app needs at least password reset emails. Don't use personal Gmail - these are specialized services for applications.

### Transactional Email
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Resend** | 🟢 | 💰/💰💰 | Modern email API with great DX | Best new choice |
| **React Email** | 🟢 | 💰 | Build emails with React | Use with any service |
| **SendGrid** | 🟢 | 💰/💰💰 | Twilio's email platform | High volume |
| **Postmark** | 🟢 | 💰💰 | Reliable transactional email | Focus on delivery |
| **Amazon SES** | 🟡 | 💰 | AWS email service | Cheapest at scale |
| **Loops** | 🟢 | 💰/💰💰 | Email for modern SaaS | Marketing + transactional |

---

## 🚀 Deployment & Hosting

> **What is Deployment & Hosting?**  
> Deployment is publishing your app to the internet. Hosting is where it lives and runs 24/7. Like the difference between moving into a house (deployment) and paying rent (hosting).
>
> **Why do I need it?**  
> Your app needs servers, domains, SSL certificates, and infrastructure. Hosting platforms handle servers, security, scaling, and keep your app running even at 3 AM on Christmas.
>
> **When to think about this:**  
> From day one - some frameworks work better with specific hosts. Also affects your budget (free to thousands per month).

### Hosting Platforms
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Vercel** | 🟢 | 💰/💰💰 | Best platform for Next.js | Default for Next.js |
| **Netlify** | 🟢 | 💰/💰💰 | Great for static sites | Static sites, SPAs |
| **Railway** | 🟢 | 💰💰 | Simple cloud platform | Full-stack apps |
| **Render** | 🟢 | 💰/💰💰 | Modern cloud platform | Heroku replacement |
| **Fly.io** | 🟢 | 💰💰 | Edge compute platform | Global distribution |
| **Cloudflare Pages** | 🟢 | 💰 | Fast edge hosting | Static sites |
| **AWS Amplify** | 🟡 | 💰💰 | AWS hosting platform | AWS ecosystem |

---

## 🔍 Search

> **What are Search Services?**  
> Intelligent search for your app - like having Google for your own content. They understand typos, synonyms, and intent, providing instant, relevant results.
>
> **Why do I need them?**  
> Database searches only find exact matches. Real search understands "iPhne" means "iPhone", searches across multiple fields, and ranks by relevance. Bad search loses users.
>
> **When to think about this:**  
> When you have more than ~100 items of anything that users need to find.

### Search Services
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Algolia** | 🟢 | 💰/💰💰💰 | Best-in-class search UX | Premium search experience |
| **Typesense** | 🟢 | 💰/💰💰 | Open source alternative | Self-hosted option |
| **Meilisearch** | 🟢 | 💰/💰💰 | Developer-friendly search | Simple search needs |
| **Fuse.js** | 🟢 | 💰 | Client-side fuzzy search | Small datasets (<1000) |
| **Postgres Full Text** | 🟡 | 💰 | Built-in Postgres search | Basic needs |

---

## 📊 Analytics & Monitoring

> **What are Analytics & Monitoring?**  
> Analytics shows how users behave - what they click, where they leave. Monitoring catches errors and performance issues. Together, they're your app's health dashboard.
>
> **Why do I need them?**  
> Without analytics, you're guessing what users want. Without error monitoring, you only know about bugs when users complain (95% just leave). These tools reveal what's working and what's broken.
>
> **When to think about this:**  
> Day one. You can't improve what you don't measure. Even MVPs need basic analytics and error tracking.

### Product Analytics
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **PostHog** | 🟢 | 💰/💰💰 | Complete product analytics suite | Best all-in-one solution |
| **Plausible** | 🟢 | 💰/💰💰 | Privacy-first analytics | GDPR compliant, simple |
| **Mixpanel** | 🟢 | 💰/💰💰💰 | Advanced product analytics | Complex user tracking |
| **Google Analytics** | 🟡 | 💰 | Web analytics standard | Free but privacy concerns |
| **Vercel Analytics** | 🟢 | 💰/💰💰 | Web vitals & analytics | With Vercel hosting |

### Error & Performance Monitoring
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Sentry** | 🟢 | 💰/💰💰 | Error and performance monitoring | Always implement this |
| **LogRocket** | 🟢 | 💰💰/💰💰💰 | Session replay with errors | Visual debugging |
| **Datadog** | 🟢 | 💰💰💰💰 | Full observability platform | Enterprise monitoring |

---

## 🧪 Testing Tools

> **What are Testing Tools?**  
> Automated quality assurance - robots that click through your app, fill forms, and verify everything works. Like having a QA team that never sleeps and tests every change.
>
> **Why do I need them?**  
> Manual testing is slow and humans miss things. Automated tests catch bugs before users see them, verify new features don't break old ones, and give confidence when deploying.
>
> **When to think about this:**  
> Start with basic tests for critical paths (signup, payment). Add more as your app grows. If a bug would lose customers, test it.

### Testing Frameworks
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Playwright** | 🟢 | 💰 | Modern E2E testing | Browser automation |
| **Cypress** | 🟡 | 💰/💰💰💰 | E2E testing framework | Alternative to Playwright |
| **Vitest** | 🟢 | 💰 | Fast unit testing | Unit/integration tests |
| **Jest** | 🟢 | 💰 | JavaScript testing standard | Established alternative |
| **Testing Library** | 🟢 | 💰 | Testing utilities | Component testing |
| **MSW** | 🟢 | 💰 | Mock Service Worker | API mocking |
| **Storybook** | 🟢 | 💰 | Component development environment | UI component testing |

---

## 🔄 Real-time & WebSockets

> **What are Real-time Services?**  
> Enable instant, live updates without refreshing - chat messages appear immediately, documents update as others type, notifications pop instantly. Like having a phone call vs sending letters.
>
> **Why do I need them?**  
> Normal web requests are one-way streets. Real-time creates permanent two-way connections for instant communication. Essential for chat, collaboration, live data, or any "live" feature.
>
> **When to think about this:**  
> When your PRD mentions "instant", "live", "real-time", "chat", "collaboration", or multiple users seeing updates simultaneously.

### Real-time Services  
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **Supabase Realtime** | 🟢 | 💰/💰💰 | Postgres changes streamed live | With Supabase |
| **Pusher** | 🟢 | 💰/💰💰💰 | Managed WebSocket infrastructure | Reliable, simple |
| **Ably** | 🟢 | 💰💰/💰💰💰 | Enterprise realtime platform | High reliability needs |
| **PartyKit** | 🟢 | 💰/💰💰 | Multiplayer/collaboration platform | Collaborative features |
| **Socket.io** | 🟡 | 💰 | WebSocket library | Self-hosted only |
| **Liveblocks** | 🟢 | 💰/💰💰💰 | Collaboration infrastructure | Google Docs-like features |

---

## 🛠️ Development Tools

> **What are Development Tools?**  
> Tools that help write better code faster - catching errors, formatting code, optimizing performance. Like having spell-check, grammar-check, and an editor for your code.
>
> **Why do I need them?**  
> They catch bugs before runtime, enforce consistency, speed up development, and make code maintainable. The difference between professional and amateur code.
>
> **When to think about this:**  
> Set these up on day one. Adding them later is like organizing a messy room - possible but painful.

### Essential Dev Tools
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **TypeScript** | 🟢 | 💰 | JavaScript with types | Always use |
| **ESLint** | 🟢 | 💰 | JavaScript linting | Code quality |
| **Prettier** | 🟢 | 💰 | Code formatter | Consistent style |
| **Husky** | 🟢 | 💰 | Git hooks | Pre-commit checks |
| **Vite** | 🟢 | 💰 | Fast build tool | Development server |
| **pnpm** | 🟢 | 💰 | Fast, efficient package manager | Better than npm |

---

## 🤖 AI & Machine Learning

> **What are AI Services?**  
> Pre-trained AI models and APIs that add intelligence to your app - chatbots, image recognition, text analysis, recommendations. Like hiring AI specialists without the PhD requirement.
>
> **Why do I need them?**  
> Training AI models requires massive data and computing power. These services provide state-of-the-art AI capabilities through simple APIs.
>
> **When to think about this:**  
> When you need "smart" features - chat assistants, content generation, image analysis, recommendations, or any ML-powered feature.

### AI Services
| Technology | Status | Cost | What It Is | When to Use |
|------------|--------|------|------------|-------------|
| **OpenAI API** | 🟢 | 💰💰 | GPT models, DALL-E, Whisper | Text generation, chat |
| **Anthropic Claude** | 🟢 | 💰💰 | Advanced AI assistant API | Complex reasoning |
| **Vercel AI SDK** | 🟢 | 💰 | Tools for building AI apps | AI app development |
| **Replicate** | 🟢 | 💰💰 | Run open-source models | Image/video generation |
| **Hugging Face** | 🟢 | 💰/💰💰 | Open-source model hub | Custom models |

---

## 📝 Quick Decision Matrix

### "I need..." → "Use this..."

| Need | First Choice | Free Alternative | Avoid |
|------|--------------|------------------|-------|
| Web app framework | Next.js | Next.js | Create React App |
| UI components | shadcn/ui | Radix UI | Building from scratch |
| Authentication | Clerk | Supabase Auth | Building your own |
| Database | Supabase | Supabase | Local database |
| Payments | Stripe | Stripe (no free tier) | Handling payments yourself |
| File uploads | uploadthing | Supabase Storage | Server uploads |
| Email | Resend | Free tier limited | Personal email |
| Hosting | Vercel | Vercel free tier | Cheap shared hosting |
| Search | Algolia | Postgres FTS | SQL LIKE queries |
| Analytics | PostHog | Plausible | No analytics |
| Error tracking | Sentry | Sentry free tier | Console.log |
| Drag-drop | @dnd-kit | @dnd-kit | Custom implementation |
| Forms | react-hook-form + zod | react-hook-form + zod | Manual state |
| Rich text | Tiptap | Tiptap | Building your own |
| Charts | Recharts | Recharts | D3 from scratch |
| Real-time | Supabase Realtime | Supabase Realtime | Polling |
| CSS | Tailwind | Tailwind | Inline styles |
| Animations | Framer Motion | Auto-Animate | CSS animations only |
| State | Zustand | Context API | Prop drilling |

---

## ⚠️ Never Build These Yourself

### The "Absolutely Never" List
1. **Authentication System** - Security vulnerabilities you don't know exist
2. **Payment Processing** - Legal liability and PCI compliance
3. **Email Delivery** - Deliverability is a full-time job
4. **File Upload to Your Server** - Security risk and scaling nightmare
5. **Rich Text Editor** - Hundreds of edge cases
6. **Drag and Drop** - Accessibility and touch handling is complex
7. **Search Engine** - Algorithms take years to perfect
8. **Video Processing** - Requires specialized infrastructure
9. **Real-time Sync** - Conflict resolution is hard
10. **Encryption System** - One mistake exposes everything

### Time Estimates Saved
- Auth system: 2-3 months → 2 hours with Clerk
- Payments: 3-4 months → 1 day with Stripe
- Drag-drop: 2-3 weeks → 2 hours with @dnd-kit
- Rich text: 1-2 months → 1 day with Tiptap
- File uploads: 1-2 weeks → 2 hours with uploadthing

---

## 💰 Budget Planning Guide

### Startup/MVP Budget (<100 users)
- **Monthly Cost**: $0-20
- Framework: Next.js (Free)
- Auth: Clerk free tier
- Database: Supabase free tier
- Hosting: Vercel free tier
- Email: Resend free tier

### Growing App (100-1000 users)
- **Monthly Cost**: $50-150
- Auth: Clerk Pro ($25)
- Database: Supabase Pro ($25)
- Hosting: Vercel Pro ($20)
- Email: Resend ($20)
- Storage: uploadthing ($20)

### Scale (1000+ users)
- **Monthly Cost**: $200-500+
- All services on paid plans
- Consider enterprise tiers
- Add monitoring tools
- Multiple environments

---

## 📚 Learning Resources

### Official Documentation
- [Next.js Learn](https://nextjs.org/learn) - Interactive Next.js course
- [React Docs](https://react.dev) - New React documentation
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)
- [Tailwind CSS](https://tailwindcss.com/docs)
- [Supabase Docs](https://supabase.com/docs)

### Video Courses
- [Theo's Videos](https://www.youtube.com/@t3dotgg) - Modern web dev
- [Fireship](https://www.youtube.com/@Fireship) - Quick explanations
- [Web Dev Simplified](https://www.youtube.com/@WebDevSimplified)

### Starter Templates
- [T3 Stack](https://create.t3.gg) - Next.js + TypeScript + Tailwind
- [shadcn/ui Templates](https://ui.shadcn.com/templates)
- [Vercel Templates](https://vercel.com/templates)

### Community
- [r/nextjs](https://reddit.com/r/nextjs) - Next.js community
- [Reactiflux Discord](https://www.reactiflux.com/) - React help
- [Stack Overflow](https://stackoverflow.com) - Q&A

---

*Remember: The best stack is the one that ships. Choose boring, proven technology and focus on building features users love.*

*Last updated: October 2024 - Verify current status before adopting*