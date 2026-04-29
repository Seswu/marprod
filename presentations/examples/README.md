# Example Presentations - Summary

This directory contains example presentations demonstrating the Marp production environment capabilities.

## Files Created

Each presentation has 3 files (org, script, presentation):
1. **Org file** (`.org`) - Source content in Emacs Org-mode format
2. **Script file** (`.sh`) - Documents each step taken to create the presentation
3. **Presentation files** (`.md`, `.pdf`, `.html`, `.pptx`) - The actual presentations

## Presentations Created

### 1. Business Presentation (Corporate Theme)
- **Theme:** corporate
- **Logo:** company-logo.svg
- **Files:**
  - `example_business.org` - Org-mode source
  - `example_business.sh` - Creation script
  - `example_business.md` - Marp markdown
  - `example_business.pdf` - PDF output
  - `example_business.html` - HTML output
  - `example_business.pptx` - PowerPoint output

### 2. Technical Presentation (Dark Theme)
- **Theme:** dark
- **Logo:** tech-logo.svg
- **Files:**
  - `example_technical.org` - Org-mode source
  - `example_technical.sh` - Creation script
  - `example_technical.md` - Marp markdown
  - `example_technical.pdf` - PDF output
  - `example_technical.html` - HTML output
  - `example_technical.pptx` - PowerPoint output

### 3. Educational Presentation (Academic Theme)
- **Theme:** academic
- **Logo:** edu-logo.svg
- **Files:**
  - `example_educational.org` - Org-mode source
  - `example_educational.sh` - Creation script
  - `example_educational.md` - Marp markdown
  - `example_educational.pdf` - PDF output
  - `example_educational.html` - HTML output
  - `example_educational.pptx` - PowerPoint output

### 4. Colorful Presentation (Colorful Theme)
- **Theme:** colorful
- **Logo:** company-logo.svg
- **Files:**
  - `example_colorful.org` - Org-mode source
  - `example_colorful.sh` - Creation script
  - `example_colorful.md` - Marp markdown
  - `example_colorful.pdf` - PDF output
  - `example_colorful.html` - HTML output
  - `example_colorful.pptx` - PowerPoint output

### 5. Data Viz Presentation (Data-Viz Theme)
- **Theme:** data-viz
- **Logo:** tech-logo.svg
- **Files:**
  - `example_data-viz.org` - Org-mode source
  - `example_data-viz.sh` - Creation script
  - `example_data-viz.md` - Marp markdown
  - `example_data-viz.pdf` - PDF output
  - `example_data-viz.html` - HTML output
  - `example_data-viz.pptx` - PowerPoint output

### 6. Minimal Presentation (Minimal Theme)
- **Theme:** minimal
- **Logo:** minimal-logo.svg
- **Files:**
  - `example_minimal.org` - Org-mode source
  - `example_minimal.sh` - Creation script
  - `example_minimal.md` - Marp markdown
  - `example_minimal.pdf` - PDF output
  - `example_minimal.html` - HTML output
  - `example_minimal.pptx` - PowerPoint output

## Usage

### Rebuild a Single Presentation
```bash
cd /home/uw/solo/repositories/private/oc-notes/marp-prod-workdir
bash presentations/examples/example_business.sh
```

### Rebuild All Presentations
```bash
cd /home/uw/solo/repositories/private/oc-notes/marp-prod-workdir
bash example_create-presentations.sh
```

### View an HTML Presentation
```bash
cd /home/uw/solo/repositories/private/oc-notes/marp-prod-workdir
firefox presentations/examples/example_business.html
```

## Org to Marp Conversion

The org files use standard Emacs Org-mode format:
- Headings (`*`, `**`, etc.) become slide headings
- Source blocks (`#+BEGIN_SRC ... #+END_SRC`) become code blocks
- Tables are converted to Markdown tables
- Images (`[[file:path][desc]]`) become Markdown images

## Themes Used

| Theme | Description | Best For |
|-------|-------------|-----------|
| corporate | Blue/white professional | Business presentations |
| dark | Dark background | Technical talks |
| academic | Serif fonts, elegant | Education, workshops |
| colorful | Vibrant gradients | Marketing, engaging talks |
| data-viz | Optimized for charts | Data presentations |
| minimal | Clean, lots of white space | Quick updates |

## Logos Used

Located in `../assets/logos/`:
- `company-logo.svg` - Corporate/business logo
- `tech-logo.svg` - Technical/code logo
- `edu-logo.svg` - Educational institution logo
- `minimal-logo.svg` - Minimal/simple logo

## Images Used

From `../content-folder/`:
- Various PNG/SVG charts from banking data analysis
- Created using the existing dataset (`bankfull-uw.xlsx`)

## Summary

**Total files created:** 36
- 6 org files
- 6 shell scripts
- 6 markdown files
- 6 PDF files
- 6 HTML files
- 6 PPTX files

Each presentation demonstrates:
- Different theme selection
- Different logo placement
- Various content types (text, tables, code, images)
- Multiple output formats
