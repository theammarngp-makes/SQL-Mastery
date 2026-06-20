# CASE WHEN

## Overview

CASE WHEN allows conditional logic inside SQL queries.

It is one of the most important SQL concepts used in Data Analytics because it helps transform raw data into meaningful business categories.

Think of CASE WHEN as SQL's version of IF-ELSE statements.

---

## Why CASE WHEN Matters

Business users rarely want raw values.

They want categories such as:

- High Value Customer
- Low Value Customer
- Active User
- Inactive User
- Large Department
- Small Department

CASE WHEN makes this possible directly inside SQL.

---

## Syntax

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE result3
END
```

---

## Topics Covered

### Basic CASE WHEN

Employee manager status classification.

### Department Categorization

Classifying departments as:

- Large
- Medium
- Small

### City Analysis

Classifying cities based on department concentration.

### Employee Labelling

Creating readable employee location labels.

### Business Rule Implementation

Employee seniority categorization.

---

## Skills Developed

- Conditional Logic
- Business Rule Implementation
- Data Categorization
- Reporting Logic
- Dashboard Preparation

---

## Business Applications

CASE WHEN is commonly used for:

- Customer Segmentation
- Revenue Bucketing
- Employee Classification
- KPI Reporting
- Risk Categorization
- Dashboard Metrics

---

## Common Mistakes

### Missing ELSE

```sql
CASE
    WHEN condition THEN value
END
```

Always prefer:

```sql
CASE
    WHEN condition THEN value
    ELSE other_value
END
```

### Incorrect Condition Order

CASE evaluates conditions from top to bottom.

The first TRUE condition is returned.

---

## Interview Questions

### What is CASE WHEN?

A conditional expression that returns values based on specified conditions.

### Does CASE stop after the first TRUE condition?

Yes.

### Can CASE be used with aggregate functions?

Yes.

Examples:

- COUNT()
- SUM()
- AVG()

---

## Files

```text
01_Basic_CASE_WHEN
02_Department_Categorization
03_City_Analysis
04_Employee_Labelling
05_Business_Rules
```

---

## Key Takeaway

CASE WHEN transforms raw data into business-friendly information and is one of the most frequently used SQL features in Data Analytics.
