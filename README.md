# DSS-Material

Material Design 3 specification in DSS (Design System Spec) format.

## Overview

This repository contains machine-readable specifications for Material Design 3, enabling:

- AI-assisted component implementation across platforms
- Automated evaluation and quality metrics
- Static documentation generation
- MCP server integration for Claude and other AI assistants

## Why DSS for Material?

Official Material implementations are in maintenance mode or archived:

- `material-components/material-web` - maintenance mode
- `material-components/material-components-android` - migrating to Compose
- `material-components-flutter/` - archived Nov 30, 2023
- `material-components-ios/` - archived Dec 10, 2025

DSS provides a platform-agnostic source of truth that can drive implementations across all platforms.

## Installation

```bash
# Install the MCP server
go install github.com/plexusone/dss-material/cmd/dss-material-mcp@latest

# Or build from source
git clone https://github.com/plexusone/dss-material.git
cd dss-material
go build ./cmd/dss-material-mcp
```

## Usage

### MCP Server

Add to your Claude Desktop configuration:

```json
{
  "mcpServers": {
    "material-design": {
      "command": "dss-material-mcp",
      "args": ["--version", "v3"]
    }
  }
}
```

### CLI Tools

```bash
# Evaluate the spec
dss eval -d ./specs/v3 --json > evals/v3.json

# Generate HTML documentation
dss render -d ./specs/v3 --output ./docs/v3

# Generate LLM context
dss generate -d ./specs/v3 --llm ./CONTEXT.md
```

## Spec Structure

```
specs/v3/
├── meta.json              # Design system metadata
├── accessibility.json     # WCAG and a11y requirements
├── foundations/
│   ├── colors.json        # M3 dynamic color system
│   ├── typography.json    # Type scale
│   ├── spacing.json       # Spacing tokens
│   ├── elevation.json     # Shadow levels
│   ├── motion.json        # Animation tokens
│   └── shape.json         # Border radius
└── components/
    ├── button.json
    ├── fab.json
    ├── card.json
    └── ... (30+ components)
```

## Component Coverage

| Component | Status | Notes |
|-----------|--------|-------|
| Button | In Progress | Filled, outlined, text, elevated, tonal |
| FAB | Planned | Regular, small, large, extended |
| Card | Planned | Elevated, filled, outlined |
| Checkbox | Planned | |
| Chips | Planned | Assist, filter, input, suggestion |
| Dialog | Planned | Basic, full-screen |
| ... | | |

## Evaluation

Run evaluation to measure spec completeness:

```bash
dss eval -d ./specs/v3
```

Categories evaluated:

- **Completeness (25%)**: Required fields, foundations, components
- **Agent-Readiness (30%)**: LLM context, anti-patterns, examples
- **Accessibility (25%)**: WCAG, keyboard, screen reader requirements
- **Documentation (20%)**: Descriptions, usage guidance

## Contributing

1. Fork the repository
2. Add or update specs in `specs/v3/`
3. Run `dss eval` to check quality
4. Submit a pull request

## Related Projects

- [design-system-spec](https://github.com/plexusone/design-system-spec) - DSS SDK and CLI
- [Material Design 3](https://m3.material.io) - Official M3 documentation
- [material-web](https://github.com/material-components/material-web) - Web Components (maintenance mode)

## License

Apache 2.0
