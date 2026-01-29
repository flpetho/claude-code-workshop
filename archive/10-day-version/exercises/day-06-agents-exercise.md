# Day 6 Exercise: Using Agents for Design Review

## Exercise Overview

**Duration**: 30 minutes
**Goal**: Practice using agents for specialized tasks
**Difficulty**: Intermediate

## Scenario

You're documenting a new feature: "Push Notification Preferences Screen" for a mobile app. You'll create a design spec, then use the design-review agent to get professional feedback.

## What You'll Learn

1. How to invoke agents properly
2. How to interpret agent feedback
3. How to iterate with agent assistance
4. When agents add value vs. regular Claude Code

## Step-by-Step Instructions

### Part 1: Create Initial Design Spec (10 min)

**Step 1: Set up project**
```bash
cd ~/Documents
mkdir notification-preferences-feature
cd notification-preferences-feature
mkdir specs
```

**Step 2: Create rough notes**
```bash
touch notes.txt
open notes.txt
```

Add these rough notes:
```
Push Notification Preferences Screen

Users need to control what notifications they get
Types: Order updates, Promotions, Account alerts, Tips & tricks
Should be able to turn on/off each category
Maybe granular controls for some categories?
Need to handle permissions - what if OS notifications are off?
Should show current state clearly
```

**Step 3: Start Claude Code**
```bash
claude
```

**Step 4: Create initial spec**
```
Read notes.txt and create a design specification called specs/notification-preferences-spec.md with these sections:

# Push Notification Preferences - Design Specification

## Overview
Brief description of the feature

## User Flow
Step-by-step user journey

## Screens Required
What screens are needed

## Components
UI components needed

## Notification Categories
Table of notification types with descriptions

## User Controls
What users can customize

## Edge Cases
What could go wrong and how to handle it

## Accessibility
How to make it accessible

## Success Metrics
How we measure success

Use markdown formatting. Add some detail based on the notes, but keep it as a first draft - not perfect.
```

**Step 5: Review what was created**
```
exit
```
```bash
cat specs/notification-preferences-spec.md
```

Notice: It's a good start, but probably has gaps. This is intentional!

### Part 2: Use Design Review Agent (10 min)

**Step 6: Launch agent review**
```bash
claude
```

```
Use the design-review agent to analyze specs/notification-preferences-spec.md and provide comprehensive feedback on:
- Completeness of each section
- Missing considerations
- Edge cases that should be added
- Accessibility improvements needed
- Any UX concerns

Provide specific, actionable recommendations prioritized by importance.
```

**Step 7: Wait for agent analysis**

The agent will:
1. Read your spec thoroughly
2. Analyze each section against best practices
3. Identify gaps and issues
4. Provide structured feedback report

**Step 8: Review agent feedback**

The agent should provide feedback like:

