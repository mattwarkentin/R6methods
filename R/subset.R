#' @export
`[.R6` <- function(x, i, j, ...) {
  if (is.function(.subset2(x, ".__subset__"))) {
    .subset2(x, ".__subset__")(i, j, ...)
  } else {
    NextMethod()
  }
}

#' @export
`[[.R6` <- function(x, i, j, ...) {
  if (is.function(.subset2(x, ".__subset2__"))) {
    .subset2(x, ".__subset2__")(i, j, ...)
  } else {
    NextMethod()
  }
}

#' @export
`[<-.R6` <- function(x, i, j, ..., value) {
  if (is.function(.subset2(x, ".__subsetrep__"))) {
    .subset2(x, ".__subsetrep__")(i, j, ..., value = value)
  } else {
    NextMethod()
  }
}

#' @export
`[[<-.R6` <- function(x, i, j, ..., value) {
  if (is.function(.subset2(x, ".__subset2rep__"))) {
    .subset2(x, ".__subset2rep__")(i, j, ..., value = value)
  } else {
    NextMethod()
  }
}
