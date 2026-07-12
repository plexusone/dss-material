# Material Design 3 Specification

<div class="dss-stats-grid" markdown>

<div class="dss-stat-card" markdown>
<div class="dss-stat-value">15</div>
<div class="dss-stat-label">Colors</div>
</div>

<div class="dss-stat-card" markdown>
<div class="dss-stat-value">15</div>
<div class="dss-stat-label">Type Scales</div>
</div>

<div class="dss-stat-card" markdown>
<div class="dss-stat-value">13</div>
<div class="dss-stat-label">Spacing Tokens</div>
</div>

<div class="dss-stat-card" markdown>
<div class="dss-stat-value">1</div>
<div class="dss-stat-label">Components</div>
</div>

</div>

## Overview

Material Design 3 (M3) is Google's open-source design system for building beautiful, usable products across platforms. This DSS specification captures the complete M3 design language in a machine-readable format.

| Property | Value |
|----------|-------|
| **Version** | 3.0.0 |
| **License** | Apache-2.0 |
| **Documentation** | [m3.material.io](https://m3.material.io) |
| **Repository** | [plexusone/dss-material](https://github.com/plexusone/dss-material) |

## Foundations

Design tokens form the foundation of Material Design 3:

<div class="dss-category-grid" markdown>

<div class="dss-category-card" markdown>

### Colors

Dynamic color system with primary, secondary, tertiary, and semantic colors.

- 15 color tokens
- Light and dark mode support
- On-color variants for accessibility

[:octicons-arrow-right-24: View Colors](foundations/colors.md)

</div>

<div class="dss-category-card" markdown>

### Typography

Type scale system with display, headline, title, body, and label styles.

- 15 type scale tokens
- Roboto font family
- Consistent line heights

[:octicons-arrow-right-24: View Typography](foundations/typography.md)

</div>

<div class="dss-category-card" markdown>

### Spacing

4px base unit spacing scale.

- 13 spacing tokens
- Consistent increments
- Responsive layouts

[:octicons-arrow-right-24: View Spacing](foundations/spacing.md)

</div>

<div class="dss-category-card" markdown>

### Elevation

Shadow system for depth and hierarchy.

- 6 elevation levels
- Progressive shadow intensity
- Modal hierarchy support

[:octicons-arrow-right-24: View Elevation](foundations/elevation.md)

</div>

</div>

## Components

Material Design 3 components with full specifications:

| Component | Category | Variants | Props | Status |
|-----------|----------|----------|-------|--------|
| [Button](components/button.md) | Actions | 5 | 4 | Complete |

!!! note "Work in Progress"
    Additional components are being added. See the [Roadmap](https://github.com/plexusone/dss-material#roadmap) for planned components.

## JSON Spec

All specifications are available in JSON format:

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
    └── button.json     # Button component
```

### Loading Specs Programmatically

```go
import "github.com/plexusone/dss-material"

// Load embedded specs
ds, err := dssmaterial.LoadV3()
if err != nil {
    log.Fatal(err)
}

// Access components
for _, comp := range ds.Components {
    fmt.Printf("%s: %d variants\n", comp.Name, len(comp.Variants))
}
```
