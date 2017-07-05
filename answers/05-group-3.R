# 1. Get max(valB) - min(valA) grouped by code. Name the column ‘diff’.
DT1[, .(diff=max(valB)-min(valA)), by=code]

# 2. Get max(valA) - min(valB) grouped by code and id. Name the column ‘diff’
DT1[, .(diff=max(valA)-min(valB)), by=.(code, id)]

# 3. Get the median of valA grouped by code.
DT1[, median(valA), by=code]

# 4. Get the median of valA and log(sum(valB)) grouped by code. Why does it fail? Hint: Read the error message and use verbose = TRUE for both (3) and (4) and observe the difference.
DT1[, .(median(valA), log(sum(valB))), by=code]

# 5. For each code (i.e., grouped by code) randomly sample one row of the rest of the columns. Hint: you could do it with `.SD` and `.N` and `sample()`.
DT1[, .SD[sample(.N, 1L)], by=code]

# 6. Get the most frequently occurring code grouped by id. This might require multiple steps.
DT1[order(id, code), .N, by=.(id, code)][, code[which.max(N)], by=id]
DT1[, .N, by=.(id, code)][order(id, code), code[which.max(N)], by=id]
DT1[, .N, keyby=.(id, code)][, code[which.max(N)], by=id]

# 7. Get the count of values where valA > sqrt(valB) is TRUE and the count of values where the condition isn’t TRUE.
DT1[, .N, by=.(cndn=valA > sqrt(valB))]

# 8. Get min(valA) of DT1 from rows that match id, code from DT2 and NA if it doesn't match.
DT1[DT2, on=.(id, code), 
   min(valA), by=.EACHI]

# 9. Get max(valB) of DT1 from rows that match id, code from DT2. Only keep matching rows
DT1[DT2, on=.(id, code), 
   max(valB), by=.EACHI, nomatch=0L]

# 10. Get min(valA)*mul from rows that match id, code between DT1 & DT2 and NA if it doesn't match
DT1[DT3, on=.(id, valA>=mul), 
    sum(valB), by=.EACHI]
