# Components

Material Design 3 components with complete specifications for AI-assisted development.

## Component Library

<div class="dss-component-grid" markdown>

<div class="dss-component-card" markdown>

### Button

<span class="dss-component-category">Actions</span>

Buttons communicate actions that users can take. They help users interact with and take action on content.

<div class="dss-component-meta">
<span>5 variants</span>
<span>4 props</span>
<span>3 events</span>
</div>

[:octicons-arrow-right-24: View Button](button.md)

</div>

</div>

## Planned Components

The following components are planned for future releases:

| Category | Components |
|----------|------------|
| **Actions** | FAB, Icon Button, Segmented Button |
| **Communication** | Badge, Progress Indicator, Snackbar |
| **Containment** | Card, Carousel, Dialog, Divider, List |
| **Navigation** | Bottom App Bar, Navigation Bar, Navigation Drawer, Tabs, Top App Bar |
| **Selection** | Checkbox, Chips, Date Picker, Menu, Radio Button, Slider, Switch, Time Picker |
| **Text Inputs** | Text Field, Search |

## Component Anatomy

Each component specification includes:

### Basic Information

- **ID**: Unique identifier for programmatic access
- **Name**: Human-readable component name
- **Description**: Component purpose and usage
- **Category**: Functional category (actions, containment, etc.)
- **Documentation URL**: Link to official M3 documentation

### Variants

Different visual styles of the component:

```json
{
  "variants": [
    {
      "id": "filled",
      "name": "Filled",
      "description": "High-emphasis variant",
      "isDefault": true
    }
  ]
}
```

### Properties

Configurable component properties:

```json
{
  "props": [
    {
      "name": "disabled",
      "type": "boolean",
      "description": "Whether the component is disabled",
      "default": false
    }
  ]
}
```

### Events

User interaction events:

```json
{
  "events": [
    {
      "name": "click",
      "description": "Fired when activated",
      "bubbles": true
    }
  ]
}
```

### Slots

Content insertion points:

```json
{
  "slots": [
    {
      "name": "default",
      "description": "Primary content",
      "required": true
    }
  ]
}
```

### Accessibility

WCAG compliance requirements:

```json
{
  "accessibility": {
    "role": "button",
    "requiredAttributes": ["aria-label (when icon-only)"],
    "keyboardSupport": [
      {"key": "Enter", "action": "Activate"}
    ],
    "screenReaderNotes": "Announce label and state"
  }
}
```

### LLM Context

AI-specific guidance for implementation:

```json
{
  "llm": {
    "intent": "Trigger user actions",
    "allowedContexts": ["Forms", "Dialogs"],
    "forbiddenContexts": ["Navigation"],
    "antiPatterns": ["Multiple filled buttons"],
    "exampleUsage": ["<Button>Submit</Button>"]
  }
}
```

## Using Component Specs

### Load via Go SDK

```go
import "github.com/plexusone/dss-material"

ds, _ := dssmaterial.LoadV3()
button := ds.GetComponent("button")

// Access variants
for _, v := range button.Variants {
    fmt.Printf("%s: %s\n", v.Name, v.Description)
}

// Access LLM context
fmt.Println(button.LLM.Intent)
```

### Load via MCP Server

Use with Claude Desktop to get AI-assisted component implementation:

```
dss-material-mcp --version v3
```

The MCP server provides tools for:

- Getting component specifications
- Checking accessibility requirements
- Generating implementation guidance
