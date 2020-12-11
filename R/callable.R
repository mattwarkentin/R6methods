callable <- function(x, class) {
  stopifnot(R6::is.R6(x))

  function(...) {
    x$new(...)
    structure(
      x$.call,
      impl = x,
      class = class
    )
  }
}

`$.wrapped` <- function(x, name) {
  obj <- attr(x, "impl", exact = TRUE)
  obj[[name]]
}

`$<-.wrapped` <- function(x, name, value) {
  obj <- attr(x, "impl", exact = TRUE)
  obj[[name]] <- value
  x
}

.DollarNames.wrapped <- function(x, pattern) {
  ls(attr(x, "impl", exact = TRUE))
}
