reset()

# 1) Update valB with valB*<no: of rows in that group> grouped by code

# 2) Update both valA and valB with valA*max(valA) and valB*max(valB) respectively grouped by id, code

# 3) Create two new columns ‘A2’, ‘B2’, while grouped by code, by randomly sampling (with replacement) the same number of rows in the group from valA and valB respectively.

# 4. Add a column named ‘uniq_N’ which contains the count of unique ‘code’ values, while grouped by ‘id’.

# 5. Update all rows of valB with NA where DT3$id, DT3$code *don’t* match with DT1$id, DT1$code. 

# 6. Let DT3 = DT2[!duplicated(id)]. For each DT3$id, find all rows in DT1$id that is <= DT3$id and compute sum(valA)*mul.