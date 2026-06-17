# HAVING

## Definition

HAVING filters grouped results after aggregation.

WHERE filters rows.

HAVING filters groups.

---

## Example

```sql
SELECT
    dept_id,
    COUNT(*) AS employee_count
FROM employes
GROUP BY dept_id
HAVING COUNT(*) > 1;
```

---

## Common Mistake

Wrong:

```sql
WHERE COUNT(*) > 1
```

Correct:

```sql
HAVING COUNT(*) > 1
```

---

## Interview Tip

WHERE → Rows

HAVING → Groups