# 1) Update valB with valB*<no: of rows in that group> grouped by code
DT1[, valB := valB*.N, by=code]

# 2) Update both valA and valB with valA*max(valA) and valB*max(valB) respectively grouped by id, code
DT1[, c("valA", "valB") := lapply(.SD, function(x) x*max(x)), by=.(id,code)]

# 3) Create two new columns ‘A2’, ‘B2’, while grouped by code, by randomly sampling (with replacement) the same number of rows in the group from valA and valB respectively.
DT1[, c("A2", "B2") := lapply(.SD, function(x) sample(x, .N)), by=code, .SDcols=valA:valB]

# 4. Add a column named ‘uniq_N’ which contains the count of unique ‘code’ values, while grouped by ‘id’.
DT1[, uniq_N := uniqueN(code), by=id]

# 5. Update all rows of valB with NA where DT3$id, DT3$code *don’t* match with DT1$id, DT1$code. 
DT1[!DT3, on=.(id, code), valB := NA]

# 6. Let DT3 = DT2[!duplicated(id)]. For each DT3$id, find all rows in DT1$id that is <= DT3$id and compute sum(valA)*mul.
DT1[DT3, on=.(id <= id), 
    sum(valA)*mul, by=.EACHI]
