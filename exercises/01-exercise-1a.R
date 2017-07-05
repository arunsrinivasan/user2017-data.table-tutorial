set.seed(20170703L)
DF1 = data.frame(id = sample(1:2, 9L, TRUE), 
               code = sample(letters[1:3], 9, TRUE), 
               valA = 1:9, valB = 10:18, 
               stringsAsFactors = FALSE)
DF2 = data.frame(id = c(3L, 1L, 1L, 2L, 3L), 
               code = c("b", "a", "c", "c", "d"), 
                mul = 5:1, stringsAsFactors = FALSE)

# 1a. Subset all rows where id column equals 1 & code column is not equal to "c"

# 1b. Same as (1) but perform the subset using with(). See ?with if necessary

# 2. Select valA and valB columns from DF1 and store it in variable tmp1

# 3. Get sum(valA) and sum(valB) for id > 1 as a 1-row, 2-col data.frame

# 4. Replace valB with valB+1 for all rows where code == "c"

# 5. Add a new column valC column with values equal to valB^2 - valA^2

# 6. Get sum(valA) and sum(valB) grouped by id and code (i.e., for each unique combination of id,code)

# 7. Get sum(valA) and sum(valB) grouped by id for id >= 2 & code %in% c("a", "c")

# 8. Replace valA with max(valA)-min(valA) grouped by code

# 9. Create a new col named valD with max(valB)-min(valA) grouped by code
