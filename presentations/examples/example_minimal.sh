#!/bin/bash
# Individual script for: Minimal Presentation
# Theme: minimal
# Logo: minimal-logo.svg
# Description: Sprint Review

WORKDIR="/home/uw/solo/repositories/private/oc-notes/marp-prod-workdir"
cd "$WORKDIR"

ORG_FILE="presentations/examples/example_minimal.org"
MD_FILE="presentations/examples/example_minimal.md"

echo "=========================================="
echo "Creating: Minimal Presentation"
echo "Theme: minimal | Logo: minimal-logo.svg"
echo "=========================================="

# Step1: Create org file
cat > "$ORG_FILE" << 'EOF'
#+TITLE: Sprint Review
#+AUTHOR: Dev Team
#+DATE: 2026-04-29

* Sprint 23 Review

** Sprint Summary
   April 22-29, 2026

** Completed
   - User auth v2 ✓
   - Dashboard redesign ✓
   - Performance optimization ✓

** Velocity
   32 story points (target: 30)

* Metrics

** Key Numbers

| Metric        | Value    | Change |
|---------------|----------|--------|
| Uptime        | 99.97%   | +0.02% |
| Response Time | 145ms    | -12ms  |
| Bugs Fixed    | 23       | +5     |
| PRs Merged    | 18       | +3     |

* Blockers

   - Design approval delayed (2 days)
   - API credentials pending
   - Database migration Friday 2AM

* Next Sprint

   1. Mobile app beta launch
   2. API v3 documentation
   3. Load testing
   4. Security audit

* Team Kudos

   ✓ Sarah: Completed auth ahead of schedule
   ✓ Mike: Fixed 12 critical bugs
   ✓ Team: 94% test coverage achieved

* Questions?

   Slack: #dev-team
   Email: team@company.com
EOF

echo "✓ Created: $(basename "$ORG_FILE")"

# Step2: Convert org to Marp markdown
cat > "$MD_FILE" << 'MARPFILE'
---
marp: true
theme: minimal
paginate: true
backgroundColor: #ffffff
style: |
  section::before {
    content: url('../assets/logos/minimal-logo.svg');
    position: absolute;
    top: 30px;
    right: 40px;
    height: 30px;
    opacity: 0.5;
  }
---

<!-- _class: lead -->
# Sprint 23 Review

   April 22-29, 2026

## Completed

   - User auth v2 ✓
   - Dashboard redesign ✓
   - Performance optimization ✓

## Velocity

   32 story points (target: 30)

# Metrics

## Key Numbers

| Metric        | Value    | Change |
|---------------|----------|--------|
| Uptime        | 99.97%   | +0.02% |
| Response Time | 145ms    | -12ms  |
| Bugs Fixed    | 23       | +5     |
| PRs Merged    | 18       | +3     |

# Blockers

   - Design approval delayed (2 days)
   - API credentials pending
   - Database migration Friday 2AM

# Next Sprint

   1. Mobile app beta launch
   2. API v3 documentation
   3. Load testing
   4. Security audit

# Team Kudos

   ✓ Sarah: Completed auth ahead of schedule
   ✓ Mike: Fixed 12 critical bugs
   ✓ Team: 94% test coverage achieved

<!-- _class: lead -->
# Questions?

   Slack: #dev-team
   Email: team@company.com
MARPFILE

echo "✓ Created: $(basename "$MD_FILE")"

# Step3: Build presentation
echo ""
echo "Building outputs..."

npx marp "$MD_FILE" --pdf --output "${MD_FILE%.md}.pdf" 2>&1 | grep "INFO" || true
echo "✓ Built: example_minimal.pdf"

npx marp "$MD_FILE" --html --output "${MD_FILE%.md}.html" 2>&1 | grep "INFO" || true
echo "✓ Built: example_minimal.html"

npx marp "$MD_FILE" --pptx --output "${MD_FILE%.md}.pptx" 2>&1 | grep "INFO" || true
echo "✓ Built: example_minimal.pptx"

echo ""
echo "=========================================="
echo "Done: Minimal Presentation"
echo "Files created:"
echo "  - $(basename "$ORG_FILE")"
echo "  - $(basename "$MD_FILE")"
echo "  - example_minimal.pdf"
echo "  - example_minimal.html"
echo "  - example_minimal.pptx"
echo "=========================================="
