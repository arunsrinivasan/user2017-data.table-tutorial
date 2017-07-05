set.seed(20170703L)
DF1 = data.frame(id = sample(1:2, 9L, TRUE), 
               code = sample(letters[1:3], 9, TRUE), 
               valA = 1:9, valB = 10:18, 
               stringsAsFactors = FALSE)
DF2 = data.frame(id = c(3L, 1L, 1L, 2L, 3L), 
               code = c("b", "a", "c", "c", "d"), 
                mul = 5:1, stringsAsFactors = FALSE)

# 10. Subset DF1 by DF2 on id,code column. That is, for each row of DF2$id, DF2$code, get valA and valB cols from DF1. Include rows that have no matches as well.

# 11. Same as (10), but fetch just the first matching row of DF1 for each row of DF2$id, DF2$code. Exclude non-matching rows.

# 12. For every row of DF2$id, DF2$code that matches with DF1’s, update  valA with valA*mul.

# 13. Add a new column val to DF1 with values from DF2$mul where DF2$id, DF2$code matches with DF1’s. Rows that don’t match should have NA.

# 14. Compute sum(valA)*mul for every row of DF2$id, DF2$code by matching it against DF1.

# 15. For every row of DF2$id, DF2$code that matches with DF1’s, update valB with valB*mul.
