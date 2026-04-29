---
marp: true
theme: data-viz
paginate: true
backgroundColor: #ffffff
style: |
  section::before {
    content: url('../assets/logos/company-logo.svg');
    position: absolute;
    top: 15px;
    right: 25px;
    height: 35px;
  }
---

<!-- _class: lead -->
# Data Insights Report
## Banking Marketing Analysis

**Data Source:** bankfull-uw.xlsx
**Date:** April 29, 2026

---

# Dataset Overview

## Bank Marketing Dataset

- **Total Records:** 45,211
- **Features:** 17 attributes
- **Target:** Term deposit subscription
- **Time Period:** May 2008 - November 2010

> Analysis of direct marketing campaigns (phone calls) of a Portuguese banking institution.

---

# Success Rate Analysis

![height:500px](./content-folder/effort_per_success.png)

**Key Finding:** Efficiency varies significantly across different campaign rounds

---

# Call Duration vs Success

![height:500px](./content-folder/duration_success_total.png)

- Longer calls correlate with higher success rates
- Optimal duration: 5-10 minutes
- Diminishing returns after 15 minutes

---

# Client Balance Distribution

![height:500px](./content-folder/reason1_balance.png)

- Median balance: €1,200
- High balance clients show 23% higher conversion
- Key segment for premium products

---

# Income Comparison

<div class="columns">
<div class="column">

## Key Statistics

- Mean: €1,124
- Median: €1,020
- Std Dev: €4,238

Outliers present in top 5%

</div>
<div class="column">

![height:400px](./content-folder/income_comparison_combined.png)

</div>
</div>

---

# Variance Analysis

![height:500px](./content-folder/variance_boxplot_comparison.png)

- Significant variance across campaigns
- Q3 shows most consistent results
- Recommend standardizing Q1-Q2 approach

---

# Success Factors

![height:500px](./content-folder/bar_charts_success_factors.png)

**Top 3 Factors:**
1. Contact duration
2. Previous campaign outcome
3. Employment status

---

# Occupational Data Insights

## BLS National Data (2024)

- Data from `national_M2024_dl.xlsx`
- Covers major occupational groups
- Used for client segmentation

**Application:** Align marketing strategy with employment trends

---

# Recommendations

1. **Target High-Balance Segments**
   - Customized offerings for balances >€5,000

2. **Optimize Call Duration**
   - Train agents on 5-10 minute sweet spot

3. **Leverage Employment Data**
   - Tailor messaging by occupation type

---

<!-- _class: lead -->
# Questions?

## Data Team Contact

**Email:** data@company.com
**Repository:** [Link to analysis repo]
