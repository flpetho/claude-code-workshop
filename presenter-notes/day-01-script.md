# Day 1 Presenter Script: Welcome to Claude Code

## Session Overview

**Total Time**: 60-90 minutes
- Presentation: 30-35 minutes
- Q&A: 15 minutes
- Hands-on: 30-40 minutes

**Materials Needed:**
- Screen sharing setup
- Demo machine with Claude Code pre-installed
- Backup installation files (in case of download issues)
- Troubleshooting guide ready
- Example "before/after" documents

**Pre-session Checklist:**
- [ ] Test screen sharing in MS Teams
- [ ] Verify Claude Code works on demo machine
- [ ] Open all demo files and examples
- [ ] Have troubleshooting guide handy
- [ ] Test microphone and video
- [ ] Post workshop link in chat

---

## Script & Timing

### Opening (5 minutes)

**[0:00-0:05]**

**Welcome everyone!**

> "Good morning/afternoon everyone! Welcome to Claude Code 101 - a workshop designed specifically for UX and PM professionals. Over the next two weeks, we're going to learn how to use Claude Code to supercharge your daily work.
>
> My name is [Your Name], and I'm excited to be your guide on this journey. Before we dive in, let me tell you a quick story...
>
> [Personal story about how Claude Code helped you - keep it under 2 minutes. Example: "Last month, I had 15 user research interview transcripts to synthesize. Normally this would take me a full day. With Claude Code, I organized, themed, and extracted key insights in under an hour. That's the kind of productivity boost we're going to unlock together."]
>
> Today is Day 1, so we'll keep it simple. By the end of this session, you'll have Claude Code installed and working on your machine. Let's get started!"

**Icebreaker (optional, if time permits):**
- "In the chat, tell me: What's one documentation or organization task you're currently dreading?"
- Acknowledge a few responses

### What is Claude Code? (10 minutes)

**[0:05-0:15]**

**Share screen → Show presentation slide: "What is Claude Code?"**

> "Let me start by explaining what Claude Code actually is, because the name can be confusing.
>
> Claude Code is an AI assistant - like ChatGPT or Claude on the web - but with one major difference: **it can actually work with your files.** [Pause for effect]
>
> Think of it this way: Talking to Claude on the website is like describing your work to a consultant over the phone. They can give you advice, but they can't see or touch your files.
>
> Claude Code is like having that consultant **sitting at your desk**, with full access to your project files. It can read them, create new ones, organize them, and help you get work done.
>
> And here's the best part for UX and PM folks: **No coding required.** We'll learn just enough terminal basics to get around, but this is not a programming workshop."

**Demo Setup:**
> "Let me show you a quick example of what I mean..."

**[DEMO 1: Simple File Creation - 3 minutes]**

**Screen share → Terminal**

1. Navigate to a demo folder:
   ```bash
   cd ~/Desktop/demo-for-workshop
   ```

2. Show the empty folder:
   ```bash
   ls
   ```
   > "This folder is currently empty. Let's ask Claude to help."

3. Start Claude Code:
   ```bash
   claude
   ```

4. Type a natural request:
   ```
   Create a file called meeting-notes.md with a template for product team meetings. Include sections for attendees, discussion points, decisions, and action items.
   ```

