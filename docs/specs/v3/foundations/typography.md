# Typography

Material Design 3 type scale system for consistent text hierarchy.

## Font Family

| Property | Value |
|----------|-------|
| **Primary Font** | Roboto |
| **Font Stack** | `'Roboto', 'Noto Sans', sans-serif` |
| **Weights** | 400 (Regular), 500 (Medium), 700 (Bold) |
| **Source** | [Google Fonts](https://fonts.google.com/specimen/Roboto) |

## Type Scale

<div class="dss-type-scale" markdown>

<div class="dss-type-sample">
<span class="dss-type-name">Display Large</span>
<span class="dss-type-preview" style="font-size: 57px; line-height: 64px; letter-spacing: -0.25px;">Aa</span>
<span class="dss-type-meta">57px / 64px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Display Medium</span>
<span class="dss-type-preview" style="font-size: 45px; line-height: 52px;">Aa</span>
<span class="dss-type-meta">45px / 52px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Display Small</span>
<span class="dss-type-preview" style="font-size: 36px; line-height: 44px;">Aa</span>
<span class="dss-type-meta">36px / 44px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Headline Large</span>
<span class="dss-type-preview" style="font-size: 32px; line-height: 40px;">Aa</span>
<span class="dss-type-meta">32px / 40px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Headline Medium</span>
<span class="dss-type-preview" style="font-size: 28px; line-height: 36px;">Aa</span>
<span class="dss-type-meta">28px / 36px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Headline Small</span>
<span class="dss-type-preview" style="font-size: 24px; line-height: 32px;">Aa</span>
<span class="dss-type-meta">24px / 32px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Title Large</span>
<span class="dss-type-preview" style="font-size: 22px; line-height: 28px;">Aa</span>
<span class="dss-type-meta">22px / 28px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Title Medium</span>
<span class="dss-type-preview" style="font-size: 16px; line-height: 24px; font-weight: 500;">Aa</span>
<span class="dss-type-meta">16px / 24px / Medium</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Title Small</span>
<span class="dss-type-preview" style="font-size: 14px; line-height: 20px; font-weight: 500;">Aa</span>
<span class="dss-type-meta">14px / 20px / Medium</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Body Large</span>
<span class="dss-type-preview" style="font-size: 16px; line-height: 24px;">The quick brown fox jumps over the lazy dog.</span>
<span class="dss-type-meta">16px / 24px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Body Medium</span>
<span class="dss-type-preview" style="font-size: 14px; line-height: 20px;">The quick brown fox jumps over the lazy dog.</span>
<span class="dss-type-meta">14px / 20px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Body Small</span>
<span class="dss-type-preview" style="font-size: 12px; line-height: 16px;">The quick brown fox jumps over the lazy dog.</span>
<span class="dss-type-meta">12px / 16px</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Label Large</span>
<span class="dss-type-preview" style="font-size: 14px; line-height: 20px; font-weight: 500;">BUTTON TEXT</span>
<span class="dss-type-meta">14px / 20px / Medium</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Label Medium</span>
<span class="dss-type-preview" style="font-size: 12px; line-height: 16px; font-weight: 500;">LABEL</span>
<span class="dss-type-meta">12px / 16px / Medium</span>
</div>

<div class="dss-type-sample">
<span class="dss-type-name">Label Small</span>
<span class="dss-type-preview" style="font-size: 11px; line-height: 16px; font-weight: 500;">SMALL</span>
<span class="dss-type-meta">11px / 16px / Medium</span>
</div>

</div>

## Font Sizes Reference

| Token | Size | Pixel | Usage |
|-------|------|-------|-------|
| `display-large` | 57px | 57 | Hero text, large promotional content |
| `display-medium` | 45px | 45 | Large headings |
| `display-small` | 36px | 36 | Section headings |
| `headline-large` | 32px | 32 | Page headlines |
| `headline-medium` | 28px | 28 | Page headlines, dialog titles |
| `headline-small` | 24px | 24 | Small headlines |
| `title-large` | 22px | 22 | Card titles, list headers |
| `title-medium` | 16px | 16 | Navigation titles |
| `title-small` | 14px | 14 | Small titles |
| `body-large` | 16px | 16 | Primary body text |
| `body-medium` | 14px | 14 | Secondary body text |
| `body-small` | 12px | 12 | Captions, helper text |
| `label-large` | 14px | 14 | Button text, form labels |
| `label-medium` | 12px | 12 | Small labels |
| `label-small` | 11px | 11 | Micro labels |

## CSS Usage

```css
/* Display styles */
.display-large {
  font-size: 57px;
  line-height: 64px;
  letter-spacing: -0.25px;
  font-weight: 400;
}

/* Headline styles */
.headline-medium {
  font-size: 28px;
  line-height: 36px;
  letter-spacing: 0px;
  font-weight: 400;
}

/* Body styles */
.body-large {
  font-size: 16px;
  line-height: 24px;
  letter-spacing: 0.5px;
  font-weight: 400;
}

/* Label styles */
.label-large {
  font-size: 14px;
  line-height: 20px;
  letter-spacing: 0.1px;
  font-weight: 500;
}
```

## Best Practices

1. **Use Display for hero content** - Reserve display styles for marketing pages and splash screens
2. **Headlines establish hierarchy** - Use consistent headline levels for document structure
3. **Body for readability** - Body styles optimized for reading long-form content
4. **Labels for UI** - Use label styles for buttons, chips, and interactive elements

See [m3.material.io/styles/typography](https://m3.material.io/styles/typography/overview) for more details.
