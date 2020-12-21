#' @export
length.R6  <- function(x) {
  if (is.function(.subset2(x, ".__length__"))) {
    .subset2(x, ".__length__")()
  } else {
    NextMethod("length", x)
  }
}

#' @export
names.R6 <- function(x) {
  if (is.function(.subset2(x, ".__names__"))) {
    .subset2(x, ".__names__")()
  } else {
    NextMethod("names", x)
  }
}

#' @export
str.R6 <- function(object, ...) {
  if (is.function(.subset2(object, ".__str__"))) {
    do.call(.subset2(object, ".__str__"), args = list(...))
  } else {
    NextMethod("str", object)
  }
}
