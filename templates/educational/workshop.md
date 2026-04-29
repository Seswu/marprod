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
# Data Analysis Workshop
## Practical Statistics for Business

**Instructor:** [Your Name]
**Duration:** 3 Hours
**Date:** April 29, 2026

---

# Learning Objectives

By the end of this workshop, you will be able to:

1. Understand basic statistical concepts
2. Interpret data visualizations
3. Perform exploratory data analysis
4. Draw meaningful conclusions from data
5. Communicate insights effectively

---

# Agenda

| Time | Topic |
|------|-------|
| 09:00 - 09:30 | Introduction & Setup |
| 09:30 - 10:30 | Descriptive Statistics |
| 10:30 - 10:45 | ☕ Break |
| 10:45 - 11:45 | Data Visualization |
| 11:45 - 12:00 | Q&A & Wrap-up |

---

# Module 1: Descriptive Statistics

## Key Concepts

- **Mean:** Average value
- **Median:** Middle value
- **Mode:** Most frequent value
- **Standard Deviation:** Measure of spread
- **Variance:** Square of standard deviation

> "Statistics is the grammar of science." — Karl Pearson

---

# Understanding Distributions

![height:450px](./content-folder/variance1_boxplot.png)

**Boxplot Components:**
- Q1, Q2 (median), Q3
- Whiskers: 1.5 × IQR
- Outliers: Beyond whiskers

---

# Module 2: Data Visualization

## Types of Charts

| Chart Type | Use Case |
|------------|----------|
| Bar Chart | Comparing categories |
| Line Chart | Trends over time |
| Scatter Plot | Relationships between variables |
| Histogram | Distribution of single variable |
| Boxplot | Distribution comparison |

---

# Alternative Visualizations

<div class="columns">
<div class="column">

## Normalized Dual Axis
![height:350px](./content-folder/alt1_normalized_dual_axis.png)

</div>
<div class="column">

## Bubble Scatter
![height:350px](./content-folder/alt4_bubble_scatter.png)

</div>
</div>

---

# Efficiency Analysis

![height:500px](./content-folder/alt3_efficiency_per_round.png)

**Key Learning:** Different visualization methods reveal different insights

---

# Module 3: Exploratory Data Analysis

## The EDA Process

1. **Data Collection** - Gather relevant data
2. **Data Cleaning** - Handle missing values, outliers
3. **Univariate Analysis** - Explore single variables
4. **Bivariate Analysis** - Explore relationships
5. **Multivariate Analysis** - Complex interactions

---

# Case Study: Banking Data

## Using bankfull-uw.xlsx

- **Target Variable:** Term deposit subscription
- **Features:** Age, job, marital status, education, balance
- **Goal:** Identify success factors

**Group Activity:** Analyze success factors in small groups

---

# Success Factors Analysis

![height:500px](./content-folder/reason2_debt.png)

**Discussion Question:** How does debt affect subscription likelihood?

---

# Income Analysis

![height:500px](./content-folder/income_comparison_separate.png)

**Exercise:** Compare income distributions across groups

---

# Module 4: Drawing Conclusions

## Statistical Significance

- **p-value:** Probability of observing data if null hypothesis is true
- **α (alpha):** Significance level (typically 0.05)
- **Confidence Interval:** Range of plausible values

> If p < α, reject the null hypothesis

---

# Common Pitfalls

1. **Correlation ≠ Causation**
2. **Simpson's Paradox**
3. **Survivorship Bias**
4. **Overfitting**
5. **Ignoring Confounding Variables**

---

# Best Practices

✅ Always visualize your data first
✅ Check assumptions before applying tests
✅ Report effect sizes, not just p-values
✅ Use confidence intervals
✅ Be transparent about limitations

---

# Resources

## Further Reading

- *Think Stats* by Allen B. Downey
- *Data Science for Business* by Provost & Fawcett
- *Python for Data Analysis* by Wes McKinney

## Tools

- Python: pandas, numpy, matplotlib, seaborn
- R: ggplot2, dplyr, tidyr
- Excel: Data Analysis Toolpak

---

<!-- _class: lead -->
# Questions & Discussion

## Thank You!

**Email:** instructor@university.edu
**Slides:** [Link to presentation]
**Materials:** [Link to exercises]
