reset <- function() {
  require(data.table)
  set.seed(20170703L)
  DT1 = data.table(id = sample(1:2, 9L, TRUE), 
                 code = sample(letters[1:3], 9, TRUE), 
                 valA = 1:9, valB = 10:18)
  DT2 = data.table(id = c(3L, 1L, 1L, 2L, 3L), 
                 code = c("b", "a", "c", "c", "d"), 
                  mul = 5:1)
  assign("DT1", DT1, .GlobalEnv)
  assign("DT2", DT2, .GlobalEnv)
}
