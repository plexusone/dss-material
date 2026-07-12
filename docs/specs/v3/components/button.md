# Button

<span class="dss-component-category">Actions</span>
<span class="dss-a11y-badge">:material-check: WCAG AA</span>

Buttons communicate actions that users can take. They help users interact with and take action on content.

## Overview

| Property | Value |
|----------|-------|
| **ID** | `button` |
| **Category** | Actions |
| **Documentation** | [m3.material.io/components/buttons](https://m3.material.io/components/buttons/overview) |

## Variants

<div class="dss-category-grid" markdown>

<div class="dss-category-card" markdown>

### Filled <span style="font-size: 0.75rem; color: var(--md-primary-fg-color);">(Default)</span>

High-emphasis buttons for primary, important, or final actions.

```html
<button class="md-filled-button">Submit</button>
```

</div>

<div class="dss-category-card" markdown>

### Outlined

Medium-emphasis buttons for important actions that don't distract from other content.

```html
<button class="md-outlined-button">Cancel</button>
```

</div>

<div class="dss-category-card" markdown>

### Text

Low-emphasis buttons for less important actions, often used in cards and dialogs.

```html
<button class="md-text-button">Learn More</button>
```

</div>

<div class="dss-category-card" markdown>

### Elevated

Medium-emphasis buttons that lift up from the page with shadow.

```html
<button class="md-elevated-button">Continue</button>
```

</div>

<div class="dss-category-card" markdown>

### Tonal

Medium-emphasis buttons using secondary container color.

```html
<button class="md-tonal-button">Save Draft</button>
```

</div>

</div>

## Properties

| Name | Type | Default | Description |
|------|------|---------|-------------|
| `variant` | `enum` | `filled` | Visual style: `filled`, `outlined`, `text`, `elevated`, `tonal` |
| `disabled` | `boolean` | `false` | Whether the button is disabled |
| `icon` | `node` | - | Optional leading icon |
| `trailingIcon` | `boolean` | `false` | Whether icon appears after text |

## States

| State | Description |
|-------|-------------|
| **Enabled** | Default interactive state |
| **Disabled** | Non-interactive state |
| **Hovered** | Mouse hover state |
| **Focused** | Keyboard focus state |
| **Pressed** | Active/pressed state |

## Events

| Event | Description | Bubbles |
|-------|-------------|---------|
| `click` | Fired when the button is clicked or activated | Yes |
| `focus` | Fired when the button receives focus | No |
| `blur` | Fired when the button loses focus | No |

## Slots

| Slot | Required | Description |
|------|----------|-------------|
| `default` | Yes | Button label text |
| `icon` | No | Leading icon slot |

## Design Tokens

This component uses the following tokens:

- `md-sys-color-primary`
- `md-sys-color-on-primary`
- `md-sys-color-primary-container`
- `md-sys-color-outline`

## Accessibility

### ARIA Role

```html
<button role="button">Action</button>
```

### Required Attributes

- `aria-label` when icon-only

### Keyboard Support

| Key | Action |
|-----|--------|
| ++enter++ | Activate the button |
| ++space++ | Activate the button |

### Screen Reader Notes

Announce button label and state. For icon-only buttons, provide `aria-label`.

### Focus Management

Receives focus in tab order. Focus ring visible on keyboard focus.

## Constraints

| Property | Value |
|----------|-------|
| **Min Width** | 64px |
| **Responsive** | Scales with content, wraps on narrow screens |

## LLM Context

### Intent

Trigger user actions and form submissions

### Allowed Contexts

- Primary call-to-action in forms
- Dialog actions (confirm, cancel)
- Card actions
- Toolbar actions

### Forbidden Contexts

- Navigation (use links instead)
- Inline text actions

### Related Components

- [FAB](fab.md) (planned)
- [Icon Button](iconbutton.md) (planned)
- [Segmented Button](segmented-button.md) (planned)

## Anti-Patterns

!!! warning "Avoid These Patterns"

    - **Multiple filled buttons** in the same view - use one primary action
    - **Icon-only button without aria-label** - accessibility violation
    - **Disabled button without explanation** - users need to know why
    - **Using button for navigation** - use links instead

## Example Usage

=== "Basic"

    ```html
    <button class="md-filled-button">Submit</button>
    ```

=== "With Icon"

    ```html
    <button class="md-outlined-button">
      <svg class="icon">...</svg>
      Add Item
    </button>
    ```

=== "Disabled"

    ```html
    <button class="md-text-button" disabled>
      Loading...
    </button>
    ```

=== "React"

    ```jsx
    <Button variant="filled">Submit</Button>
    <Button variant="outlined" icon={<AddIcon />}>Add Item</Button>
    <Button variant="text" disabled>Loading...</Button>
    ```

## JSON Spec

??? abstract "View Full JSON"

    ```json
    {
      "id": "button",
      "name": "Button",
      "description": "Buttons communicate actions that users can take.",
      "category": "actions",
      "variants": [
        {"id": "filled", "name": "Filled", "isDefault": true},
        {"id": "outlined", "name": "Outlined"},
        {"id": "text", "name": "Text"},
        {"id": "elevated", "name": "Elevated"},
        {"id": "tonal", "name": "Tonal"}
      ],
      "props": [
        {"name": "variant", "type": "enum", "default": "filled"},
        {"name": "disabled", "type": "boolean", "default": false},
        {"name": "icon", "type": "node"},
        {"name": "trailingIcon", "type": "boolean", "default": false}
      ],
      "accessibility": {
        "role": "button",
        "keyboardSupport": [
          {"key": "Enter", "action": "Activate"},
          {"key": "Space", "action": "Activate"}
        ]
      }
    }
    ```
