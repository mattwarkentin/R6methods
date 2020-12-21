test_that("subset", {
  X <- R6::R6Class(
    public = list(
      x = mtcars,
      .__subset__ = function(i, j, ...) {
        self$x[i, j, ...]
      }
    )
  )
  x <- X$new()
  expect_equal(x[1:5, 1], mtcars[1:5, 1])
  expect_equal(x[1:6], head(mtcars))
})

test_that("subset2", {
  X <- R6::R6Class(
    public = list(
      x = mtcars,
      .__subset2__ = function(i, j, ...) {
        self$x[i, j, ...]
      }
    )
  )
  x <- X$new()
  expect_equal(x[[1, 1]], mtcars[[1, 1]])
})

test_that("subsetrep", {
  X <- R6::R6Class(
    public = list(
      x = mtcars,
      .__subsetrep__ = function(i, j, ..., value) {
        self$x[i, j, ...] <- value
        self
      }
    )
  )
  x <- X$new()
  x[1, 1] <- 10
  expect_equal(x$x[1, 1], 10)
})

test_that("subset2rep", {
  X <- R6::R6Class(
    public = list(
      x = mtcars,
      .__subset2rep__ = function(i, j, ..., value) {
        self$x[[i, j, ...]] <- value
        self
      }
    )
  )
  x <- X$new()
  x[[1, 1]] <- 10
  expect_equal(x$x[[1, 1]], 10)
})
