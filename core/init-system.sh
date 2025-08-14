#!/bin/bash

# Claude Code Evolution System - Initialization Script
# This script sets up the evolution system for a project

set -e

echo "🚀 Claude Code Evolution System Initializer"
echo "==========================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EVOLUTION_ROOT="$(dirname "$SCRIPT_DIR")"

# Parse command line arguments
MINIMAL=false
DOMAIN=""
PROJECT_PATH="."

while [[ $# -gt 0 ]]; do
    case $1 in
        --minimal)
            MINIMAL=true
            shift
            ;;
        --domain)
            DOMAIN="$2"
            shift 2
            ;;
        --path)
            PROJECT_PATH="$2"
            shift 2
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

# Change to project directory
cd "$PROJECT_PATH"

echo -e "${BLUE}📁 Setting up in: $(pwd)${NC}"

# Create .claude directory structure
echo -e "${YELLOW}Creating .claude directory structure...${NC}"
mkdir -p .claude/{core,domains,agents,backlog,knowledge,navigation,automation}
mkdir -p .claude/backlog/{epics,stories,tasks/{inbox,in-progress,archive}}
mkdir -p .claude/knowledge/{patterns,antipatterns,decisions,learnings}
mkdir -p .claude/navigation/{maps,indexes,bookmarks}
mkdir -p .claude/automation/{hooks,commands,workflows}

# Create initial configuration
echo -e "${YELLOW}Creating initial configuration...${NC}"

# Create evolution-specific configuration
cat > .claude/evolution-config.json << EOF
{
  "version": "1.0.0",
  "domain": "web",
  "memory": {
    "l1_max_files": 10,
    "l2_threshold_days": 7,
    "l3_threshold_days": 30
  },
  "evolution": {
    "pattern_threshold": 3,
    "check_interval": 86400,
    "auto_evolve": true
  },
  "initialized": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
}
EOF

# Create Claude Code settings.json with minimal configuration
# This file follows the official Claude Code schema
cat > .claude/settings.json << 'EOF'
{
  "permissions": {
    "additionalDirectories": [".claude"]
  },
  "env": {
    "CLAUDE_EVOLUTION": "enabled"
  }
}
EOF

# Create SYSTEM.md
cat > .claude/core/SYSTEM.md << 'EOF'
# Claude Code Evolution System

## Overview
This project uses the Claude Code Evolution System for self-learning development optimization.

## Memory Tiers
- **L1 (Hot)**: Active task context
- **L2 (Warm)**: Recent patterns and decisions
- **L3 (Cold)**: Archived knowledge

## Active Domain
Current domain configuration is loaded from `.claude/evolution-config.json`

## Learning Status
Patterns discovered: 0
Evolutions triggered: 0
Last update: System initialized

## Quick Commands
- `/init-project` - Initialize project structure
- `/next-task` - Get optimal next task
- `/compress` - Optimize context usage
- `/learn` - Record new learning
- `/evolve` - Check evolution status
EOF

# Create INDEX.md
cat > .claude/core/INDEX.md << 'EOF'
# Project Index

## Structure Overview
```
Project initialized with Claude Code Evolution System
```

## Key Files
- `.claude/core/SYSTEM.md` - System configuration
- `.claude/evolution-config.json` - Evolution settings
- `.claude/settings.json` - Claude Code settings

## Hot Files
*No hot files detected yet*

## Recent Changes
- System initialized

## Navigation Hints
Use `/next-task` to get started with your first task.
EOF

# Create initial ADR
mkdir -p .claude/knowledge/decisions
cat > .claude/knowledge/decisions/ADR-001-claude-evolution-adoption.md << 'EOF'
# ADR-001: Adoption of Claude Code Evolution System

## Status
Accepted

## Context
Need for scalable development system that learns and evolves with the project.

## Decision
Adopt Claude Code Evolution System for:
- Pattern detection and learning
- Context management
- Task optimization
- Knowledge preservation

## Consequences
- Initial setup overhead
- Long-term efficiency gains
- Self-improving development process
- Better knowledge retention
EOF

# Link to global evolution system if available
if [ -d "$HOME/.claude-evolution" ]; then
    echo -e "${YELLOW}Linking to global evolution system...${NC}"
    ln -sf "$HOME/.claude-evolution" .claude-evolution
else
    if [ "$MINIMAL" = true ]; then
        echo -e "${BLUE}Note: Running in minimal mode. Skipping global system setup.${NC}"
    else
        echo -e "${BLUE}Note: Global evolution system not found.${NC}"
        echo -e "${BLUE}To install the full system, clone the repository:${NC}"
        echo -e "${BLUE}  git clone https://github.com/ebiyy/claude-code-evolution.git ~/.claude-evolution${NC}"
    fi
fi

# Update or create CLAUDE.md in project root
if [ -f "CLAUDE.md" ]; then
    echo -e "${YELLOW}Updating existing CLAUDE.md...${NC}"
    # Append evolution system notice
    echo "" >> CLAUDE.md
    echo "## Claude Code Evolution System" >> CLAUDE.md
    echo "This project uses the Claude Code Evolution System. See \`.claude/core/SYSTEM.md\` for details." >> CLAUDE.md
else
    echo -e "${YELLOW}Creating CLAUDE.md...${NC}"
    cat > CLAUDE.md << 'EOF'
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Claude Code Evolution System
This project uses the Claude Code Evolution System. See `.claude/core/SYSTEM.md` for details.

## Evolution Configuration
Evolution settings are stored in `.claude/evolution-config.json`:
- Memory tiers: L1 (10 files) → L2 (7 days) → L3 (30 days)
- Pattern detection: Threshold of 3 occurrences
- Auto-evolution: Enabled

## Quick Start
1. Check current status: `cat .claude/core/SYSTEM.md`
2. Get next task: Use `/next-task` command
3. Record learnings: Use `/learn` command
4. Check evolution: Use `/evolve` command

## Important Paths
- Evolution config: `.claude/evolution-config.json`
- System status: `.claude/core/SYSTEM.md`
- Patterns: `.claude/knowledge/patterns/`
- Task backlog: `.claude/backlog/tasks/`

## Project-Specific Notes
*Add your project-specific instructions here*
EOF
fi

# Set up domain if specified
if [ -n "$DOMAIN" ]; then
    echo -e "${YELLOW}Configuring domain: $DOMAIN${NC}"
    # Update evolution-config.json with domain
    if command -v jq &> /dev/null; then
        jq ".domain = \"$DOMAIN\"" .claude/evolution-config.json > .claude/evolution-config.json.tmp
        mv .claude/evolution-config.json.tmp .claude/evolution-config.json
    else
        sed -i.bak "s/\"domain\": \"web\"/\"domain\": \"$DOMAIN\"/" .claude/evolution-config.json
        rm -f .claude/evolution-config.json.bak
    fi
fi

# Final message
echo ""
echo -e "${GREEN}✅ Claude Code Evolution System initialized successfully!${NC}"
echo ""
echo "Next steps:"
echo "1. Review .claude/core/SYSTEM.md for system overview"
echo "2. Check .claude/evolution-config.json to configure your preferences"
echo "3. Start developing with enhanced Claude Code capabilities"
echo ""
echo -e "${BLUE}Tip: Use the evolution system commands in Claude Code to maximize productivity${NC}"