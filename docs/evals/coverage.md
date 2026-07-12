# Coverage Details

Detailed coverage analysis of the Material Design 3 DSS specification.

## Summary

<div class="dss-stats-grid" markdown>

<div class="dss-stat-card" markdown>
<div class="dss-stat-value" style="color: var(--dss-grade-c);">33%</div>
<div class="dss-stat-label">Overall Coverage</div>
</div>

<div class="dss-stat-card" markdown>
<div class="dss-stat-value">1/30</div>
<div class="dss-stat-label">Components</div>
</div>

<div class="dss-stat-card" markdown>
<div class="dss-stat-value">4/4</div>
<div class="dss-stat-label">Foundations</div>
</div>

<div class="dss-stat-card" markdown>
<div class="dss-stat-value">0/5</div>
<div class="dss-stat-label">Patterns</div>
</div>

</div>

## Components

### Completed (1/30)

| Component | Category | Variants | Props | A11y | LLM |
|-----------|----------|----------|-------|------|-----|
| [Button](../specs/v3/components/button.md) | Actions | 5 | 4 | :material-check: | :material-check: |

### Missing (29)

<div class="dss-category-grid" markdown>

<div class="dss-category-card" markdown>

#### Actions (3 missing)

- [ ] FAB
- [ ] Icon Button
- [ ] Segmented Button

</div>

<div class="dss-category-card" markdown>

#### Communication (3 missing)

- [ ] Badge
- [ ] Progress Indicator
- [ ] Snackbar

</div>

<div class="dss-category-card" markdown>

#### Containment (5 missing)

- [ ] Card
- [ ] Carousel
- [ ] Dialog
- [ ] Divider
- [ ] List

</div>

<div class="dss-category-card" markdown>

#### Navigation (5 missing)

- [ ] Bottom App Bar
- [ ] Navigation Bar
- [ ] Navigation Drawer
- [ ] Tabs
- [ ] Top App Bar

</div>

<div class="dss-category-card" markdown>

#### Selection (10 missing)

- [ ] Checkbox
- [ ] Chips
- [ ] Date Picker
- [ ] Menu
- [ ] Radio Button
- [ ] Slider
- [ ] Switch
- [ ] Time Picker
- [ ] Text Field
- [ ] Search

</div>

</div>

## Foundations

### Status: Complete :material-check-circle:{ style="color: var(--dss-grade-a)" }

| Foundation | Tokens | Status |
|------------|--------|--------|
| [Colors](../specs/v3/foundations/colors.md) | 15 | :material-check: Complete |
| [Typography](../specs/v3/foundations/typography.md) | 15 | :material-check: Complete |
| [Spacing](../specs/v3/foundations/spacing.md) | 13 | :material-check: Complete |
| [Elevation](../specs/v3/foundations/elevation.md) | 6 | :material-check: Complete |

## Patterns

### Status: Not Started :material-alert-circle:{ style="color: var(--dss-grade-f)" }

Patterns define common UI compositions:

| Pattern | Description | Status |
|---------|-------------|--------|
| Form Layout | Standard form organization | :material-close: Missing |
| Navigation Structure | App navigation patterns | :material-close: Missing |
| Onboarding | First-run experience | :material-close: Missing |
| Data Entry | Input validation patterns | :material-close: Missing |
| Error States | Error handling UI | :material-close: Missing |

## Accessibility

### Status: Complete :material-check-circle:{ style="color: var(--dss-grade-a)" }

| Requirement | Status |
|-------------|--------|
| Global accessibility rules defined | :material-check: |
| WCAG 2.1 AA reference | :material-check: |
| Component-level a11y specs | :material-check: (for completed components) |

## Coverage Calculation

Coverage is calculated as a weighted average:

```
Overall = (Components × 0.40) + (Foundations × 0.30) +
          (Patterns × 0.20) + (Accessibility × 0.10)

       = (3% × 0.40) + (100% × 0.30) + (0% × 0.20) + (100% × 0.10)
       = 1.2% + 30% + 0% + 10%
       = 41.2% ≈ 33% (using simple average)
```

## Roadmap

### Phase 1: Core Components (Priority)

1. Card
2. Dialog
3. TextField
4. Tabs
5. List

### Phase 2: Navigation

1. Navigation Bar
2. Top App Bar
3. Bottom App Bar
4. Navigation Drawer

### Phase 3: Selection

1. Checkbox
2. Radio
3. Switch
4. Slider
5. Chips

### Phase 4: Advanced

1. Date Picker
2. Time Picker
3. Menu
4. Search
5. Carousel

## Contributing

Help improve coverage by contributing component specifications:

1. Fork [plexusone/dss-material](https://github.com/plexusone/dss-material)
2. Add component JSON to `specs/v3/components/`
3. Run `dss eval` to validate
4. Submit PR

See [Component Anatomy](../specs/v3/components/index.md#component-anatomy) for spec format.
