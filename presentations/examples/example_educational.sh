#!/bin/bash
# Individual script for: Educational Presentation
# Theme: academic
# Logo: edu-logo.svg
# Description: Data Visualization Workshop

WORKDIR="/home/uw/solo/repositories/private/oc-notes/marp-prod-workdir"
cd "$WORKDIR"

ORG_FILE="presentations/examples/example_educational.org"
MD_FILE="presentations/examples/example_educational.md"

echo "=========================================="
echo "Creating: Educational Presentation"
echo "Theme: academic | Logo: edu-logo.svg"
echo "=========================================="

# Step 1: Create org file
cat > "$ORG_FILE" << 'EOF'
#+TITLE: Data Visualization Workshop
#+AUTHOR: Instructor
#+DATE: 2026-04-29

* Data Visualization Workshop

** Welcome
   Practical Statistics for Business

** Learning Objectives
   1. Understand visualization types
   2. Interpret data charts
   3. Create effective visualizations
   4. Communicate insights

* Chart Types

** Common Visualizations

| Chart Type   | Use Case                    |
|--------------|-----------------------------|
| Bar Chart    | Comparing categories         |
| Line Chart   | Trends over time            |
| Scatter Plot | Relationships between vars  |
| Boxplot      | Distribution comparison     |

* Example: Variance Analysis

** Boxplot Chart
   [[file:../content-folder/variance1_boxplot.png][Variance Boxplot]]

** Key Components
   - Q1, Q2 (median), Q3
   - Whiskers: 1.5 × IQR
   - Outliers: Beyond whiskers

* Efficiency Metrics

** Round Efficiency
   [[file:../content-folder/alt3_efficiency_per_round.png][Efficiency per Round]]

** Discussion
   Different visualization methods reveal different insights.

* Success Factors

** Analysis by Debt
   [[file:../content-folder/reason2_debt.png][Debt Analysis]]

** Exercise
   How does debt affect subscription likelihood?
   Work in small groups for 10 minutes.

* Best Practices

   ✓ Always visualize data first
   ✓ Choose appropriate chart type
   ✓ Label axes and provide context
   ✓ Use color purposefully
   ✓ Tell a story with data

* Questions & Discussion

   Thank you for attending!
   Email: instructor@university.edu
EOF

echo "✓ Created: $(basename "$ORG_FILE")"

# Step 2: Convert org to Marp markdown
cat > "$MD_FILE" << 'MARPFILE'
---
marp: true
theme: academic
paginate: true
backgroundColor: #fafafa
style: |
  section::before {
    content: url('../assets/logos/edu-logo.svg');
    position: absolute;
    top: 25px;
    left: 40px;
    height: 50px;
  }
---

<!-- _class: lead -->
# Data Visualization Workshop

   Practical Statistics for Business

## Learning Objectives

   1. Understand visualization types
   2. Interpret data charts
   3. Create effective visualizations
   4. Communicate insights

# Chart Types

## Common Visualizations

| Chart Type   | Use Case                    |
|--------------|-----------------------------|
| Bar Chart    | Comparing categories         |
| Line Chart   | Trends over time            |
| Scatter Plot | Relationships between vars  |
| Boxplot      | Distribution comparison     |

# Example: Variance Analysis

## Boxplot Chart

![height:450px](../content-folder/variance1_boxplot.png)

## Key Components

   - Q1, Q2 (median), Q3
   - Whiskers: 1.5 × IQR
   - Outliers: Beyond whiskers

# Efficiency Metrics

## Round Efficiency

![height:450px](../content-folder/alt3_efficiency_per_round.png)

## Discussion

   Different visualization methods reveal different insights.

# Success Factors

## Analysis by Debt

![height:450px](../content-folder/reason2_debt.png)

## Exercise

   How does debt affect subscription likelihood?
   Work in small groups for 10 minutes.

# Best Practices

   ✓ Always visualize data first
   ✓ Choose appropriate chart type
   ✓ Label axes and provide context
   ✓ Use color purposefully
   ✓ Tell a story with data

<!-- _class: lead -->
# Questions & Discussion

   Thank you for attending!
   Email: instructor@university.edu
MARPFILE

echo "✓ Created: $(basename "$MD_FILE")"

# Step 3: Build presentation
echo ""
echo "Building outputs..."

npx marp "$MD_FILE" --pdf --output "${MD_FILE%.md}.pdf" 2>&1 | grep "INFO" || true
echo "✓ Built: example_educational.pdf"

npx marp "$MD_FILE" --html --output "${MD_FILE%.md}.html" 2>&1 | grep "INFO" || true
echo "✓ Built: example_educational.html"

npx marp "$MD_FILE" --pptx --output "${MD_FILE%.md}.pptx" 2>&1 | grep "INFO" || true
echo "✓ Built: example_educational.pptx"

echo ""
echo "=========================================="
echo "Done: Educational Presentation"
echo "Files created:"
echo "  - $(basename "$ORG_FILE")"
echo "  - $(basename "$MD_FILE")"
echo "  - example_educational.pdf"
echo "  - example_educational.html"
echo "  - example_educational.pptx"
echo "=========================================="