```markdown
# Design Review: Push Notification Preferences

## Overall Assessment
Specification covers basics but missing critical details about permissions handling and settings hierarchy. Current completeness: ~60%.

## Section Analysis

### ✅ Well-Covered Sections
- Overview: Clear purpose statement
- Notification Categories: Good breakdown of types

### ⚠️ Needs Improvement
- User Flow: Missing what happens when OS permissions are denied
- Edge Cases: Only 2 scenarios covered, need 5-6 more
- Components: Generic descriptions, need specific properties

### ❌ Missing Critical Elements
- System Permission Handling: What if iOS/Android notifications are disabled?
- Settings Hierarchy: Global mute vs. category controls
- Notification Examples: Users should see what they'll receive
- Backend Sync: How changes sync across devices
- Analytics Events: What to track

## Prioritized Recommendations

### P0 - Must Address (Blocking Issues)
1. **Add System Permission Handling section**
   - What happens when OS notifications are off
   - How to guide users to system settings
   - In-app messaging for this state

2. **Define Settings Hierarchy**
   - Can users mute all notifications?
   - What takes precedence: global mute or category settings?
   - How to handle conflicts

3. **Expand Edge Cases section**
   - User has notifications on but categories all off
   - Mid-session permission changes
   - Network failure when saving
   - User toggles rapidly (debouncing needed?)

### P1 - Should Address (Important)
4. **Add visual examples of notifications**
   - Show users what each category looks like
   - "Preview" functionality consideration

5. **Specify component properties**
   - Toggle switch states (on/off/disabled)
   - Loading states when saving
   - Error states

6. **Add cross-device sync section**
   - How changes propagate
   - Conflict resolution

### P2 - Nice to Have
7. **Add intelligent defaults section**
   - What's on by default for new users?
   - Based on what logic?

8. **Consider notification scheduling**
   - Quiet hours / Do Not Disturb integration
   - Future enhancement note

## Specific Section Feedback

### User Flow Section
Current: "User opens settings, toggles preferences, saves"

**Issues:**
- Too high-level
- Doesn't account for permission states
- Missing confirmation/feedback

**Recommended additions:**
1. Entry points (how user reaches this screen)
2. Permission check on entry
3. If permissions denied: show educational screen
4. If permissions granted: show preferences
5. User makes changes
6. Show loading indicator
7. Show success confirmation
8. Handle errors gracefully

### Accessibility Section
Current: "Screen reader support, high contrast"

**Issues:**
- Too generic
- Missing specific requirements

**Recommended additions:**
- Toggle switches must announce state changes
- Group related settings with labels
- Provide context: "3 of 4 notification types enabled"
- Ensure 44x44px touch targets
- Support Dynamic Type (text scaling)
- Test with VoiceOver/TalkBack
- Color must not be only indicator of state

## Edge Cases to Add

Currently missing:
1. **Permission Denied State**
   - How to detect
   - What UI to show
   - How to guide user to fix

2. **All Categories Disabled**
   - Is this allowed?
   - Warning message needed?
   - How to re-enable easily

3. **Network Errors**
   - Failed to save changes
   - Retry mechanism
   - Don't lose user's changes

4. **App Backgrounded Mid-Save**
   - Ensure save completes
   - Or handle gracefully on return

5. **User Changes Mind**
   - Cancel vs. Save options
   - Warn about unsaved changes?

## Questions to Answer

1. Can users schedule notification quiet hours?
2. Do notification sounds/vibration get preferences?
3. Is there a "Try me" / preview feature?
4. Can users snooze categories temporarily?
5. How do we handle notification priority levels?

## Estimated Work Remaining
- P0 issues: 2-3 hours to address
- P1 issues: 1-2 hours
- P2 nice-to-haves: 1 hour

**Recommendation:** Address P0 items before stakeholder review. P1 items can be added after initial feedback. P2 can be considered for future iterations.
```

### Part 3: Address Feedback (8 min)

**Step 9: Fix priority issues**

Still in Claude Code, address the P0 issues:

```
Add a "System Permission Handling" section to specs/notification-preferences-spec.md after the Overview section. Include:

## System Permission Handling

### Permission States

| State | Description | UI Treatment |
|-------|-------------|--------------|
| Granted | OS notifications enabled | Show full preferences |
| Denied | OS notifications disabled | Show educational screen |
| Not Determined | User hasn't decided yet | Request permission on entry |

### Permission Denied Flow

When user opens preferences with OS notifications disabled:

1. **Show Educational Screen**
   - Clear headline: "Enable Notifications to Customize"
   - Explanation of value: "Control which updates you receive"
   - Visual showing notification types
   - Primary CTA: "Open Settings"
   - Secondary CTA: "Maybe Later"

2. **Open Settings Button**
   - Takes user to iOS Settings > App > Notifications
   - Or Android Settings > Apps > Notifications
   - Use deep linking where supported

3. **Return From Settings**
   - Check permission state
   - If now granted: Show preferences screen
   - If still denied: Return to educational screen

### In-App Messaging

When permissions are disabled, show banner at top of main screens:
- "📱 Turn on notifications to stay updated"
- Tappable to reach educational screen
- Dismissible but returns after 7 days
```

