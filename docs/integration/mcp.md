# MCP Server Integration

Use the DSS Material MCP server with Claude Desktop for AI-assisted Material Design implementation.

## Overview

The `dss-material-mcp` server provides Claude with access to Material Design 3 specifications, enabling:

- Component specification lookup
- Accessibility requirement checks
- Design token queries
- Implementation guidance

## Installation

### Prerequisites

- Go 1.21 or later
- Claude Desktop

### Install the Server

```bash
go install github.com/plexusone/dss-material/cmd/dss-material-mcp@latest
```

Verify installation:

```bash
dss-material-mcp --version
```

## Configuration

### Claude Desktop Setup

Add to your Claude Desktop configuration (`~/.claude/claude_desktop_config.json`):

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

### Configuration Options

| Flag | Default | Description |
|------|---------|-------------|
| `--version` | `v3` | Material Design version (`v3` or `v4`) |
| `--verbose` | `false` | Enable verbose logging |

## Available Tools

Once configured, Claude has access to these tools:

### `dss_get_component`

Get full specification for a component.

```
dss_get_component(id: "button")
```

Returns:

- Variants
- Properties
- Events
- Slots
- Accessibility requirements
- LLM context (anti-patterns, examples)

### `dss_list_components`

List all available components.

```
dss_list_components()
```

### `dss_get_token`

Get a design token value.

```
dss_get_token(category: "colors", id: "md-sys-color-primary")
```

### `dss_get_accessibility`

Get accessibility requirements for a component.

```
dss_get_accessibility(component: "button")
```

### `dss_get_anti_patterns`

Get anti-patterns to avoid for a component.

```
dss_get_anti_patterns(component: "button")
```

## Usage Examples

### Ask Claude About Components

> "How should I implement a Material Design button?"

Claude will use `dss_get_component("button")` to provide accurate specifications.

### Check Accessibility

> "What are the accessibility requirements for a dialog?"

Claude will use `dss_get_accessibility("dialog")` to list WCAG requirements.

### Get Design Tokens

> "What's the primary color in Material Design 3?"

Claude will query `dss_get_token("colors", "md-sys-color-primary")`.

## Troubleshooting

### Server Not Starting

Check the server runs standalone:

```bash
dss-material-mcp --version v3
# Should output: dss-material-mcp version X.Y.Z
```

### Tools Not Available

Ensure Claude Desktop configuration is correct:

1. Check JSON syntax in config file
2. Restart Claude Desktop
3. Check logs: `~/.claude/logs/`

### Debug Mode

Run with verbose logging:

```json
{
  "mcpServers": {
    "material-design": {
      "command": "dss-material-mcp",
      "args": ["--version", "v3", "--verbose"]
    }
  }
}
```

## Best Practices

1. **Be specific** - Ask about specific components or tokens
2. **Reference versions** - Mention "Material Design 3" for clarity
3. **Check anti-patterns** - Ask Claude to check for anti-patterns
4. **Verify accessibility** - Always confirm a11y requirements

## Related

- [Claude Desktop Setup](claude-desktop.md)
- [Component Specifications](../specs/v3/components/index.md)
- [Design Tokens](../specs/v3/index.md#foundations)
