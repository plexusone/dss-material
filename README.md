# DSS-Material

[![Go CI][go-ci-svg]][go-ci-url]
[![Go Lint][go-lint-svg]][go-lint-url]
[![Go SAST][go-sast-svg]][go-sast-url]
[![Docs][docs-godoc-svg]][docs-godoc-url]
[![Visualization][viz-svg]][viz-url]
[![License][license-svg]][license-url]

 [go-ci-svg]: https://github.com/plexusone/dss-material/actions/workflows/go-ci.yaml/badge.svg?branch=main
 [go-ci-url]: https://github.com/plexusone/dss-material/actions/workflows/go-ci.yaml
 [go-lint-svg]: https://github.com/plexusone/dss-material/actions/workflows/go-lint.yaml/badge.svg?branch=main
 [go-lint-url]: https://github.com/plexusone/dss-material/actions/workflows/go-lint.yaml
 [go-sast-svg]: https://github.com/plexusone/dss-material/actions/workflows/go-sast-codeql.yaml/badge.svg?branch=main
 [go-sast-url]: https://github.com/plexusone/dss-material/actions/workflows/go-sast-codeql.yaml
 [docs-godoc-svg]: https://pkg.go.dev/badge/github.com/plexusone/dss-material
 [docs-godoc-url]: https://pkg.go.dev/github.com/plexusone/dss-material
 [docs-mkdoc-svg]: https://img.shields.io/badge/Go-dev%20guide-blue.svg
 [docs-mkdoc-url]: https://plexusone.dev/dss-material
 [viz-svg]: https://img.shields.io/badge/Go-visualizaton-blue.svg
 [viz-url]: https://mango-dune-07a8b7110.1.azurestaticapps.net/?repo=plexusone%2Fdss-material
 [loc-svg]: https://tokei.rs/b1/github/plexusone/dss-material
 [repo-url]: https://github.com/plexusone/dss-material
 [license-svg]: https://img.shields.io/badge/license-MIT-blue.svg
 [license-url]: https://github.com/plexusone/dss-material/blob/main/LICENSE

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
    ├── button.json        # 5 variants
    ├── textfield.json     # Filled, outlined
    ├── checkbox.json
    ├── tabs.json
    ├── dialog.json
    └── ... (23 components)
```

## Component Coverage

23 components with full DSS specifications:

**Input Controls**
- Button (5 variants: filled, outlined, text, elevated, tonal)
- Checkbox, Radio, Switch, Slider
- Text Field (filled, outlined), Select

**Actions**
- Icon Button (4 variants: standard, filled, filled-tonal, outlined)
- FAB (surface, primary, secondary, tertiary, branded)
- Chips (assist, filter, input, suggestion)

**Navigation**
- Tabs (primary, secondary)
- Menu, Navigation Drawer, Navigation Rail, Navigation Bar
- Top App Bar (small, medium, large, center-aligned)

**Containment**
- Dialog, Card (elevated, filled, outlined), List, Divider

**Communication**
- Progress Indicator (linear, circular), Snackbar, Icon

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
