# Contributing to Claude Code Evolution

Thank you for your interest in contributing to the Claude Code Evolution System! This project aims to transform Claude Code into a self-learning, evolving development partner.

## How to Contribute

### 🐛 Reporting Bugs
- Check if the issue already exists
- Create a detailed bug report with reproduction steps
- Include your environment details (OS, Node/Python versions)

### 💡 Suggesting Features
- Open a discussion first for major features
- Provide use cases and examples
- Consider how it fits with the evolution system

### 🤖 Contributing Agents
New agent templates are always welcome! Place them in:
- `agents/templates/` for specialized agents
- `agents/personalities/` for personality agents

### 📚 Adding Patterns
Contribute discovered patterns to:
- `patterns/language-specific/[language]/`
- `patterns/architectural/[pattern-type]/`
- Include success metrics and use cases

### 📝 Improving Documentation
- Fix typos and clarify explanations
- Add examples and use cases
- Translate documentation

## Development Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Run tests (`npm test && pytest tests/`)
5. Commit with conventional commits (`feat:`, `fix:`, `docs:`)
6. Push to your fork
7. Open a Pull Request

## Code Style

- JavaScript/TypeScript: Prettier + ESLint
- Python: Black + Pylint
- Markdown: Prettier
- Follow existing patterns in the codebase

## Testing

- Add tests for new features
- Ensure all tests pass before submitting PR
- Include integration tests for system-level changes

## Good First Issues

Look for issues labeled `good first issue` to get started:
- Documentation improvements
- Simple pattern additions
- Test coverage improvements
- Example projects

## Recognition

Contributors will be:
- Listed in the README
- Mentioned in release notes
- Given credit in relevant documentation

## Questions?

Open a discussion in [GitHub Discussions](https://github.com/ebiyy/claude-code-evolution/discussions) or reach out via issues.

## License

By contributing, you agree that your contributions will be licensed under the MIT License.