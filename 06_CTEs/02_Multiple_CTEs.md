# Multiple CTEs

## Business Question

How can multiple temporary datasets be combined
before performing analysis?

## SQL Solution

See 02_Multiple_CTEs.sql

## Explanation

Multiple CTEs allow data preparation in stages.

Each CTE focuses on a specific piece of logic.

## Finding

Employee and department data were separated into
individual reusable blocks and later combined.

This makes large SQL queries easier to maintain.

## Common Mistakes

- Using duplicate CTE names
- Referencing a CTE before it is created
- Missing commas between CTE definitions

## Interview Tips

Multiple CTEs are frequently used in reporting
and dashboard development.

## Practice Questions

1. Add a third CTE for locations.
2. Filter departments before joining.
