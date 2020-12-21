#' @export
`+.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__add__"))) {
    .subset2(e1, ".__add__")(e2)
  } else {
    NextMethod()
  }
}

#' @export
`-.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__sub__"))) {
    .subset2(e1, ".__sub__")(e2)
  } else {
    NextMethod()
  }
}

#' @export
`*.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__mul__"))) {
    .subset2(e1, ".__mul__")(e2)
  } else {
    NextMethod()
  }
}

#' @export
`/.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__div__"))) {
    .subset2(e1, ".__div__")(e2)
  } else {
    NextMethod()
  }
}

#' @export
`^.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__pow__"))) {
    .subset2(e1, ".__pow__")(e2)
  } else {
    NextMethod()
  }
}

#' @export
`%%.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__mod__"))) {
    .subset2(e1, ".__mod__")(e2)
  } else {
    NextMethod()
  }
}

#' @export
`%/%.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__intdiv__"))) {
    .subset2(e1, ".__intdiv__")(e2)
  } else {
    NextMethod()
  }
}
