# Elevation

Material Design 3 elevation system for depth and visual hierarchy.

## Elevation Levels

<div class="dss-category-grid" markdown>

<div class="dss-category-card" style="box-shadow: none;">
<h4>Level 0</h4>
<p style="color: var(--md-default-fg-color--light);">No elevation, surface level</p>
<code style="font-size: 0.75rem;">none</code>
</div>

<div class="dss-category-card" style="box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3), 0px 1px 3px 1px rgba(0, 0, 0, 0.15);">
<h4>Level 1</h4>
<p style="color: var(--md-default-fg-color--light);">Low elevation for cards, buttons</p>
<code style="font-size: 0.75rem;">1dp</code>
</div>

<div class="dss-category-card" style="box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3), 0px 2px 6px 2px rgba(0, 0, 0, 0.15);">
<h4>Level 2</h4>
<p style="color: var(--md-default-fg-color--light);">Medium elevation for FABs, snackbars</p>
<code style="font-size: 0.75rem;">3dp</code>
</div>

<div class="dss-category-card" style="box-shadow: 0px 4px 8px 3px rgba(0, 0, 0, 0.15), 0px 1px 3px rgba(0, 0, 0, 0.3);">
<h4>Level 3</h4>
<p style="color: var(--md-default-fg-color--light);">High elevation for menus, dialogs</p>
<code style="font-size: 0.75rem;">6dp</code>
</div>

<div class="dss-category-card" style="box-shadow: 0px 6px 10px 4px rgba(0, 0, 0, 0.15), 0px 2px 3px rgba(0, 0, 0, 0.3);">
<h4>Level 4</h4>
<p style="color: var(--md-default-fg-color--light);">Higher elevation for navigation drawers</p>
<code style="font-size: 0.75rem;">8dp</code>
</div>

<div class="dss-category-card" style="box-shadow: 0px 8px 12px 6px rgba(0, 0, 0, 0.15), 0px 4px 4px rgba(0, 0, 0, 0.3);">
<h4>Level 5</h4>
<p style="color: var(--md-default-fg-color--light);">Maximum elevation for modals</p>
<code style="font-size: 0.75rem;">12dp</code>
</div>

</div>

## Token Reference

| Level | Shadow Value | Usage |
|-------|--------------|-------|
| `level0` | none | No elevation, surface level |
| `level1` | `0px 1px 2px rgba(0,0,0,0.3), 0px 1px 3px 1px rgba(0,0,0,0.15)` | Cards, buttons |
| `level2` | `0px 1px 2px rgba(0,0,0,0.3), 0px 2px 6px 2px rgba(0,0,0,0.15)` | FABs, snackbars |
| `level3` | `0px 4px 8px 3px rgba(0,0,0,0.15), 0px 1px 3px rgba(0,0,0,0.3)` | Menus, dialogs |
| `level4` | `0px 6px 10px 4px rgba(0,0,0,0.15), 0px 2px 3px rgba(0,0,0,0.3)` | Navigation drawers |
| `level5` | `0px 8px 12px 6px rgba(0,0,0,0.15), 0px 4px 4px rgba(0,0,0,0.3)` | Modals |

## CSS Variables

```css
:root {
  --md-elevation-level0: none;
  --md-elevation-level1: 0px 1px 2px rgba(0, 0, 0, 0.3),
                         0px 1px 3px 1px rgba(0, 0, 0, 0.15);
  --md-elevation-level2: 0px 1px 2px rgba(0, 0, 0, 0.3),
                         0px 2px 6px 2px rgba(0, 0, 0, 0.15);
  --md-elevation-level3: 0px 4px 8px 3px rgba(0, 0, 0, 0.15),
                         0px 1px 3px rgba(0, 0, 0, 0.3);
  --md-elevation-level4: 0px 6px 10px 4px rgba(0, 0, 0, 0.15),
                         0px 2px 3px rgba(0, 0, 0, 0.3);
  --md-elevation-level5: 0px 8px 12px 6px rgba(0, 0, 0, 0.15),
                         0px 4px 4px rgba(0, 0, 0, 0.3);
}
```

## Component Mapping

| Component | Default Level | Hover Level |
|-----------|---------------|-------------|
| Surface | 0 | - |
| Card | 1 | 2 |
| Button (Elevated) | 1 | 2 |
| FAB | 3 | 4 |
| Snackbar | 3 | - |
| Menu | 3 | - |
| Dialog | 3 | - |
| Navigation Drawer | 1 | - |
| Modal Sheet | 4 | - |

## Usage Examples

```css
/* Card with elevation */
.card {
  box-shadow: var(--md-elevation-level1);
  transition: box-shadow 0.2s ease;
}

.card:hover {
  box-shadow: var(--md-elevation-level2);
}

/* FAB */
.fab {
  box-shadow: var(--md-elevation-level3);
}

.fab:hover {
  box-shadow: var(--md-elevation-level4);
}

/* Dialog */
.dialog {
  box-shadow: var(--md-elevation-level3);
}
```

## Dark Mode Considerations

In dark mode, elevation is also represented through surface tint overlays, not just shadows. Higher elevations receive a lighter tint.

```css
/* Dark mode surface tint */
[data-theme="dark"] {
  --surface-tint-level1: rgba(103, 80, 164, 0.05);
  --surface-tint-level2: rgba(103, 80, 164, 0.08);
  --surface-tint-level3: rgba(103, 80, 164, 0.11);
  --surface-tint-level4: rgba(103, 80, 164, 0.12);
  --surface-tint-level5: rgba(103, 80, 164, 0.14);
}
```

See [m3.material.io/styles/elevation](https://m3.material.io/styles/elevation/overview) for more details.
