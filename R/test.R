#' test function
#'
#' \code{test} actually return the square of its input
#'
#' @param x numeric
#'
#' @return the square of \code{x}
#'
#' @examples
#' test(3L)
#' test(3.5)
#' @export
test <- function(x) x ^ 2


#' Constructor
#'
#' \code{new_foo} is a constructor for class foo
#'
#' @param x numeric
#'
#' @return object of class foo
#'
#' @examples
#' nf <- new_foo(3)
#' @export
new_foo <- function(x) {
  stopifnot(is.numeric(x))
  structure(x, class = "foo")
}

#' Big time extrovert
#'
#' \code{showoff} is a generic
#'
#' @param x numeric
#'
#' @return show off number
#'
#' @examples
#' nf <- new_foo(3)
#' @export
showoff <- function(x) {
  UseMethod("showoff")
}


#' Big time extrovert for foo
#'
#' \code{showoff} is a method for class foo of generic
#'
#' @param x numeric
#'
#' @return show off number for foo
#'
#' @examples
#' nf <- new_foo(3)
#' showoff(nf)
#' @export
showoff.foo <- function(x) {
  x ^ 3
}

# showoff.default <- function(x) {
#   x ^ 4
# }
