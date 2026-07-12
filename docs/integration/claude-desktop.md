# Claude Desktop Setup

Complete guide to setting up DSS Material with Claude Desktop.

## Prerequisites

- [Claude Desktop](https://claude.ai/download) installed
- Go 1.21+ (for installing MCP server)
- Terminal access

## Step 1: Install MCP Server

```bash
go install github.com/plexusone/dss-material/cmd/dss-material-mcp@latest
```

Verify it's in your PATH:

```bash
which dss-material-mcp
```

If not found, add `$GOPATH/bin` to your PATH:

```bash
export PATH="$PATH:$(go env GOPATH)/bin"
```

## Step 2: Configure Claude Desktop

### Locate Config File

| OS | Path |
|----|------|
| macOS | `~/.claude/claude_desktop_config.json` |
| Windows | `%APPDATA%\Claude\claude_desktop_config.json` |
| Linux | `~/.config/claude/claude_desktop_config.json` |

### Add MCP Server

Edit the config file:

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

!!! note "Multiple Servers"
    You can add multiple MCP servers. Each server name must be unique:

    ```json
    {
      "mcpServers": {
        "material-design": {
          "command": "dss-material-mcp",
          "args": ["--version", "v3"]
        },
        "other-server": {
          "command": "other-mcp-server"
        }
      }
    }
    ```

## Step 3: Restart Claude Desktop

1. Quit Claude Desktop completely
2. Reopen Claude Desktop
3. The MCP server should now be available

## Step 4: Verify Setup

Start a new conversation and ask:

> "What Material Design components are available?"

If working correctly, Claude will use the `dss_list_components` tool.

## Using DSS Material

### Component Specifications

Ask about any Material Design component:

- "How do I implement a filled button?"
- "What variants does the card component have?"
- "Show me the text field properties"

### Design Tokens

Query design tokens:

- "What's the primary color?"
- "Show me the typography scale"
- "What are the elevation levels?"

### Accessibility

Check accessibility requirements:

- "What are the keyboard shortcuts for buttons?"
- "What ARIA attributes do I need for a dialog?"
- "How should I handle focus in a modal?"

### Anti-Patterns

Avoid common mistakes:

- "What are button anti-patterns?"
- "What should I avoid when implementing cards?"

## Example Workflows

### Building a Form

> "I need to build a login form with Material Design. What components should I use and what are their specs?"

Claude will:

1. Suggest TextField, Button components
2. Provide specifications for each
3. Include accessibility requirements
4. Warn about anti-patterns

### Theming

> "I want to create a custom Material theme. What tokens do I need to customize?"

Claude will:

1. List color tokens
2. Explain dynamic color system
3. Provide token values for reference

### Code Review

> "Review this button implementation for Material Design compliance: [code]"

Claude will:

1. Check against component specification
2. Verify accessibility requirements
3. Identify anti-patterns
4. Suggest improvements

## Troubleshooting

### "Tools not available"

1. Check config JSON syntax
2. Verify server is installed: `which dss-material-mcp`
3. Restart Claude Desktop
4. Check logs: `~/.claude/logs/mcp.log`

### "Server connection failed"

1. Test server standalone: `dss-material-mcp --version v3`
2. Check for port conflicts
3. Ensure Go binary is executable

### "Unknown component"

The component may not be in the spec yet. Check [coverage](../evals/coverage.md) for available components.

## Next Steps

- Explore [Component Specifications](../specs/v3/components/index.md)
- Review [Design Tokens](../specs/v3/index.md#foundations)
- Check [Evaluation Dashboard](../evals/index.md) for spec completeness
