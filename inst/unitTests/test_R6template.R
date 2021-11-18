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
    checkTrue("R6template" %in% is(rt))

} # test_ctor
#----------------------------------------------------------------------------------------------------
if(!interactive())
    runTests()
