# 1. Get all rows where valA > 5 and valB is <= 16 from DT1.
DT1[valA > 5L & valB <= 16L]

# 2. Get all rows where valA is in between 5 and 8 (both included) from DT1.
DT1[valA %between% c(5L, 8L)]
DT1[valA %in% 5:8]

# 3. Order DT1 by code in increasing order, and within that by valA in decreasing order.
ans <- DT1[order(code, -valA)] # returns new data..
setorder(DT1, code, -valA) # updates by reference.. DT1 is rearranged

# 4. Return the last two rows of DT1.
DT1[(.N-1L):.N]

# 5. Return a random sample of 4 rows.
DT1[sample(.N, 4L)]

# 6. Get median of valA and valB cols where code is not “a”. Name the columns ‘mA’ and ‘mB’.
DT1[code != "a", .(mA=median(valA), mB=median(valB))]

# 7. Remove all rows in DT2 where DT2$code is duplicated. Store the result in DT3. Hint: see ?duplicated.
DT3 <- DT2[!duplicated(code)]

# 8. Return all unique combinations of id, code (as a two column data.table) where valA^2 > valB. Hint: you’ll need to use the function `unique()` in `j`.
DT1[valA^2 > valB, unique(as.data.table(list(id, code)))]

# 9. Read ?`.SD` and check explanation and examples and try to use `.SD` in `j` to solve (8). Hint: you might also need `.SDcols` argument.

DT1[valA^2 > valB, unique(.SD), .SDcols=id:code]

# 10. For every DT3$code, return the last matching values of valA from DT1 along with ‘id’ column from DT3. i.e., result should contain code, valA and id (from DT3) columns. Do not remove non-matching rows.
DT1[DT3, on=.(code), .(code, valA, i.id)]
