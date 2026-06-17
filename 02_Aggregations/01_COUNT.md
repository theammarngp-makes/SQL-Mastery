# COUNT()

## Definition

COUNT() returns the number of rows that match a specified condition.

---

## Syntax

```sql
SELECT COUNT(*)
FROM employes;
```

---

## Example

```sql
SELECT COUNT(*) AS total_employees
FROM employes;
```

---

## Business Use Cases

- Count employees
- Count customers
- Count orders
- Count products

---

## Interview Tip

COUNT(*) counts all rows.

COUNT(column_name) ignores NULL values.