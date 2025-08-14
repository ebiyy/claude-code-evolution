# /learn Command

## Description
Records new patterns and learnings from the current session into the Evolution System.

## Usage
```
/learn [category] [description]
```

## Examples
```
/learn pattern "Component always uses useState for form state"
/learn antipattern "Avoid nested ternary operators in JSX"
/learn decision "Use TypeScript for all new components"
```

## What it does
1. Analyzes current context for patterns
2. Records to `.claude/knowledge/patterns/` or `.claude/knowledge/learnings/`
3. Increments pattern counter if similar pattern exists
4. Updates `.claude/core/SYSTEM.md` with learning count

## Categories
- `pattern` - Recurring successful patterns
- `antipattern` - Patterns to avoid
- `decision` - Architecture decisions
- `learning` - General learnings

## Auto-detection
When used without arguments, attempts to detect patterns from recent changes:
```
/learn
> Detected pattern: "Error boundary wrapper for async components"
> Occurrence count: 3
> Saved to: .claude/knowledge/patterns/react-error-boundary.md
```