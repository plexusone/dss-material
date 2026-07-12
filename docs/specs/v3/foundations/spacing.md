# Spacing

Material Design 3 spacing system based on a 4px grid.

## Base Unit

| Property | Value |
|----------|-------|
| **Base Unit** | 4px |
| **Grid** | 4px increments |
| **Scale** | 0 to 24 (0px to 96px) |

## Spacing Scale

<div class="dss-spacing-scale" markdown>

<div class="dss-spacing-item">
<span class="dss-spacing-name">0</span>
<div class="dss-spacing-bar" style="width: 0px;"></div>
<span class="dss-spacing-value">0px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">1</span>
<div class="dss-spacing-bar" style="width: 4px;"></div>
<span class="dss-spacing-value">4px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">2</span>
<div class="dss-spacing-bar" style="width: 8px;"></div>
<span class="dss-spacing-value">8px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">3</span>
<div class="dss-spacing-bar" style="width: 12px;"></div>
<span class="dss-spacing-value">12px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">4</span>
<div class="dss-spacing-bar" style="width: 16px;"></div>
<span class="dss-spacing-value">16px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">5</span>
<div class="dss-spacing-bar" style="width: 20px;"></div>
<span class="dss-spacing-value">20px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">6</span>
<div class="dss-spacing-bar" style="width: 24px;"></div>
<span class="dss-spacing-value">24px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">8</span>
<div class="dss-spacing-bar" style="width: 32px;"></div>
<span class="dss-spacing-value">32px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">10</span>
<div class="dss-spacing-bar" style="width: 40px;"></div>
<span class="dss-spacing-value">40px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">12</span>
<div class="dss-spacing-bar" style="width: 48px;"></div>
<span class="dss-spacing-value">48px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">16</span>
<div class="dss-spacing-bar" style="width: 64px;"></div>
<span class="dss-spacing-value">64px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">20</span>
<div class="dss-spacing-bar" style="width: 80px;"></div>
<span class="dss-spacing-value">80px</span>
</div>

<div class="dss-spacing-item">
<span class="dss-spacing-name">24</span>
<div class="dss-spacing-bar" style="width: 96px;"></div>
<span class="dss-spacing-value">96px</span>
</div>

</div>

## Token Reference

| Token | Value | Pixels | Common Use |
|-------|-------|--------|------------|
| `space-0` | 0px | 0 | No spacing |
| `space-1` | 4px | 4 | Tight spacing, inline elements |
| `space-2` | 8px | 8 | Default padding for small elements |
| `space-3` | 12px | 12 | Medium spacing |
| `space-4` | 16px | 16 | Default component padding |
| `space-5` | 20px | 20 | Section spacing |
| `space-6` | 24px | 24 | Large section spacing |
| `space-8` | 32px | 32 | Page sections |
| `space-10` | 40px | 40 | Large gaps |
| `space-12` | 48px | 48 | Page margins |
| `space-16` | 64px | 64 | Section dividers |
| `space-20` | 80px | 80 | Large margins |
| `space-24` | 96px | 96 | Maximum spacing |

## CSS Variables

```css
:root {
  --md-spacing-0: 0px;
  --md-spacing-1: 4px;
  --md-spacing-2: 8px;
  --md-spacing-3: 12px;
  --md-spacing-4: 16px;
  --md-spacing-5: 20px;
  --md-spacing-6: 24px;
  --md-spacing-8: 32px;
  --md-spacing-10: 40px;
  --md-spacing-12: 48px;
  --md-spacing-16: 64px;
  --md-spacing-20: 80px;
  --md-spacing-24: 96px;
}
```

## Usage Guidelines

### Component Padding

```css
/* Card padding */
.card {
  padding: var(--md-spacing-4); /* 16px */
}

/* Button padding */
.button {
  padding: var(--md-spacing-2) var(--md-spacing-4); /* 8px 16px */
}
```

### Layout Gaps

```css
/* Stack layout */
.stack {
  display: flex;
  flex-direction: column;
  gap: var(--md-spacing-3); /* 12px */
}

/* Grid layout */
.grid {
  display: grid;
  gap: var(--md-spacing-4); /* 16px */
}
```

### Page Margins

```css
/* Page container */
.page {
  padding: var(--md-spacing-6); /* 24px on mobile */
}

@media (min-width: 768px) {
  .page {
    padding: var(--md-spacing-12); /* 48px on tablet+ */
  }
}
```

## Best Practices

1. **Stick to the scale** - Always use spacing tokens instead of arbitrary values
2. **Consistent padding** - Use the same spacing within similar components
3. **Responsive spacing** - Increase spacing on larger screens
4. **Visual rhythm** - Use consistent spacing to create visual flow
