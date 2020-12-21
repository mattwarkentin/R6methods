#' @export
`$.R6` <- function(x, name) {
  if (is.function(.subset2(x, ".__dollar__"))) {
    .subset2(x, ".__dollar__")(name)
  } else {
    NextMethod("$", x, name)
  }
}

#' @export
`$<-.R6` <- function(x, name, value) {
  if (is.function(.subset2(x, ".__dollarrep__"))) {
    .subset2(x, ".__dollarrep__")(name, value)
  } else {
    NextMethod("$<-", x, name, value)
  }
}

