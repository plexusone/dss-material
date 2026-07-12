# Colors

Material Design 3 dynamic color system with semantic color tokens.

## Color Palette

<div class="dss-color-grid" markdown>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #6750A4;"></div>
<div class="dss-color-info">
<div class="dss-color-name">Primary</div>
<div class="dss-color-value">#6750A4</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #FFFFFF; color: #1C1B1F;">Aa</div>
<div class="dss-color-info">
<div class="dss-color-name">On Primary</div>
<div class="dss-color-value">#FFFFFF</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #EADDFF;"></div>
<div class="dss-color-info">
<div class="dss-color-name">Primary Container</div>
<div class="dss-color-value">#EADDFF</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #21005D; color: #FFFFFF;">Aa</div>
<div class="dss-color-info">
<div class="dss-color-name">On Primary Container</div>
<div class="dss-color-value">#21005D</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #625B71;"></div>
<div class="dss-color-info">
<div class="dss-color-name">Secondary</div>
<div class="dss-color-value">#625B71</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #E8DEF8;"></div>
<div class="dss-color-info">
<div class="dss-color-name">Secondary Container</div>
<div class="dss-color-value">#E8DEF8</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #7D5260;"></div>
<div class="dss-color-info">
<div class="dss-color-name">Tertiary</div>
<div class="dss-color-value">#7D5260</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #B3261E;"></div>
<div class="dss-color-info">
<div class="dss-color-name">Error</div>
<div class="dss-color-value">#B3261E</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #FFFBFE;"></div>
<div class="dss-color-info">
<div class="dss-color-name">Surface</div>
<div class="dss-color-value">#FFFBFE</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #1C1B1F; color: #FFFFFF;">Aa</div>
<div class="dss-color-info">
<div class="dss-color-name">On Surface</div>
<div class="dss-color-value">#1C1B1F</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #E7E0EC;"></div>
<div class="dss-color-info">
<div class="dss-color-name">Surface Variant</div>
<div class="dss-color-value">#E7E0EC</div>
</div>
</div>

<div class="dss-color-swatch">
<div class="dss-color-preview" style="background: #79747E;"></div>
<div class="dss-color-info">
<div class="dss-color-name">Outline</div>
<div class="dss-color-value">#79747E</div>
</div>
</div>

</div>

## Color Tokens

| Token ID | Value | Semantic | Usage |
|----------|-------|----------|-------|
| `md-sys-color-primary` | #6750A4 | primary | Primary brand color for key actions and emphasis |
| `md-sys-color-on-primary` | #FFFFFF | on-primary | Text/icons on primary color |
| `md-sys-color-primary-container` | #EADDFF | primary-container | Elevated containers with primary tone |
| `md-sys-color-on-primary-container` | #21005D | on-primary-container | Text/icons on primary container |
| `md-sys-color-secondary` | #625B71 | secondary | Secondary actions and less prominent UI elements |
| `md-sys-color-on-secondary` | #FFFFFF | on-secondary | Text/icons on secondary color |
| `md-sys-color-secondary-container` | #E8DEF8 | secondary-container | Containers with secondary emphasis |
| `md-sys-color-tertiary` | #7D5260 | tertiary | Accent color for contrast with primary and secondary |
| `md-sys-color-error` | #B3261E | error | Error states and destructive actions |
| `md-sys-color-on-error` | #FFFFFF | on-error | Text/icons on error color |
| `md-sys-color-surface` | #FFFBFE | surface | Background for cards, sheets, and menus |
| `md-sys-color-on-surface` | #1C1B1F | on-surface | Text/icons on surface |
| `md-sys-color-surface-variant` | #E7E0EC | surface-variant | Alternative surface for differentiation |
| `md-sys-color-outline` | #79747E | outline | Borders and dividers |
| `md-sys-color-outline-variant` | #CAC4D0 | outline-variant | Subtle borders and dividers |

## Usage Guidelines

### Primary Colors

Use primary colors for:

- Primary call-to-action buttons
- Key UI elements requiring emphasis
- Brand identity elements

```css
.button-primary {
  background-color: var(--md-sys-color-primary);
  color: var(--md-sys-color-on-primary);
}
```

### Container Colors

Container colors provide a subtle background while maintaining readability:

```css
.chip {
  background-color: var(--md-sys-color-primary-container);
  color: var(--md-sys-color-on-primary-container);
}
```

### Error States

Use error colors for validation messages and destructive actions:

```css
.error-message {
  color: var(--md-sys-color-error);
}

.delete-button {
  background-color: var(--md-sys-color-error);
  color: var(--md-sys-color-on-error);
}
```

## Dynamic Color

Material Design 3 supports dynamic color schemes generated from user wallpapers or brand colors. The color tokens above represent the baseline palette.

See [m3.material.io/styles/color](https://m3.material.io/styles/color/overview) for more details.
