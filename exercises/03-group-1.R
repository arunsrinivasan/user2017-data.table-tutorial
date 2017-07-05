reset()

# 1. Get all rows where valA > 5 and valB is <= 16 from DT1.

# 2. Get all rows where valA is in between 5 and 8 (both included) from DT1.

# 3. Order DT1 by code in increasing order, and within that by valA in decreasing order.

# 4. Return the last two rows of DT1.

# 5. Return a random sample of 4 rows.

# 6. Get median of valA and valB cols where code is not “a”. Name the columns ‘mA’ and ‘mB’.

# 7. Remove all rows in DT2 where DT2$code is duplicated. Store the result in DT3. Hint: see ?duplicated.

# 8. Return all unique combinations of id, code (as a two column data.table) where valA^2 > valB. Hint: you’ll need to use the function `unique()` in `j`.

# 9. Read ?`.SD` and check explanation and examples and try to use `.SD` in `j` to solve (8). Hint: you might also need `.SDcols` argument.

# 10. For every DT3$code, return the last matching values of valA from DT1 along with ‘id’ column from DT3. i.e., result should contain code, valA and id (from DT3) columns. Do not remove non-matching rows.
