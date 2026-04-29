---
marp: true
theme: data-viz
paginate: true
backgroundColor: #ffffff
style: |
  section::before {
    content: url('../../assets/logos/tech-logo.svg');
    position: absolute;
    top: 15px;
    right: 25px;
    height: 35px;
  }
---

<!-- _class: lead -->

## Banking Data Analysis

Deep dive into term deposit subscription patterns.

---

## Dataset Overview

- Total Records: 45,211
- Features: 17 attributes
- Target: Term deposit (yes/no)
- Period: May 2008 - Nov 2010

---

## Call Duration Impact

![height:400px](../../content-folder/duration_success_total.png)

---

## Duration Finding

Optimal call duration: 5-10 minutes
Longer calls don't guarantee success.

---

## Balance Distribution

![height:400px](../../content-folder/reason1_balance.png)

---

## Balance Insight

Median balance: €1,200
High balance = 23% higher conversion rate

---

## Effort vs Success

![height:400px](../../content-folder/effort_per_success.png)

---

## Effort Recommendation

Focus on quality over quantity
Reduce calls to unqualified leads

---

## Variance Analysis

![height:400px](../../content-folder/variance_boxplot_comparison.png)

---

## Variance Observation

Q3 shows most consistent results
Standardize Q1-Q2 approach

---

## Success Factors

![height:400px](../../content-folder/bar_charts_success_factors.png)

---

## Key Drivers

1. Contact duration
2. Previous campaign outcome
3. Employment status
4. Age group

---

## Income Analysis

![height:400px](../../content-folder/income_comparison_combined.png)

---

## Income Strategy

Tailor products by income segment
Premium offerings for top 20%

---

## Heatmap: Age vs Duration

![height:400px](../../content-folder/heatmap_age_duration.png)

---

## Age-Duration Pattern

Middle-aged clients (35-55) most responsive
Duration less critical for this segment

---

## Recommendations

1. Target 35-55 age group
2. Train agents on 5-10 min sweet spot
3. Prioritize high-balance segments
4. Standardize Q1-Q2 approach
5. Leverage employment data

---

<!-- _class: lead -->
## Questions?

Data Science Team
data@company.com
