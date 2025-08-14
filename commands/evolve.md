# /evolve Command

## Description
Checks evolution status and triggers system evolution based on accumulated patterns.

## Usage
```
/evolve [action]
```

## Actions
- `status` - Show current evolution metrics (default)
- `trigger` - Force evolution check
- `report` - Generate detailed evolution report

## Examples
```
/evolve
> Evolution Status:
> - Patterns discovered: 23
> - Evolution cycles: 3
> - Last evolution: 2 days ago
> - Next scheduled: in 5 days

/evolve trigger
> Analyzing patterns...
> Found 5 patterns with >3 occurrences
> Generalizing patterns...
> Evolution complete! 2 new patterns added to knowledge base.
```

## What it does
1. Analyzes pattern frequency and success rates
2. Generalizes recurring patterns
3. Updates agent knowledge bases
4. Optimizes memory tiers
5. Creates new shortcuts/templates

## Evolution Triggers
- Pattern threshold reached (default: 3 occurrences)
- Time interval passed (default: 7 days)
- Manual trigger via `/evolve trigger`

## Output Location
- Evolution log: `.claude/knowledge/learnings/evolution-log.md`
- Metrics: `.claude/core/SYSTEM.md`