**Step 10: Add more edge cases**

```
Expand the Edge Cases section in specs/notification-preferences-spec.md to include:

## Edge Cases

### 1. All Categories Disabled
**Scenario:** User disables all notification categories

**Handling:**
- Allow this state (user choice is respected)
- Show info banner: "You won't receive any notifications"
- Provide quick "Enable All" button
- Track in analytics (indicates poor defaults or confusion)

### 2. Network Error During Save
**Scenario:** API fails when user saves preferences

**Handling:**
- Show error message: "Couldn't save preferences. Check your connection."
- Keep user's changes in form (don't reset)
- Provide "Retry" button
- Add "Save" button in nav bar (iOS) or floating action button (Android)
- Cache changes locally until successful sync

### 3. Permission Changed While App Open
**Scenario:** User backgrounds app, disables notifications in OS settings, returns to app

**Handling:**
- Detect permission change on app foreground
- If now denied: Fade out preference toggles, show educational banner
- If now granted: Enable toggles
- Smooth animation (don't just disappear UI)

### 4. User Backgrounds App Mid-Save
**Scenario:** Save request in flight when app backgrounds

**Handling:**
- Allow request to complete in background
- On return, check save status
- Show success or error message appropriately
- Don't assume success

### 5. User Toggles Rapidly
**Scenario:** User taps toggle multiple times quickly

**Handling:**
- Debounce toggle actions (300ms)
- Show loading state on toggle
- Disable toggle until save completes
- If save fails, revert toggle to previous state

### 6. Conflicting Settings
**Scenario:** Global "Mute All" conflicts with category toggles

**Handling:**
- Global mute takes precedence
- When global mute is on:
  - Disable all category toggles (show disabled state)
  - Gray out category section
  - Show info text: "Unmute to customize categories"
- When global mute turned off:
  - Restore previous category states
```

### Part 4: Re-Review with Agent (2 min)

**Step 11: Validate fixes**

```
Use the design-review agent again to analyze specs/notification-preferences-spec.md and confirm I've addressed the P0 issues. Focus only on the sections I added.
```

Agent should confirm:
- System Permission Handling section is comprehensive
- Edge cases now cover critical scenarios
- Spec is ready for stakeholder review

**Step 12: Exit**
```
exit
```

### Part 5: Reflection (5 min)

**Step 13: Review final spec**
```bash
cat specs/notification-preferences-spec.md
```

**Step 14: Answer these questions:**

1. **What did the agent catch that you might have missed?**
   - Permission handling edge cases?
   - Accessibility specifics?
   - System integration details?

2. **Was the agent's feedback actionable?**
   - Could you understand what to fix?
   - Were priorities clear?
   - Did it explain *why* something was important?

3. **How did using an agent compare to regular Claude Code?**
   - More thorough analysis?
   - Structured feedback helpful?
   - Saved time vs. iterating manually?

4. **When would you use an agent vs. regular Claude Code for design work?**

## Success Criteria

✅ **You've successfully completed the exercise if:**

1. Created initial design spec with Claude Code
2. Successfully invoked design-review agent
3. Understood agent's structured feedback
4. Addressed P0 issues based on feedback
5. Used agent again to validate fixes
6. Final spec is more comprehensive than initial version
7. Understand value of specialized agents

## Extension Challenges

### Challenge 1: Complete the Spec

Address all P1 and P2 issues the agent identified:
```
Add component specifications section with toggle properties, loading states, and error states to specs/notification-preferences-spec.md
```

### Challenge 2: Create Visual Flow

```
Based on specs/notification-preferences-spec.md, create a Mermaid flowchart showing the complete user flow including all permission states and edge cases. Save as specs/notification-flow.md
```

