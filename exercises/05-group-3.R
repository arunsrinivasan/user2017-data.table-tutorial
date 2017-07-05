reset()

# 1. Get max(valB) - min(valA) grouped by code. Name the column ‘diff’.

# 2. Get max(valA) - min(valB) grouped by code and id. Name the column ‘diff’

# 3. Get the median of valA grouped by code.

# 4. Get the median of valA and log(sum(valB)) grouped by code. Why does it fail? Hint: Read the error message and use verbose = TRUE for both (3) and (4) and observe the difference.

# 5. For each code (i.e., grouped by code) randomly sample one row of the rest of the columns. Hint: you could do it with `.SD` and `.N` and `sample()`.

# 6. Get the most frequently occurring code grouped by id. This might require multiple steps.

# 7. Get the count of values where valA > sqrt(valB) is TRUE and the count of values where the condition isn’t TRUE.

# 8. Get min(valA) of DT1 from rows that match id, code from DT2 and NA if it doesn't match.

# 9. Get max(valB) of DT1 from rows that match id, code from DT2. Only keep matching rows

# 10. Get min(valA)*mul from rows that match id, code between DT1 & DT2 and NA if it doesn't match
