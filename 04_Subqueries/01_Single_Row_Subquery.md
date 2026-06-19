# Single Row Subquery

## Definition

A Single Row Subquery returns exactly one value.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name >
(
    SELECT AVG(column_name)
    FROM table_name
);
```

---

## Operators Used

- =
- >
- <
- >=
- <=

---

## Business Use Cases

- Compare employees against company average
- Compare product prices against average price
- Compare sales against average sales

---

## Interview Tip

Use scalar operators only when the subquery returns one value.

---

## Practice Questions

1. Find employees whose emp_id is greater than average emp_id.
2. Find employees whose emp_id is less than average emp_id.
