#!/bin/bash
# Individual script for: Business Presentation
# Theme: corporate
# Logo: company-logo.svg
# Description: Q1 2026 Business Review

WORKDIR="/home/uw/solo/repositories/private/oc-notes/marp-prod-workdir"
cd "$WORKDIR"

ORG_FILE="presentations/examples/example_business.org"
MD_FILE="presentations/examples/example_business.md"

echo "=========================================="
echo "Creating: Business Presentation"
echo "Theme: corporate | Logo: company-logo.svg"
echo "=========================================="

# Step 1: Create org file
cat > "$ORG_FILE" << 'EOF'
#+TITLE: Q1 2026 Business Review
#+AUTHOR: Test User
#+DATE: 2026-04-29

* Executive Summary

** Welcome
   This presentation covers our Q1 2026 performance metrics and strategic initiatives.

** Key Metrics
   - Revenue: $2.8M (+16.7%)
   - Customer Growth: 14.1%
   - NPS Score: 75 (+4.2%)

* Financial Overview

** Revenue Breakdown

| Quarter | Revenue | Growth |
|---------|---------|--------|
| Q4 2025 | $2.4M  | -      |
| Q1 2026 | $2.8M  | +16.7% |

** Chart Analysis
   [[file:../content-folder/income_comparison_combined.png][Income Comparison]]

* Market Analysis

** Competitive Position
   - Market share: 23% (↑ from 19%)
   - 3 new regions launched
   - Partnership channel: 30% of acquisitions

* Recommendations

   1. Accelerate APAC expansion
   2. Increase R&D investment
   3. Enhance data analytics capabilities

* Questions

   Thank you for attending.
   Contact: business@company.com
EOF

echo "✓ Created: $(basename "$ORG_FILE")"

# Step 2: Convert org to Marp markdown
cat > "$MD_FILE" << 'MARPFILE'
---
marp: true
theme: corporate
paginate: true
backgroundColor: #ffffff
style: |
  section::before {
    content: url('../assets/logos/company-logo.svg');
    position: absolute;
    top: 20px;
    right: 30px;
    height: 40px;
  }
---

<!-- _class: lead -->
## Executive Summary

   This presentation covers our Q1 2026 performance metrics and strategic initiatives.

## Key Metrics

   - Revenue: $2.8M (+16.7%)
   - Customer Growth: 14.1%
   - NPS Score: 75 (+4.2%)

# Financial Overview

## Revenue Breakdown

| Quarter | Revenue | Growth |
|---------|---------|--------|
| Q4 2025 | $2.4M  | -      |
| Q1 2026 | $2.8M  | +16.7% |

## Chart Analysis

![height:450px](../content-folder/income_comparison_combined.png)

# Market Analysis

## Competitive Position

   - Market share: 23% (↑ from 19%)
   - 3 new regions launched
   - Partnership channel: 30% of acquisitions

# Recommendations

   1. Accelerate APAC expansion
   2. Increase R&D investment
   3. Enhance data analytics capabilities

<!-- _class: lead -->
# Questions

   Thank you for attending.
   Contact: business@company.com
MARPFILE

echo "✓ Created: $(basename "$MD_FILE")"

# Step 3: Build presentation
echo ""
echo "Building outputs..."

npx marp "$MD_FILE" --pdf --output "${MD_FILE%.md}.pdf" 2>&1 | grep "INFO" || true
echo "✓ Built: example_business.pdf"

npx marp "$MD_FILE" --html --output "${MD_FILE%.md}.html" 2>&1 | grep "INFO" || true
echo "✓ Built: example_business.html"

npx marp "$MD_FILE" --pptx --output "${MD_FILE%.md}.pptx" 2>&1 | grep "INFO" || true
echo "✓ Built: example_business.pptx"

echo ""
echo "=========================================="
echo "Done: Business Presentation"
echo "Files created:"
echo "  - $(basename "$ORG_FILE")"
echo "  - $(basename "$MD_FILE")"
echo "  - example_business.pdf"
echo "  - example_business.html"
echo "  - example_business.pptx"
echo "=========================================="
