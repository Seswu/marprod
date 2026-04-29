#!/bin/bash
# Individual script for: Colorful Presentation
# Theme: colorful
# Logo: company-logo.svg
# Description: Marketing Campaign Results

WORKDIR="/home/uw/solo/repositories/private/oc-notes/marp-prod-workdir"
cd "$WORKDIR"

ORG_FILE="presentations/examples/example_colorful.org"
MD_FILE="presentations/examples/example_colorful.md"

echo "=========================================="
echo "Creating: Colorful Presentation"
echo "Theme: colorful | Logo: company-logo.svg"
echo "=========================================="

# Step1: Create org file
cat > "$ORG_FILE" << 'EOF'
#+TITLE: Marketing Campaign Results
#+AUTHOR: Marketing Team
#+DATE: 2026-04-29

* Campaign Launch Results

** Welcome to Q2 Campaign Review
   Vibrant results from our latest marketing initiatives.

** Campaign Highlights
   - Social Media: +45% engagement
   - Email: 32% open rate (↑ 8%)
   - Web Traffic: 125K visits
   - Conversion: 4.2% (↑ 0.8%)

* Channel Performance

** Performance by Channel

| Channel     | Reach  | Conversion | ROI  |
|-------------|--------|------------|------|
| Social      | 85K    | 3.8%       | 2.4x |
| Email       | 45K    | 4.5%       | 3.1x |
| Search      | 62K    | 5.2%       | 2.8x |
| Direct      | 28K    | 6.1%       | 4.2x |

* Visual Results

** Monthly Growth
   [[file:../content-folder/alt6_waterfall.png][Waterfall Chart]]

** Key Insight
   Direct traffic shows highest ROI despite lower volume.
   Focus budget allocation on direct and search channels.

* Success Stories

   1. Instagram campaign reached 50K users
   2. Email A/B testing improved CTR by 23%
   3. Landing page optimization increased conversions
   4. Retargeting ads recovered 15% of abandoned carts

* Next Quarter

** Planned Initiatives
   - Launch TikTok channel
   - Implement marketing automation
   - Expand influencer partnerships
   - A/B test new creative assets

* Thank You!

   Marketing Team
   Email: marketing@company.com
   Slack: #marketing
EOF

echo "✓ Created: $(basename "$ORG_FILE")"

# Step2: Convert org to Marp markdown
cat > "$MD_FILE" << 'MARPFILE'
---
marp: true
theme: colorful
paginate: true
backgroundColor: #ffffff
style: |
  section::before {
    content: url('../assets/logos/company-logo.svg');
    position: absolute;
    top: 20px;
    right: 30px;
    height: 45px;
  }
---

<!-- _class: lead -->
# Marketing Campaign Results

   Vibrant results from our latest marketing initiatives.

## Campaign Highlights

   - Social Media: +45% engagement
   - Email: 32% open rate (↑ 8%)
   - Web Traffic: 125K visits
   - Conversion: 4.2% (↑ 0.8%)

# Channel Performance

## Performance by Channel

| Channel     | Reach  | Conversion | ROI  |
|-------------|--------|------------|------|
| Social      | 85K    | 3.8%       | 2.4x |
| Email       | 45K    | 4.5%       | 3.1x |
| Search      | 62K    | 5.2%       | 2.8x |
| Direct      | 28K    | 6.1%       | 4.2x |

# Visual Results

## Monthly Growth

![height:450px](../content-folder/alt6_waterfall.png)

## Key Insight

   Direct traffic shows highest ROI despite lower volume.
   Focus budget allocation on direct and search channels.

# Success Stories

   1. Instagram campaign reached 50K users
   2. Email A/B testing improved CTR by 23%
   3. Landing page optimization increased conversions
   4. Retargeting ads recovered 15% of abandoned carts

# Next Quarter

## Planned Initiatives

   - Launch TikTok channel
   - Implement marketing automation
   - Expand influencer partnerships
   - A/B test new creative assets

<!-- _class: lead -->
# Thank You!

   Marketing Team
   Email: marketing@company.com
   Slack: #marketing
MARPFILE

echo "✓ Created: $(basename "$MD_FILE")"

# Step3: Build presentation
echo ""
echo "Building outputs..."

npx marp "$MD_FILE" --pdf --output "${MD_FILE%.md}.pdf" 2>&1 | grep "INFO" || true
echo "✓ Built: example_colorful.pdf"

npx marp "$MD_FILE" --html --output "${MD_FILE%.md}.html" 2>&1 | grep "INFO" || true
echo "✓ Built: example_colorful.html"

npx marp "$MD_FILE" --pptx --output "${MD_FILE%.md}.pptx" 2>&1 | grep "INFO" || true
echo "✓ Built: example_colorful.pptx"

echo ""
echo "=========================================="
echo "Done: Colorful Presentation"
echo "Files created:"
echo "  - $(basename "$ORG_FILE")"
echo "  - $(basename "$MD_FILE")"
echo "  - example_colorful.pdf"
echo "  - example_colorful.html"
echo "  - example_colorful.pptx"
echo "=========================================="
