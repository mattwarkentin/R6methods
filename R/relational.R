#' @export
`<.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__lt__"))) {
    .subset2(e1, ".__lt__")(e2)
  } else {
    rlang::abort(
      paste0("No `<` method defined for R6 instance")
    )
  }
}

#' @export
`>.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__gt__"))) {
    .subset2(e1, ".__gt__")(e2)
  } else {
    rlang::abort(
      paste0("No `>` method defined for R6 instance")
    )
  }
}

#' @export
`<=.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__le__"))) {
    .subset2(e1, ".__le__")(e2)
  } else {
    rlang::abort(
      paste0("No `<=` method defined for R6 instance")
    )
  }
}

#' @export
`>=.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__ge__"))) {
    .subset2(e1, ".__ge__")(e2)
  } else {
    rlang::abort(
      paste0("No `>=` method defined for R6 instance")
    )
  }
}

#' @export
`==.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__eq__"))) {
    .subset2(e1, ".__eq__")(e2)
  } else {
    rlang::abort(
      paste0("No `==` method defined for R6 instance")
    )
  }
}

#' @export
`!=.R6` <- function(e1, e2) {
  if (is.function(.subset2(e1, ".__ne__"))) {
    .subset2(e1, ".__ne__")(e2)
  } else {
    rlang::abort(
      paste0("No `!=` method defined for R6 instance")
    )
  }
}

#' @export
`all.equal.R6` <- function(target, current, ...) {
  if (is.function(.subset2(target, ".__ae__"))) {
    .subset2(target, ".__ae__")(current, ...)
  } else {
    rlang::abort(
      paste0("No `all.equal` method defined for R6 instance")
    )
  }
}
