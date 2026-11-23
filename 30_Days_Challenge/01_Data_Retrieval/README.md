# 01 | Data Retrieval

> Days 01-03 | Learn how to pull the right rows and columns out of a table.

<p>
  <img src="https://img.shields.io/badge/Days-1--3-2ea44f?style=flat-square" />
  <img src="https://img.shields.io/badge/Completed-1%2F3-orange?style=flat-square" />
  <img src="https://img.shields.io/badge/Database-AdventureWorks2025-0078D4?style=flat-square" />
</p>

| Day | Topic | File | Status |
|:---:|-------|------|:------:|
| 01 | `SELECT` `WHERE` `ORDER BY` `DISTINCT` | [Day01_Select_Where_OrderBy_Distinct.sql](Day01_Select_Where_OrderBy_Distinct.sql) | ✅ |
| 02 | `TOP` `OFFSET-FETCH` | Day02_Top_OffsetFetch.sql | ⏳ |
| 03 | `LIKE` `IN` `BETWEEN` `IS NULL` | Day03_Like_In_Between_IsNull.sql | 🔒 |

---

## Day 01: SELECT, WHERE, ORDER BY, DISTINCT

**Tables used:** `Production.Product`, `Person.Person`

### Concepts

| Concept | What it does | Example |
|---------|--------------|---------|
| `SELECT` | Chooses which columns to show | `SELECT Name, ListPrice` |
| `WHERE` | Keeps only rows that match a condition | `WHERE ListPrice > 1000` |
| `ORDER BY` | Sorts the result (`ASC` default, `DESC` high to low) | `ORDER BY ListPrice DESC` |
| `DISTINCT` | Removes duplicate rows | `SELECT DISTINCT Color` |
| `IN` | Short form of multiple `OR` conditions | `Color IN ('Red', 'Black')` |
| `IS NULL` | Checks for missing values | `WHERE Color IS NOT NULL` |

### Key points

- `NULL` means "unknown", so `= NULL` never works. Use `IS NULL` or `IS NOT NULL`.
- `WHERE` filters rows before `SELECT` runs.
- `ORDER BY` runs last, so it can use column aliases. `WHERE` cannot.
- `SELECT *` is fine for a quick look, but name your columns in real work.

### Order of execution

```
FROM  →  WHERE  →  SELECT  →  DISTINCT  →  ORDER BY
```

### Questions solved

| # | Business question | Tables |
|:-:|-------------------|--------|
| 1 | List all products with color and price, most expensive first | `Production.Product` |
| 2 | Find all distinct product colors (no NULLs) | `Production.Product` |
| 3 | Find Red or Black products priced above 1000 | `Production.Product` |
| 4 | Find all people with last name "Smith", sorted by first name | `Person.Person` |
| 5 | List all distinct person types in the company | `Person.Person` |

---

## Day 02: TOP and OFFSET-FETCH

**Status:** ⏳ In progress

### Concepts

| Concept | What it does | Example |
|---------|--------------|---------|
| `TOP (N)` | Returns only the first N rows | `SELECT TOP 5 Name ...` |
| `TOP (N) PERCENT` | Returns the top N percent of rows | `SELECT TOP 10 PERCENT ...` |
| `WITH TIES` | Also keeps rows that tie with the last row | `SELECT TOP 5 WITH TIES ...` |
| `OFFSET-FETCH` | Skips rows, then takes a set number (paging) | `OFFSET 10 ROWS FETCH NEXT 5 ROWS ONLY` |

### Key points

- Always use `TOP` and `OFFSET-FETCH` with `ORDER BY`. Without sorting, "first" means random rows.
- `WITH TIES` and `OFFSET-FETCH` need `ORDER BY`.
- Use `TOP` for "top N" questions and `OFFSET-FETCH` for pages.

*Questions solved: add after finishing Day 02.*

---

## Day 03: LIKE, IN, BETWEEN, IS NULL

**Status:** 🔒 Upcoming
