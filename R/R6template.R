#' A template for building documented, tested R6 classes
#'
#' @title R6template
#' @description A template for building documented, tested R6 classes
#' @name R6template

#' @field id identifier for a class object
#'
#' @examples
#'   rt <- R6Template$new(id="abc")
#' @export

R6template = R6Class("R6template",

    #--------------------------------------------------------------------------------
    private = list(id=NULL
                   ),

    #--------------------------------------------------------------------------------
    public = list(
         #' @description
         #' Creates a new instance of this [R6][R6::R6Class] class.
         #' @param id character, an indentifier for this object
         #' @return a new instance o R6template
        initialize = function(id){
            private$id <- id
            },
        #------------------------------------------------------------
        #' @description simple accessor
        #' @return the current value of the id member
        getID = function(){
            private$id
            }
       ) # public

    ) # class
#--------------------------------------------------------------------------------
