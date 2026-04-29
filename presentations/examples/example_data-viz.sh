#!/bin/bash
# Individual script for: Data Viz Presentation
# Theme: data-viz
# Logo: tech-logo.svg
# Description: Data Analysis Deep Dive

WORKDIR="/home/uw/solo/repositories/private/oc-notes/marp-prod-workdir"
cd "$WORKDIR"

ORG_FILE="presentations/examples/example_data-viz.org"
MD_FILE="presentations/examples/example_data-viz.md"

echo "=========================================="
echo "Creating: Data Viz Presentation"
echo "Theme: data-viz | Logo: tech-logo.svg"
echo "=========================================="

# Step1: Create org file
cat > "$ORG_FILE" << 'EOF'
#+TITLE: Data Analysis Deep Dive
#+AUTHOR: Data Science Team
#+DATE: 2026-04-29

* Banking Data Analysis

** Analyzing Bank Marketing Data
   Deep dive into term deposit subscription patterns.

** Dataset Overview
   - Total Records: 45,211
   - Features: 17 attributes
   - Target: Term deposit (yes/no)
   - Period: May 2008 - Nov 2010

* Call Duration Impact

** Duration vs Success
   [[file:../content-folder/duration_success_total.png][Duration Analysis]]

** Finding
   Optimal call duration: 5-10 minutes
   Longer calls don't guarantee success.

* Balance Distribution

** Client Balance Analysis
   [[file:../content-folder/reason1_balance.png][Balance Distribution]]

** Insight
   Median balance: €1,200
   High balance = 23% higher conversion rate

* Effort vs Success

** Resource Allocation
   [[file:../content-folder/effort_per_success.png][Efficiency Metrics]]

** Recommendation
   Focus on quality over quantity
   Reduce calls to unqualified leads

* Variance Analysis

** Campaign Performance
   [[file:../content-folder/variance_boxplot_comparison.png][Variance Comparison]]

** Observation
   Q3 shows most consistent results
   Standardize Q1-Q2 approach

* Success Factors

** Top Predictors
   [[file:../content-folder/bar_charts_success_factors.png][Success Factors]]

** Key Drivers
   1. Contact duration
   2. Previous campaign outcome
   3. Employment status
   4. Age group

* Income Analysis

** Demographic Insights
   [[file:../content-folder/income_comparison_combined.png][Income Comparison]]

** Strategy
   Tailor products by income segment
   Premium offerings for top 20%

* Heatmap: Age vs Duration

** Interaction Effects
   [[file:../content-folder/heatmap_age_duration.png][Age-Duration Heatmap]]

** Pattern
   Middle-aged clients (35-55) most responsive
   Duration less critical for this segment

* Recommendations

   1. Target 35-55 age group
   2. Train agents on 5-10 min sweet spot
   3. Prioritize high-balance segments
   4. Standardize Q1-Q2 approach
   5. Leverage employment data for segmentation

* Questions?

   Data Science Team
   data@company.com
EOF

echo "✓ Created: $(basename "$ORG_FILE")"

# Step2: Convert org to Marp markdown
cat > "$MD_FILE" << 'MARPFILE'
---
marp: true
theme: data-viz
paginate: true
backgroundColor: #ffffff
style: |
  section::before {
    content: url('../assets/logos/tech-logo.svg');
    position: absolute;
    top: 15px;
    right: 25px;
    height: 35px;
  }
---

<!-- _class: lead -->
# Data Analysis Deep Dive

   Deep dive into term deposit subscription patterns.

## Dataset Overview

   - Total Records: 45,211
   - Features: 17 attributes
   - Target: Term deposit (yes/no)
   - Period: May 2008 - Nov 2010

# Call Duration Impact

## Duration vs Success

![height:450px](../content-folder/duration_success_total.png)

## Finding

   Optimal call duration: 5-10 minutes
   Longer calls don't guarantee success.

# Balance Distribution

## Client Balance Analysis

![height:450px](../content-folder/reason1_balance.png)

## Insight

   Median balance: €1,200
   High balance = 23% higher conversion rate

# Effort vs Success

## Resource Allocation

![height:450px](../content-folder/effort_per_success.png)

## Recommendation

   Focus on quality over quantity
   Reduce calls to unqualified leads

# Variance Analysis

## Campaign Performance

![height:450px](../content-folder/variance_boxplot_comparison.png)

## Observation

   Q3 shows most consistent results
   Standardize Q1-Q2 approach

# Success Factors

## Top Predictors

![height:450px](../content-folder/bar_charts_success_factors.png)

## Key Drivers

   1. Contact duration
   2. Previous campaign outcome
   3. Employment status
   4. Age group

# Income Analysis

## Demographic Insights

![height:450px](../content-folder/income_comparison_combined.png)

## Strategy

   Tailor products by income segment
   Premium offerings for top 20%

# Heatmap: Age vs Duration

## Interaction Effects

![height:450px](../content-folder/heatmap_age_duration.png)

## Pattern

   Middle-aged clients (35-55) most responsive
   Duration less critical for this segment

# Recommendations

   1. Target 35-55 age group
   2. Train agents on 5-10 min sweet spot
   3. Prioritize high-balance segments
   4. Standardize Q1-Q2 approach
   5. Leverage employment data for segmentation

<!-- _class: lead -->
# Questions?

   Data Science Team
   data@company.com
MARPFILE

echo "✓ Created: $(basename "$MD_FILE")"

# Step3: Build presentation
echo ""
echo "Building outputs..."

npx marp "$MD_FILE" --pdf --output "${MD_FILE%.md}.pdf" 2>&1 | grep "INFO" || true
echo "✓ Built: example_data-viz.pdf"

npx marp "$MD_FILE" --html --output "${MD_FILE%.md}.html" 2>&1 | grep "INFO" || true
echo "✓ Built: example_data-viz.html"

npx marp "$MD_FILE" --pptx --output "${MD_FILE%.md}.pptx" 2>&1 | grep "INFO" || true
echo "✓ Built: example_data-viz.pptx"

echo ""
echo "=========================================="
echo "Done: Data Viz Presentation"
echo "Files created:"
echo "  - $(basename "$ORG_FILE")"
echo "  - $(basename "$MD_FILE")"
echo "  - example_data-viz.pdf"
echo "  - example_data-viz.html"
echo "  - example_data-viz.pptx"
echo "=========================================="
