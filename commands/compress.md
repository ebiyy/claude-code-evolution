# /compress Command

## Description
Optimizes context usage by compressing memory tiers and archiving old patterns.

## Usage
```
/compress [level]
```

## Levels
- `auto` - Automatic optimization (default)
- `light` - Quick compression, keep recent items
- `aggressive` - Maximum compression, archive aggressively
- `report` - Show what would be compressed without doing it

## Examples
```
/compress
> Context Usage: 78% (156K/200K tokens)
> Compressing...
> - Archived 12 old patterns to L3
> - Summarized 5 lengthy files
> - Removed 3 duplicate learnings
> Result: 45% (90K/200K tokens)
> Freed: 66K tokens

/compress report
> Would compress:
> - 8 files older than 7 days → L2
> - 15 patterns with <2 uses → Archive
> - 3 verbose logs → Summarize
> Estimated savings: 40K tokens
```

## Compression Strategies
1. **Tier Migration**
   - L1 → L2: Files not accessed in 7 days
   - L2 → L3: Files not accessed in 30 days

2. **Summarization**
   - Long files → Key points + reference
   - Verbose logs → Statistics only
   - Repeated patterns → Single entry with count

3. **Deduplication**
   - Merge similar patterns
   - Remove redundant learnings
   - Consolidate decision records

## Smart Preservation
Never compresses:
- Current task context
- Recent learnings (< 24 hours)
- High-frequency patterns
- Active development files

## Output
- Compression log: `.claude/automation/compression-log.md`
- Archived items: `.claude/knowledge/archive/`