`+.R6` <- function(...) {
  if (is.function(.subset2(..1, ".add"))) {
    .subset2(..1, ".add")(..2)
  } else {
    rlang::abort(
      glue("No `+` method defined for R6 instance")
    )
  }
  x
}

`-.R6` <- function(...) {
  if (is.function(.subset2(..1, ".sub"))) {
    .subset2(..1, ".sub")(..2)
  } else {
    rlang::abort(
      glue("No `-` method defined for R6 instance")
    )
  }
  x
}

`*.R6` <- function(...) {
  if (is.function(.subset2(..1, ".mul"))) {
    .subset2(..1, ".mul")(..2)
  } else {
    rlang::abort(
      glue("No `*` method defined for R6 instance")
    )
  }
  x
}

`/.R6` <- function(...) {
  if (is.function(.subset2(..1, ".div"))) {
    .subset2(..1, ".div")(..2)
  } else {
    rlang::abort(
      glue("No `/` method defined for R6 instance")
    )
  }
  x
}

`^.R6` <- function(...) {
  if (is.function(.subset2(..1, ".pow"))) {
    .subset2(..1, ".pow")(..2)
  } else {
    rlang::abort(
      glue("No `^` method defined for R6 instance")
    )
  }
  x
}

`**.R6` <- function(...) {
  if (is.function(.subset2(..1, ".pow"))) {
    .subset2(..1, ".pow")(..2)
  } else {
    rlang::abort(
      glue("No `^` method defined for R6 instance")
    )
  }
  x
}

`%%.R6` <- function(...) {
  if (is.function(.subset2(..1, ".mod"))) {
    .subset2(..1, ".mod")(..2)
  } else {
    rlang::abort(
      glue("No `%%` method defined for R6 instance")
    )
  }
  x
}

`%/%.R6` <- function(...) {
  if (is.function(.subset2(..1, ".intdiv"))) {
    .subset2(..1, ".intdiv")(..2)
  } else {
    rlang::abort(
      glue("No `%/%` method defined for R6 instance")
    )
  }
  x
}
