# Evolution System Commands

Custom commands that extend Claude Code's capabilities for the Evolution System.

## Core Commands

| Command | Description | Example |
|---------|-------------|---------|
| `/learn` | Record patterns and learnings | `/learn pattern "Always use error boundaries"` |
| `/evolve` | Check/trigger system evolution | `/evolve status` |
| `/next-task` | Get optimal next task | `/next-task urgent` |
| `/compress` | Optimize context usage | `/compress auto` |

## How Commands Work

These commands are interpreted by Claude Code when you type them in chat. They:
1. Read/write to `.claude/` directory structure
2. Analyze code patterns and context
3. Update evolution metrics
4. Provide intelligent suggestions

## Quick Examples

```bash
# Record a new pattern you discovered
/learn pattern "useCallback for event handlers in lists"

# Check what to work on next
/next-task
> Recommended: "Add loading states to async operations"

# Running low on context?
/compress
> Freed 45K tokens by archiving old patterns

# See evolution progress
/evolve status
> 23 patterns learned, 3 evolution cycles completed
```

## Implementation Status

- ✅ Command definitions created
- ⏳ Claude Code interprets these naturally
- 🔄 Commands evolve based on usage

## Adding Custom Commands

Create a new `.md` file in this directory with:
1. Command name and description
2. Usage syntax
3. Examples
4. What it does behind the scenes

Claude Code will recognize and execute these commands when used in chat.