### Challenge 3: Try Another Agent

```
Create a competitive analysis of how 3 apps handle notification preferences (Instagram, Twitter, Slack). Use the competitive-analysis agent to structure your research.
```

### Challenge 4: Multi-Agent Workflow

Combine multiple agents:
1. Use documentation-generator agent to create initial spec
2. Use design-review agent to analyze it
3. Make improvements
4. Use flow-diagram agent to visualize
5. Use design-review agent final validation

## Real-World Application

This workflow works for:
- Any design specification
- Feature documentation
- User flow documentation
- Design system components
- Product requirements documents

**The key:** Let agents do deep analysis, you make the decisions and edits.

## Common Issues & Solutions

### Issue: Agent feedback feels generic

**Solution:** Be more specific in your request:
```
❌ Use design-review agent on my spec
✅ Use design-review agent on specs/feature.md and focus specifically on edge cases and accessibility requirements
```

### Issue: Agent takes a long time

**Solution:** This is normal for thorough analysis. Agents read carefully and provide comprehensive feedback. Usually 30-60 seconds for a full design spec.

### Issue: Don't agree with agent's recommendation

**Solution:** You're the expert! Agents provide suggestions based on best practices, but you decide:
- Consider the recommendation
- Apply your domain knowledge
- Make the final call
- You can ignore recommendations if you have good reasons

### Issue: Agent didn't catch something I expected

**Solution:** Agents are thorough but not perfect:
- Add the section yourself
- Use your UX expertise
- Agents assist, they don't replace your judgment

## Comparison: With vs. Without Agents

### Without Agents (Traditional Approach)

1. Create design spec (30 min)
2. Self-review - probably miss things (10 min)
3. Send to colleague for review (wait 1-2 days)
4. Receive feedback (in Slack/email, unstructured)
5. Try to remember what sections need work
6. Make revisions (20 min)
7. Send for another review round (wait 1-2 days)

**Total time:** 1 hour + 2-4 days of waiting

### With Design Review Agent

1. Create design spec (30 min)
2. Run design-review agent (2 min)
3. Receive structured, prioritized feedback immediately
4. Address P0 issues (30 min)
5. Re-validate with agent (2 min)
6. Spec ready for stakeholder review

**Total time:** ~1 hour, ready same day

**Still get human review from colleagues, but spec is already high-quality!**

## Troubleshooting

**Agent says "I can't find that file"**
```bash
# Check you're in the right directory
pwd

# Check file exists
ls specs/

# Use full path if needed
Use design-review agent on /full/path/to/spec.md
```

**Agent output is too long to read**
Agent feedback is comprehensive. Focus on:
1. Overall Assessment first
2. P0 items next
3. P1 items after addressing P0
4. P2 items if time allows

**Want to save agent feedback**
```
Use design-review agent on specs/my-spec.md and save the detailed feedback report as specs/review-feedback.md
```

## Next Steps

**Tomorrow (Day 7):**
- More UX/PM workflows with agents
- Competitive analysis patterns
- Design system documentation at scale
- Creating multiple documents consistently

**Optional homework:**
- Use design-review agent on a real spec from your work
- Try research-synthesis agent if you have research data
- Experiment with 3 different agents
- Note which agents are most useful for your role

---

## Checklist: Did You Complete Everything?

- [ ] Created initial design spec with Claude Code
- [ ] Invoked design-review agent successfully
- [ ] Read and understood agent feedback
- [ ] Addressed P0 issues from feedback
- [ ] Re-ran agent to validate fixes
- [ ] Final spec is more complete than initial version
- [ ] Understand when to use agents vs. regular Claude Code
- [ ] Can explain agent value to colleagues
- [ ] Ready to use agents in real work
- [ ] Completed reflection questions

**Excellent work!** You now know how to leverage specialized agents for professional-quality work!

---

*Questions? Having trouble? Post in the workshop channel!*
