# 1. In DT1, on those rows where id != 2, replace valA and valB with valA+1 and valB+1 respectively.
DT1[id != 2L, c("valA", "valB") := list(valA+1L, valB+1L)]
# or
DT[id != 2L, `:=`(valA=valA+1L, valB=valB+1L)]

# 2. On those rows where id == 2, replace valA with valB if valA is <= 7, else with valB^2.
DT1[id == 2L, valA := ifelse(valA <= 7L, valB, as.integer(valB^2))]

# 3. Create a new column `tmp` and assign `NA` to it by reference.
DT1[, tmp := NA]

# 4. What’s the type (or class) of `tmp` column that we just created?
class(DT1$tmp) # logical

# 5. Do DT1[, tmp := NULL] and observe the output.. What’s the difference compared to (3)?
DT1[, tmp := NULL] # deletes the column

# 6. Create a new column named “rank” which takes value 1 where code == “a”, 2 where code == “b” and 3 where code == “c”. Do it in as many different ways you could think of :-).
DT1[code == "a", rank := 1L][code == "b", rank := 2L][code == "c", rank := 3L]
DT1[, rank := as.integer(factor(code))]
tmp_dt <- data.table(keys=c("a", "b", "c"), vals =1:3)
DT1[tmp_dt, on=.(code=keys), rank := i.vals]

# 7. Let DT3 = DT2[!duplicated(code)]. Update both valA and valB columns with ‘valA*mul’ and ‘valB*mul’ wherever DT3$code matches DT1$code.. What happens to those rows where there are no matches in DT1? Why?
DT1[DT3, on=.(code), c("valA", "valB") := lapply(.SD, `*`, i.mul), .SDcols=valA:valB]

# 8. Add the column ‘mul’ from DT2 to DT1 by reference where DT2$id matches DT1$id. What happens to those values where DT2$id has the same value occurring more than once?
DT1[DT2, on="id", mul := i.mul]

# 9. Replace DT2$mul with NA where DT1$id, DT1$code matches DT2$id, DT2$code.
DT2[DT1, on=.(id, code), mul := NA]
