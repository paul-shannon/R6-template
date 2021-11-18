library(RUnit)
library(R6template)
#----------------------------------------------------------------------------------------------------
runTests <- function()
{
    test_ctor()

} # runTests
#----------------------------------------------------------------------------------------------------
test_ctor <- function()
{
    message(sprintf("--- test_ctor"))

    id <- "abc"
    rt <- R6template$new(id)
    checkTrue(all(c("R6", "R6template") %in% class(rt)))
    checkEquals(rt$getID(), id)

} # test_ctor
#----------------------------------------------------------------------------------------------------
if(!interactive())
    runTests()
