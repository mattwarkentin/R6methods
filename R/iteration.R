#' Make R6 Instance Iterable
#'
#' @description This function uses `coro` to create a generator.
#'   Using the returned object (a function), you can call this function to
#'   create an iterator. The iterator can be called repeatedly
#'   to produce batches of data. When all of the batches have been produced,
#'   the function will return the symbol `exhausted` for each call thereafter.
#'
#' @details A `coro` iterator is compatible with `for` loops via the
#'   `coro::loop()` function. `coro::collect()` can be used to collect the.
#'   next `n` set of batches. Leaving `n` blank will drain all of the remaining
#'   batches (assuming `length(x)` is not infinite). See `coro`
#'   documentation for more details.
#'
#' @param x `R6` object.
#'
#' @export
iter <- function(x) {
  stopifnot(inherits(x, "R6"))
  stopifnot(
    is.function(.subset2(x, ".__length__")),
    is.function(.subset2(x, ".__getitem__"))
  )
  coro::generator(
    function(collate_fn = NULL) {
      for (i in 1:x$.__length__()) {
        coro::yield(x$.__getitem__(i))
      }
    }
  )
}

#' @export
#' @rdname iter
is.iterable <- function(x) {
  if (
    is.function(.subset2(x, ".__length__")) &
    is.function(.subset2(x, ".__getitem__"))
  ) {
    TRUE
  } else {
    FALSE
  }
}
