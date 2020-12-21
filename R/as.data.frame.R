#' @export
as.data.frame.R6 <- function(x, ...) {
  if (is.function(.subset2(x, ".__data__"))) {
    .subset2(x, ".__data__")(...)
  } else {
    NextMethod()
  }
}
