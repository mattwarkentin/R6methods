#' @export
`$.R6` <- function(x, name) {
  if (is.function(.subset2(x, ".__dollar__"))) {
    .subset2(x, ".__dollar__")(name)
  } else {
    NextMethod("$", x)
  }
}

#' @export
`$<-.R6` <- function(x, name, value) {
  if (is.function(.subset2(x, ".__dollarrep__"))) {
    .subset2(x, ".__dollarrep__")(name, value)
  } else {
    NextMethod("$<-", x)
  }
}

#' @export
`[.R6` <- function(x, i, j, ...) {
  if (is.function(.subset2(x, ".__subset__"))) {
    .subset2(x, ".__subset__")(i, j, ...)
  } else {
    NextMethod("[", x)
  }
}

#' @export
`[[.R6` <- function(x, i, j, ...) {
  if (is.function(.subset2(x, ".__subset2__"))) {
    .subset2(x, ".__subset2__")(i, j, ...)
  } else {
    NextMethod("[[", x)
  }
}

#' @export
`[<-.R6` <- function(x, ..., value) {
  if (is.function(.subset2(x, ".__subsetrep__"))) {
    .subset2(x, ".__subsetrep__")(..., value)
  } else {
    NextMethod("[<-", x, ..., value)
  }
}

#' @export
`[[<-.R6` <- function(x, ..., value) {
  if (is.function(.subset2(x, ".__subset2rep__"))) {
    .subset2(x, ".__subset2rep__")(..., value)
  } else {
    NextMethod("[[<-", x, ..., value)
  }
}