5. Let Claude work (narrate what's happening):
   > "See how Claude explains what it's going to do? Then it creates the file. And now it's showing us what it created."

6. Exit and show the file:
   ```bash
   exit
   cat meeting-notes.md
   ```

7. **Key point:**
   > "That took 30 seconds. How long would it take you to create and format this manually? That's the power of Claude Code."

### Why UX/PM Professionals Should Care (8 minutes)

**[0:15-0:23]**

**Share screen → Presentation slides: "Real Use Cases"**

Walk through each use case briefly (1 minute each):

1. **Design Documentation**
   > "Raise your hand if you spend time formatting design specs..." [wait for hands]
   > "Claude Code can take your rough notes and structure them into polished docs with proper headers, lists, and tables. Show example."

2. **User Research Synthesis**
   > "After 10 user interviews, who wants to manually organize all those insights?" [expect groans]
   > "Claude Code can help you identify themes, extract quotes, and create summary reports."

3. **User Flows & Journey Mapping**
   > "Ever wish you could create flow diagrams just by describing them? You can. Claude Code supports Mermaid diagrams - text that becomes visuals."

4. **Competitive Analysis**
   > "Organizing competitive research across multiple companies? Claude Code can structure it, create comparison matrices, format it beautifully."

5. **Product Requirements**
   > "PRDs with consistent structure every time. User stories formatted properly. Requirements tracked and organized."

6. **Meeting Notes**
   > "Transform messy meeting notes into action items and decisions in seconds."

**[DEMO 2: Before/After - Meeting Notes - 2 minutes]**

**Share screen → Show before/after documents side by side**

> "Let me show you a real example. Here's my actual meeting notes from last week..." [show messy version]
>
> "And here's what Claude Code helped me create from those notes..." [show polished version]
>
> "Which one would you rather share with your team?"

### Workshop Overview (5 minutes)

**[0:23-0:28]**

**Share screen → Presentation slide: "10-Day Journey"**

> "Over the next 10 days, we're going to build your skills step by step. Here's what we'll cover:
>
> **Week 1 - Foundations:**
> - Today: Installation and welcome
> - Tomorrow: Terminal basics - don't worry, I'll make it painless!
> - Day 3: Your first real Claude Code session
> - Day 4: How to organize projects so Claude Code works even better
> - Day 5: Real UX/PM workflows in action
>
> **Week 2 - Mastery:**
> - Day 6: Agents - these are like specialized AI assistants
> - Day 7: More advanced UX/PM workflows
> - Day 8: Customization - make Claude Code work YOUR way
> - Day 9: Troubleshooting and best practices
> - Day 10: Show and Tell - you'll present what you've built!
>
> **Each day follows the same format:**
> 1. I'll present and demo (30-40 minutes)
> 2. Q&A - ask anything (15 minutes)
> 3. You practice hands-on in your environment (30-40 minutes)
> 4. Optional homework to prepare for next day
>
> **Ground rules:**
> - No stupid questions - seriously, ask everything
> - Help each other - if you figure something out, share it in chat
> - Pace yourself - you don't need to master everything immediately
> - Have fun - this should make your work easier!"

### Installation Walkthrough (7 minutes)

**[0:28-0:35]**

**Share screen → Terminal + Installation Guide**

> "Okay, now let's get Claude Code installed on your machine. I'm going to walk through this step by step. If you run into issues, don't panic - we have troubleshooting time built in.
>
> **First, check that you have a Claude account:**
> - Go to https://claude.ai
> - If you don't have an account, create one now (takes 2 minutes)
> - Use your work email if required by your company"

**Wait for people to confirm in chat**

> "Great! Now let's install Claude Code. **The command you use depends on your operating system:**"

**macOS:**
```bash
brew install claude
```

**Windows:**
```bash
winget install Claude
```

**Linux:**
```bash
curl -fsSL https://claude.com/install.sh | sh
```

> "**[IMPORTANT DEMO TECHNIQUE]**
> I'm on macOS, so I'll demo the Mac version. But the process is the same for Windows and Linux - just different commands.
>
> Let me do this in real-time so you can see..."

**[DEMO 3: Fresh Installation - 4 minutes]**

1. **Show the installation command:**
   ```bash
   brew install claude
   ```

2. **Run it and narrate:**
   > "You'll see download progress... It's installing... This takes about 1-2 minutes depending on your internet speed."

3. **After installation:**
   > "Great! Now **close and reopen your terminal** - this is important!"

4. **Verify:**
   ```bash
   claude --version
   ```
   > "If you see a version number, you're good!"

5. **Authenticate:**
   ```bash
   claude auth
   ```
   > "This will open your browser. Log in with your Claude account and click 'Authorize'."

6. **Show success message**

> "That's it! You're ready to use Claude Code. In a moment, we'll move to Q&A and then hands-on time where you'll do this on your machine."

### Wrap Up & Preview (2-3 minutes)

**[0:35-0:37]**

**Share screen → Checklist slide**

> "Before we move to Q&A, let me review what we're accomplishing today:
>
> **By the end of today's session, you should have:**
> - ✅ Understanding of what Claude Code is
> - ✅ Claude Code installed and authenticated
> - ✅ Created your first test project
> - ✅ Seen Claude create a file
>
> **Tomorrow (Day 2), we'll:**
> - Learn terminal basics (navigation, file management)
> - Get comfortable with the command line
> - Practice the essential commands you'll use daily
>
> Any questions before we move to Q&A?"

---

## Q&A Session (15 minutes)

**[0:37-0:52]**

### Common Questions & Answers

**Q: "Do I need to know how to code?"**
A: "Absolutely not! We'll teach you just enough terminal basics to navigate and use Claude Code. If you can use a search box and file finder, you can learn this."

**Q: "Can Claude Code access all my files?"**
A: "Claude Code can only access files in the project folder where you start it. It can't see your entire computer - only the specific project you're working in. We'll cover this in detail on Day 4."

**Q: "What if I mess something up?"**
A: "Great question! First, Claude Code always asks before making changes. Second, we'll teach you basic 'undo' patterns. Third, use version control (git) for important projects - we'll touch on this Day 9. Bottom line: it's very hard to break things."

**Q: "Is this the same as GitHub Copilot?"**
A: "Different tools for different purposes. Copilot helps developers write code. Claude Code is broader - it helps with any kind of file-based work, including documentation, research, organization. Much better fit for UX/PM work."

**Q: "Can I use this with Figma or other design tools?"**
A: "Claude Code works with files - text files, markdown, code, documentation. It doesn't directly integrate with Figma, but it can help you document your Figma designs, organize design system specs, and manage design-related files."

**Q: "Does my company need to approve this?"**
A: "Good question to ask! Claude Code uses Anthropic's API. Check with your IT/security team if you're unsure. Generally, if your company allows use of Claude.ai, Claude Code should be fine, but confirm internally."

**Q: "Will this work on my company laptop with VPN/security?"**
A: "Usually yes, but there can be firewall/VPN issues. If you have installation problems during hands-on time, we'll troubleshoot together. Make note of any error messages."

**Q: "Can multiple people work on the same project?"**
A: "Yes! Claude Code works great with version control (git). Multiple people can work on the same files. We'll cover collaboration best practices later in the workshop."

### Handling Difficult Questions

**If you don't know the answer:**
> "That's a great question! I don't know the answer off the top of my head, but let me research that and get back to you tomorrow. Can you post it in the workshop channel so I don't forget?"

**If the question is off-topic:**
> "Good question, but that's a bit advanced for Day 1. Let's revisit that on [Day X] when we cover [topic]. Make a note and remind me!"

**If someone is very stuck:**
> "Let's troubleshoot that during the hands-on session when I can see your screen. Post a message in chat and I'll help you one-on-one."

---

## Hands-On Session (30-40 minutes)

**[0:52-1:30]**

### Setup

> "Alright! Now it's your turn. For the next 30-40 minutes, you'll work through the installation and first exercise.
>
> **Here's what you're going to do:**
> 1. Install Claude Code
> 2. Authenticate
> 3. Create a test project
> 4. Ask Claude to create a file
> 5. Verify it worked
>
> **The exercise guide is in your workshop materials** - check the link in chat.
>
> **I'll be available for troubleshooting:**
> - Post questions in the main chat
> - If you're really stuck, DM me and I can do a breakout room
> - Help each other - if someone asks a question you know the answer to, jump in!
>
> **Fast learners:**
> - If you finish early, there are extension challenges in the exercise
> - You can explore and experiment
> - Help others who are stuck
>
> Let's get started! I'll stick around for the full time."

### During Hands-On

**Monitor chat actively:**
- Answer questions as they come up
- Note common issues for next session
- Celebrate successes: "Great work, [name]!"

**15-minute checkpoint:**
> "Quick check-in: How's everyone doing? Give me a thumbs up in chat if you've successfully installed Claude Code."

**30-minute checkpoint:**
> "10 minutes left! If you haven't finished, that's okay - you can complete this tonight. The most important thing is to get Claude Code installed."

### Closing (3 minutes)

**[1:27-1:30]**

> "Great work everyone! Let's wrap up.
>
> **Quick poll in chat:**
> - How many of you got Claude Code installed? 🎉
> - How many created your first file with Claude?
> - How many are feeling excited for tomorrow?
>
> **Homework (optional but recommended):**
> - If you didn't finish installation, complete it tonight
> - Practice opening and closing your terminal
> - Think about a project you'd like to organize with Claude Code
>
> **Tomorrow (Day 2):**
> - We're diving into terminal basics
> - I promise to make it painless and even fun
> - You'll learn the essential commands you need
> - Same time, same place!
>
> **Questions or stuck?**
> - Post in the workshop channel
> - Email me: [your email]
> - We'll troubleshoot together
>
> Great job today! See you tomorrow!"

---

## Troubleshooting Guide (For Live Support)

### Installation Issues

**"brew: command not found" (macOS)**
- Need to install Homebrew first: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

**"winget: command not found" (Windows)**
- Windows too old, use manual install: https://claude.com/download

**Permission errors**
- macOS/Linux: Use `sudo` but explain what it means
- Windows: "Run as Administrator"

**Firewall/VPN blocking installation**
- Try: `curl https://claude.com` - does it connect?
- May need IT support to allowlist domain

### Authentication Issues

**Browser doesn't open**
- Manually copy/paste URL shown in terminal
- Check if browser is set as default

**"Authentication failed"**
- Verify Claude account exists
- Try logging out and back in on claude.ai
- Check internet connection

### First Run Issues

**"No such file or directory"**
- They're in the wrong folder
- Teach: `pwd` to see where they are

**Claude starts but doesn't respond**
- Check internet connection
- Try restarting Claude Code
- Verify authentication: `claude auth status`

**Created file doesn't appear**
- They're looking in wrong folder
- Teach: `ls` to list files
- Teach: `pwd` to see current location

---

## Materials Checklist

**Before session:**
- [ ] Day 1 slides loaded
- [ ] Demo project folder set up
- [ ] Example "before/after" docs ready
- [ ] Exercise guide link in chat
- [ ] Troubleshooting guide handy
- [ ] MS Teams tested

**After session:**
- [ ] Send recording link (if recorded)
- [ ] Post Day 2 prep materials
- [ ] Reply to outstanding questions
- [ ] Update Day 2 based on today's issues
- [ ] Celebrate small wins!

---

## Presenter Tips

1. **Energy matters** - Show enthusiasm! Your excitement is contagious.
2. **Acknowledge fear** - Many people are nervous about terminal. Address it directly.
3. **Celebrate progress** - Every small win deserves recognition.
4. **Be patient** - Different skill levels. Meet people where they are.
5. **Share your struggles** - Tell them about times you got stuck too.
6. **Keep time** - But be flexible if needed for troubleshooting.
7. **Post-session notes** - Write down what worked and what didn't for next cohort.

**Good luck! You've got this!** 🎉
