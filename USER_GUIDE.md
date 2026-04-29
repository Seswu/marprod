# Marp Production Environment - User Guide

## Overview

This is a self-contained Marp presentation production environment. Everything needed for building presentations is included in this directory, making it portable - you can move the `marp-prod-workdir` folder anywhere and it will continue to work.

## Directory Structure & Purpose

```
marp-prod-workdir/
├── presentations/          # Your working presentations (edit these)
│   └── dist/              # Built output (PDF, PPTX, HTML)
├── templates/             # Ready-to-use presentation templates
│   ├── business/          # Corporate/executive presentations
│   ├── technical/         # Technical talks, API docs, code-heavy
│   ├── educational/       # Workshops, lectures, academic
│   └── minimal/          # Quick updates, status reports
├── themes/                # Custom CSS themes for Marp
│   ├── corporate.css      # Professional, clean, branded
│   ├── dark.css           # Dark mode for technical content
│   ├── academic.css       # Educational/data-heavy presentations
│   ├── minimal.css        # Sparse, content-focused
│   ├── colorful.css       # Vibrant, engaging style
│   └── data-viz.css       # Optimized for charts/graphs
├── assets/
│   ├── logos/             # Place your logo files here (SVG/PNG)
│   └── images/            # Additional images (if needed)
├── content-folder/        # All existing content (Excel, images, docs)
│   ├── *.xlsx             # Source data files
│   ├── *.png/svg          # Visualization images
│   ├── *.md               # Documentation
│   └── useful/            # Additional images directory
├── scripts/
│   └── new-presentation.js # Interactive script to create presentations
├── node_modules/          # Marp CLI and dependencies (auto-generated)
├── package.json           # Node.js config with npm scripts
└── USER_GUIDE.md          # This file
```

## Quick Start

### 1. Create a New Presentation

```bash
npm run new
```

This interactive script will ask you:
- Presentation title
- Template to use (shows all available)
- Theme to apply
- Logo to include (from assets/logos/)

The presentation will be created in `presentations/` directory.

### 2. Build Presentations

```bash
# Build all presentations to PDF, PPTX, and HTML
npm run build

# Build only PDF
npm run build:pdf

# Build only PPTX (PowerPoint)
npm run build:pptx

# Build only HTML
npm run build:html
```

Output goes to `presentations/dist/`.

### 3. Live Preview While Editing

```bash
npm run watch
```

Opens a browser preview that updates as you edit.

### 4. Manual Preview

```bash
npm run preview
```

## Using Templates

Templates are pre-built presentation structures with sample content. Choose based on your needs:

| Template | Location | Best For |
|----------|----------|----------|
| `executive-summary.md` | business/ | Board meetings, quarterly reviews |
| `data-insights.md` | business/ | Data analysis presentations |
| `tech-deep-dive.md` | technical/ | Architecture reviews, system design |
| `api-documentation.md` | technical/ | API docs, developer guides |
| `workshop.md` | educational/ | Training sessions, tutorials |
| `lecture.md` | educational/ | Academic lectures, courses |
| `quick-update.md` | minimal/ | Weekly updates, standups |
| `status-report.md` | minimal/ | Project status, sprint reviews |

### Customizing Templates

1. Copy a template to `presentations/` (or use `npm run new`)
2. Edit the markdown file
3. Update the frontmatter (title, theme, logo)
4. Replace sample content with your own

## Working with Themes

Themes control the visual appearance. Each theme is a CSS file in `themes/`.

### Available Themes

| Theme | Style | Best For |
|-------|-------|----------|
| `corporate` | Professional blue/white | Business presentations |
| `dark` | Dark background, light text | Technical talks, coding |
| `academic` | Serif fonts, elegant | Education, research |
| `minimal` | Clean, lots of white space | Quick updates |
| `colorful` | Gradient colors, vibrant | Marketing, engaging talks |
| `data-viz` | Optimized for charts | Data presentations |

### Changing Theme

In your presentation's frontmatter:

```yaml
---
marp: true
theme: colorful  # Change this to any theme name
---
```

### Customizing Themes

Edit the CSS files in `themes/`. Key variables are defined in `:root` selector.

## Adding Your Logo

1. Place your logo file (SVG recommended) in `assets/logos/`
2. In your presentation, update the style section:

```yaml
style: |
  section::before {
    content: url('../assets/logos/your-logo.svg');
    position: absolute;
    top: 20px;
    right: 30px;
    height: 40px;
  }
```

### Logo Sizing

Adjust `height` value to resize. Common sizes:
- Small: `30px`
- Medium: `40px`
- Large: `60px`

## Using Existing Content

All your original content is in `content-folder/`:

- **Excel files**: `bankfull-uw.xlsx`, `national_M2024_dl.xlsx`
- **Visualizations**: 30+ PNG/SVG charts
- **Documentation**: `alt3_efficiency_per_round.md`, `job_category_sources.txt`

### Referencing Images in Presentations

```markdown
![height:500px](./content-folder/effort_per_success.png)
```

Or with absolute path from presentations folder:

```markdown
![width:800px](../content-folder/income_comparison_combined.svg)
```

## Marp Markdown Basics

### Slide Breaks

Use `---` on its own line:

```markdown
# Slide 1

Content here

---

# Slide 2

New slide content
```

### Columns Layout

```markdown
<div class="columns">
<div class="column">

Left column content

</div>
<div class="column">

Right column content

</div>
</div>
```

### Styling Individual Slides

```markdown
<!-- _class: lead -->
# This slide is centered (lead class)
```

### Images

```markdown
![width:500px](image.png)
![height:300px](image.svg)
```

## Portability

This environment is fully portable:
- All content is in `content-folder/`
- All dependencies are in `node_modules/` (or run `npm install`)
- All themes and templates are included
- Relative paths ensure it works from any location

To move it:
1. Copy `marp-prod-workdir/` to new location
2. Run `npm install` (if node_modules not copied)
3. Start using immediately

## NPM Scripts Reference

| Command | Description |
|---------|-------------|
| `npm run new` | Interactive presentation creator |
| `npm run build` | Build all formats (PDF, PPTX, HTML) |
| `npm run build:pdf` | Build PDF only |
| `npm run build:pptx` | Build PowerPoint only |
| `npm run build:html` | Build HTML only |
| `npm run watch` | Live preview with auto-reload |
| `npm run preview` | Open preview in browser |

## Tips

1. **Use SVG logos** - They scale perfectly at any size
2. **Keep presentations in `presentations/`** - Easier to batch build
3. **Name files without spaces** - Better compatibility
4. **Test with `npm run watch`** - See changes instantly
5. **Commit your presentations** - If using git, track `.md` files in presentations/

## Troubleshooting

### "marp: command not found"
Run `npm install` to ensure dependencies are installed.

### Images not showing
Check that paths are relative to the presentation file. Use `../content-folder/` from presentations folder.

### Theme not applying
Ensure theme file exists in `themes/` and name matches exactly (without `.css`).

### Logo not appearing
Verify logo file exists in `assets/logos/` and path in style section is correct.

## Support

For Marp documentation: https://marp.app/
For issues with this setup: Check file paths and ensure all directories exist as shown above.
