#' Make R6 Instance Callable
#'
#' @description This function will turn your `R6` object into a callable
#'   function, assuming it contains the dot-dunder function `.__call__()` as
#'   a public method.
#'
#' @param x An `R6` object.
#'
#' @return A function with the added class `R6Callable` and the `R6` object
#'   added as an attributed named `impl`.
#'
#' @export
callable <- function(x, ...) {
  stopifnot(inherits(x, "R6"))
  if (.subset2(x, ".__call__")) {
    structure(
      x$.__call__,
      impl = x,
      class = c("R6Callable", class(x))
    )
  } else {
    rlang::abort("No `.__call__` method defined for R6 class.")
  }
}

#' @export
`$.R6Callable` <- function(x, name) {
  obj <- attr(x, "impl", exact = TRUE)
  do.call("$", args = list(obj, name))
}

#' @export
`$<-.R6Callable` <- function(x, name, value) {
  obj <- attr(x, "impl", exact = TRUE)
  do.call("$<-", args = list(obj, name, value))
  x
}
