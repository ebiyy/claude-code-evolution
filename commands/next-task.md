# /next-task Command

## Description
Intelligently selects the next optimal task based on context, dependencies, and learning opportunities.

## Usage
```
/next-task [filter]
```

## Filters
- `urgent` - Only urgent tasks
- `easy` - Quick wins (< 1 hour)
- `learning` - Tasks with high learning potential
- `current` - Related to current context

## Examples
```
/next-task
> Recommended: "Add error handling to API calls"
> Reason: Related to current file, 2 similar patterns detected
> Estimated: 30 minutes
> Learning opportunity: Error boundary pattern

/next-task easy
> Quick win: "Add JSDoc comments to utility functions"
> Files: 3 files need documentation
> Estimated: 15 minutes
```

## Selection Algorithm
1. **Context relevance** (40%)
   - Files currently open
   - Recent modifications
2. **Dependencies** (30%)
   - Blocked tasks
   - Prerequisites
3. **Learning value** (20%)
   - New patterns to discover
   - Skill development
4. **Effort/Impact** (10%)
   - Quick wins prioritized

## Task Sources
- `.claude/backlog/tasks/inbox/`
- `.claude/backlog/tasks/in-progress/`
- Auto-detected from TODO comments
- Generated from pattern analysis

## Task Management
```
/next-task complete  # Mark current task as done
/next-task skip      # Skip and get another
/next-task defer     # Defer to later
```