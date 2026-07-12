# Accessibility

WCAG requirements and accessibility standards.

## Compliance Target

| Property | Value |
|----------|-------|
| **WCAG Level** | AA |
| **WCAG Version** | 2.1 |

## Color Contrast

| Requirement | Ratio |
|-------------|-------|
| **Normal Text** | 4.5:1 |
| **Large Text** | 3.0:1 |
| **Non-Text** | 3.0:1 |

## Keyboard Accessibility

| Requirement | Status |
|-------------|--------|
| **Focus Visible** | ✅ |
| **Focus Order** | ✅ |
| **No Keyboard Trap** | ✅ |
| **Skip Links** | ✅ |

## Screen Reader Support

| Requirement | Status |
|-------------|--------|
| **Semantic HTML** | ✅ |
| **ARIA Labels** | ✅ |
| **Live Regions** | ✅ |
| **Heading Structure** | ✅ |

## Motion & Animation

| Requirement | Status |
|-------------|--------|
| **Reduced Motion** | ✅ |
| **No Auto-Play** | ✅ |
| **Pause Control** | ✅ |

## Touch Targets

| Property | Value |
|----------|-------|
| **Minimum Size** | 48px |
| **Minimum Spacing** | 8px |

## Guidelines

### Sufficient Color Contrast

Text and interactive elements must meet WCAG contrast requirements.

**WCAG Criteria:** 1.4.3, 1.4.6, 1.4.11

### Keyboard Accessible

All functionality must be accessible via keyboard.

**WCAG Criteria:** 2.1.1, 2.1.2, 2.4.3

### Touch Target Size

Interactive elements must be at least 48x48dp for touch accessibility.

**WCAG Criteria:** 2.5.5

## Testing Requirements

| Type | Tools | Frequency |
|------|-------|----------|
| **automated** | axe-core, lighthouse | on every PR |
| **manual** | Screen reader testing, Keyboard navigation | quarterly |


