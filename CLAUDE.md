# CLAUDE.md - DSS-Material

Project-specific instructions for Claude Code.

## Project Overview

DSS-Material provides Material Design 3 specifications in DSS format. The specs are JSON files that describe M3 components, tokens, and patterns.

## Workflow

### Adding or Updating Specs

1. Edit JSON files in `specs/v3/`
2. Validate with `dss eval -d ./specs/v3`
3. Generate docs with `dss render -d ./specs/v3 --output ./docs/v3`
4. Commit both specs and generated docs together

### Reference Sources

When extracting specs, reference:

- [M3 Guidelines](https://m3.material.io) - Official documentation
- `~/go/src/github.com/material-components/material-components-ios` - iOS implementation (archived but detailed docs)
- `~/go/src/github.com/material-components/material-web` - Web components

### Component Spec Structure

Each component JSON should include:

```json
{
  "id": "button",
  "name": "Button",
  "description": "...",
  "category": "actions",
  "variants": [...],
  "props": [...],
  "states": [...],
  "accessibility": {...},
  "llm": {...}
}
```

## Key Commands

```bash
# Evaluate spec quality
dss eval -d ./specs/v3

# Generate documentation
dss render -d ./specs/v3 --output ./docs/v3

# Build MCP server
go build ./cmd/dss-material-mcp
```

## Guidelines

- Follow M3 naming conventions exactly
- Include WCAG compliance requirements
- Add LLM context with anti-patterns and examples
- Reference M3 tokens using proper naming (e.g., `md.sys.color.primary`)
