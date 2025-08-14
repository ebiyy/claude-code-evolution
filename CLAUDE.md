# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the Claude Code Evolution System - a comprehensive framework for transforming Claude Code into a self-learning, evolving development partner that can handle massive codebases (10,000+ files) while maintaining context and improving autonomously.

## Repository Architecture

```
claude-code-evolution/
├── core/                 # Core system implementation
├── agents/              # Agent templates and personalities
├── patterns/            # Language and architectural patterns
├── templates/           # Project starter templates
├── commands/            # Custom Claude commands
├── hooks/               # System hooks for automation
├── rag/                 # RAG (Retrieval-Augmented Generation) configs
├── tools/               # Utility tools and scripts
├── docs/                # Documentation
├── examples/            # Example implementations
└── tests/               # Test suite
```

## Development Commands

### Project Setup
```bash
# Install all dependencies (Node.js + Python)
npm install
pip install -r requirements.txt

# Initialize the evolution system for a project
./core/init-system.sh

# Configure for specific domain (web|api|ml|mobile)
./scripts/configure-domain.sh [domain]
```

### Testing & Quality
```bash
# Run all tests
npm test          # JavaScript tests
pytest tests/     # Python tests

# Linting
npm run lint      # eslint for JS
pylint **/*.py    # Python linting

# Code formatting
npm run format    # Prettier for JS/TS/JSON/MD
black .           # Python formatting
```

### Evolution System Commands
```bash
# Check evolution status
python core/evolution-engine.py check

# Trigger evolution if needed
python core/evolution-engine.py trigger

# Analyze patterns in codebase
python core/pattern-detector.py

# Backup to Gist
./tools/backup/backup-to-gist.sh

# Generate metrics
python tools/analytics/generate-metrics.py
```

## Key System Components

### 1. Memory Management System
- **L1 (Hot)**: Active task + current context
- **L2 (Warm)**: Recent patterns + decisions
- **L3 (Cold)**: Archived knowledge (searchable via RAG)

### 2. Agent System
- **Core Agents**: architect, reviewer, learner
- **Domain Agents**: Specialized per domain (web, mobile, backend, ML)
- **Personality Agents**: no-try-catch-man, functional-purist, arrow-extremist

### 3. Pattern Detection
- Auto-detects recurring patterns after 3+ occurrences
- Generalizes patterns into reusable knowledge
- Language-specific pattern libraries in `patterns/language-specific/`

### 4. Task Management
- Hierarchical: Epics → Stories → Tasks
- Smart task selection based on context relevance
- Backlog system with automatic prioritization

## Working with Large Codebases

### Context Optimization
- Use tiered memory system to avoid context overflow
- Compress context when token usage > 80%
- Archive inactive patterns to Gist for retrieval

### Navigation Helpers
- Module dependency maps in `navigation/maps/`
- API and component indexes for quick reference
- Bookmarks for frequently accessed code sections

## Custom Claude Commands

The system extends Claude with custom commands:
- `/init-project` - Initialize new project
- `/next-task` - Get optimal next task
- `/compress` - Optimize context usage
- `/learn` - Record new learning
- `/evolve` - Check evolution status
- `/switch-domain` - Change domain context

## RAG Integration

Supports multiple vector databases:
- **ChromaDB** (local development)
- **Pinecone** (production)
- **Weaviate** (hybrid search)
- **Qdrant** (high performance)

## Important Patterns

### Error Handling
- Prefer explicit error handling patterns
- Document error recovery strategies
- Add to antipatterns when problematic

### Code Evolution
- System learns from every interaction
- Patterns evolve based on success rates
- Failed approaches are documented as antipatterns

## Environment Setup

Required:
- Node.js 18+
- Python 3.9+
- Git
- mise (for runtime management)

Optional:
- Docker (for advanced features)
- Vector DB of choice

## Migration from Basic Claude

For existing Claude Code projects:
1. Run migration tool: `./tools/migration/migrate.sh`
2. Import existing CLAUDE.md content
3. Convert patterns to evolution system format

## Notes

- This is a meta-framework for Claude Code itself
- Designed to scale from small to enterprise projects
- Self-improving through pattern detection and learning
- Community-driven agent and pattern contributions welcome