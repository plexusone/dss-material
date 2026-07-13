# DSS Material

Machine-readable Material Design 3 specifications in Design System Spec format.

## Overview

**DSS Material** provides Material Design 3 specifications in a structured, machine-readable format that enables:

- **AI-Assisted Development**: LLMs can understand component specs, variants, and accessibility requirements
- **Automated Evaluation**: Measure spec completeness and application conformance
- **Cross-Platform Consistency**: Platform-agnostic source of truth for all implementations

## Quick Links

<div class="grid cards" markdown>

-   :material-palette:{ .lg .middle } __Foundations__

    ---

    Design tokens: colors, typography, spacing, elevation

    [:octicons-arrow-right-24: View Foundations](specs/tokens.html)

-   :material-view-grid:{ .lg .middle } __Components__

    ---

    23 Material Design 3 component specifications

    [:octicons-arrow-right-24: View Components](specs/components.html)

-   :material-chart-bar:{ .lg .middle } __Evaluation__

    ---

    Spec completeness metrics and coverage dashboard

    [:octicons-arrow-right-24: View Evaluation](specs/eval.html)

-   :material-code-braces:{ .lg .middle } __MCP Server__

    ---

    Use with Claude Desktop for AI-assisted development

    [:octicons-arrow-right-24: Integration Guide](integration/mcp.md)

</div>

## Live Component Demos

Material Web components rendered directly from the [material-web](https://github.com/material-components/material-web) library:

### Buttons

<div class="md-demo">
  <md-filled-button>Filled</md-filled-button>
  <md-outlined-button>Outlined</md-outlined-button>
  <md-text-button>Text</md-text-button>
  <md-elevated-button>Elevated</md-elevated-button>
  <md-filled-tonal-button>Tonal</md-filled-tonal-button>
</div>

### Selection Controls

<div class="md-demo">
  <md-checkbox></md-checkbox>
  <md-checkbox checked></md-checkbox>
  <md-checkbox indeterminate></md-checkbox>
  <md-switch></md-switch>
  <md-switch selected></md-switch>
</div>

### Text Fields

<div class="md-demo md-demo-vertical">
  <md-filled-text-field label="Filled text field" value="Input text"></md-filled-text-field>
  <md-outlined-text-field label="Outlined text field" value="Input text"></md-outlined-text-field>
</div>

### Icon Buttons & FABs

<div class="md-demo">
  <md-icon-button><md-icon>settings</md-icon></md-icon-button>
  <md-filled-icon-button><md-icon>favorite</md-icon></md-filled-icon-button>
  <md-filled-tonal-icon-button><md-icon>edit</md-icon></md-filled-tonal-icon-button>
  <md-outlined-icon-button><md-icon>share</md-icon></md-outlined-icon-button>
  <md-fab><md-icon slot="icon">add</md-icon></md-fab>
</div>

### Progress Indicators

<div class="md-demo md-demo-vertical" style="width: 100%;">
  <md-linear-progress value="0.6" style="width: 100%;"></md-linear-progress>
  <div style="display: flex; gap: 1rem; align-items: center;">
    <md-circular-progress value="0.7"></md-circular-progress>
    <md-circular-progress indeterminate></md-circular-progress>
  </div>
</div>

### Slider

<div class="md-demo md-demo-vertical" style="width: 100%;">
  <md-slider value="50" style="width: 100%;"></md-slider>
  <md-slider range value-start="25" value-end="75" style="width: 100%;"></md-slider>
</div>

---

## Why DSS?

Official Material Design implementations are in maintenance mode:

| Repository | Status |
|------------|--------|
| `material-components/material-web` | Maintenance mode, pending maintainers |
| `material-components-android` | Migrating to Compose |
| `material-components-flutter` | Archived Nov 2023 |
| `material-components-ios` | Archived Dec 2025 |

**DSS Material** provides a platform-agnostic specification that:

1. Preserves detailed component documentation
2. Enables AI agents to generate compliant implementations
3. Supports automated quality evaluation
4. Works across all platforms and frameworks

## Installation

### Go Library

```bash
go get github.com/plexusone/dss-material
```

### MCP Server for Claude

```bash
go install github.com/plexusone/dss-material/cmd/dss-material-mcp@latest
```

Configure in Claude Desktop:

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

## Spec Structure

```
specs/v3/
├── meta.json           # Version, description
├── accessibility.json  # Global a11y requirements
├── foundations/
│   ├── colors.json     # Dynamic color system
│   ├── typography.json # Type scale
│   ├── spacing.json    # Spacing tokens
│   └── elevation.json  # Shadow definitions
└── components/
    ├── button.json     # 5 variants
    ├── textfield.json  # filled, outlined
    ├── dialog.json
    └── ...             # 23 components
```

## License

MIT License - See [LICENSE](https://github.com/plexusone/dss-material/blob/main/LICENSE) for details.
