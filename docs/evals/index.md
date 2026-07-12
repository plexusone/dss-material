# Evaluation Dashboard

Automated evaluation of the Material Design 3 DSS specification completeness and quality.

## Overall Score

<div style="text-align: center; margin: 2rem 0;">
<div class="dss-score-circle grade-c">
<div class="dss-score-value">60</div>
<div class="dss-score-label">C</div>
</div>
<p style="margin-top: 1rem; color: var(--md-default-fg-color--light);">Score: 3/5 (Acceptable)</p>
</div>

!!! info "Early Development"
    This specification is in early development. The score reflects current completeness and will improve as more components are added.

## Category Breakdown

<div class="dss-category-grid" markdown>

<div class="dss-category-card" markdown>

### Completeness
<div class="dss-category-header">
<span class="dss-category-weight">25% weight</span>
<span class="dss-category-score">3/5</span>
</div>
<div class="dss-progress">
<div class="dss-progress-bar grade-c" style="width: 60%;"></div>
</div>
<p style="font-size: 0.875rem; color: var(--md-default-fg-color--light);">Required fields, foundations, components</p>

</div>

<div class="dss-category-card" markdown>

### Agent-Readiness
<div class="dss-category-header">
<span class="dss-category-weight">30% weight</span>
<span class="dss-category-score">4/5</span>
</div>
<div class="dss-progress">
<div class="dss-progress-bar grade-b" style="width: 80%;"></div>
</div>
<p style="font-size: 0.875rem; color: var(--md-default-fg-color--light);">LLM context, anti-patterns, examples</p>

</div>

<div class="dss-category-card" markdown>

### Accessibility
<div class="dss-category-header">
<span class="dss-category-weight">25% weight</span>
<span class="dss-category-score">4/5</span>
</div>
<div class="dss-progress">
<div class="dss-progress-bar grade-b" style="width: 80%;"></div>
</div>
<p style="font-size: 0.875rem; color: var(--md-default-fg-color--light);">WCAG compliance, keyboard support, ARIA</p>

</div>

<div class="dss-category-card" markdown>

### Documentation
<div class="dss-category-header">
<span class="dss-category-weight">20% weight</span>
<span class="dss-category-score">3/5</span>
</div>
<div class="dss-progress">
<div class="dss-progress-bar grade-c" style="width: 60%;"></div>
</div>
<p style="font-size: 0.875rem; color: var(--md-default-fg-color--light);">Descriptions, usage guidance</p>

</div>

</div>

## Coverage Metrics

| Section | Complete | Total | Coverage |
|---------|----------|-------|----------|
| **Components** | 1 | 30 | <span class="dss-coverage-percent low">3%</span> |
| **Foundations** | 4 | 4 | <span class="dss-coverage-percent complete">100%</span> |
| **Patterns** | 0 | 5 | <span class="dss-coverage-percent low">0%</span> |
| **Accessibility** | 1 | 1 | <span class="dss-coverage-percent complete">100%</span> |

[:octicons-arrow-right-24: View Coverage Details](coverage.md)

## Recent Findings

<ul class="dss-findings-list">

<li class="dss-finding medium">
<span class="dss-finding-severity medium">MEDIUM</span>
<div class="dss-finding-content">
<div class="dss-finding-title">Limited component coverage</div>
<div class="dss-finding-description">Only 1 of 30 planned components are fully specified. Priority components include Card, Dialog, TextField, and Tabs.</div>
</div>
</li>

<li class="dss-finding low">
<span class="dss-finding-severity low">LOW</span>
<div class="dss-finding-content">
<div class="dss-finding-title">No pattern specifications</div>
<div class="dss-finding-description">Pattern specifications for common UI patterns (forms, navigation, onboarding) are not yet defined.</div>
</div>
</li>

<li class="dss-finding info">
<span class="dss-finding-severity info">INFO</span>
<div class="dss-finding-content">
<div class="dss-finding-title">Foundation specs complete</div>
<div class="dss-finding-description">All foundation tokens (colors, typography, spacing, elevation) are fully specified.</div>
</div>
</li>

</ul>

## How Evaluation Works

The DSS evaluation system measures specification quality across four weighted categories:

### Categories

| Category | Weight | What It Measures |
|----------|--------|------------------|
| **Completeness** | 25% | Required fields present, no missing data |
| **Agent-Readiness** | 30% | LLM context, anti-patterns, example usage |
| **Accessibility** | 25% | WCAG requirements, keyboard support, ARIA |
| **Documentation** | 20% | Descriptions, usage guidance, references |

### Scoring

Scores use a 1-5 integer scale (Likert-like):

| Score | Grade | Label |
|-------|-------|-------|
| 5 | A | Excellent |
| 4 | B | Good |
| 3 | C | Acceptable |
| 2 | D | Major Revisions |
| 1 | F | Inadequate |

### Running Evaluation

```bash
# Install CLI
go install github.com/plexusone/design-system-spec/cmd/dss@latest

# Run evaluation
dss eval --spec ./specs/v3 --json > evals/v3.json

# View results
dss eval --spec ./specs/v3
```

### CI Integration

Add evaluation to your CI pipeline:

```yaml
- name: Evaluate DSS Spec
  run: |
    dss eval --spec ./specs/v3 --min-score 70
```

## Next Steps

1. **Add priority components**: Card, Dialog, TextField, Tabs, List
2. **Define patterns**: Form layout, navigation patterns
3. **Expand examples**: More implementation examples per component
4. **Add dark mode tokens**: Complete dark theme color tokens
