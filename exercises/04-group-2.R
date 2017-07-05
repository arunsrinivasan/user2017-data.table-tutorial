reset()

# 1. In DT1, on those rows where id != 2, replace valA and valB with valA+1 and valB+1 respectively.

# 2. On those rows where id == 2, replace valA with valB if valA is <= 7, else with valB^2.

# 3. Create a new column `tmp` and assign `NA` to it by reference.

# 4. What’s the type (or class) of `tmp` column that we just created?

# 5. Do DT1[, tmp := NULL] and observe the output.. What’s the difference compared to (3)?

# 6. Create a new column named “rank” which takes value 1 where code == “a”, 2 where code == “b” and 3 where code == “c”. Do it in as many different ways you could think of :-).

# 7. Let DT3 = DT2[!duplicated(code)]. Update both valA and valB columns with ‘valA*mul’ and ‘valB*mul’ wherever DT3$code matches DT1$code.. What happens to those rows where there are no matches in DT1? Why?

# 8. Add the column ‘mul’ from DT2 to DT1 by reference where DT2$id matches DT1$id. What happens to those values where DT2$id has the same value occurring more than once?

# 9. Replace DT2$mul with NA where DT1$id, DT1$code matches DT2$id, DT2$code.
