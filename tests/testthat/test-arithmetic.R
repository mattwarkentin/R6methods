test_that("addition", {
  X <- R6::R6Class(
    public = list(
      x = 0,
      .__add__ = function(e2) {
        self$x <- self$x + e2
        self$x
      }
    )
  )
  x <- X$new()
  expect_equal(x + 10, 10)
})

test_that("subtraction", {
  X <- R6::R6Class(
    public = list(
      x = 0,
      .__sub__ = function(e2) {
        self$x <- self$x - e2
        self$x
      }
    )
  )
  x <- X$new()
  expect_equal(x - 10, -10)
})

test_that("multiplication", {
  X <- R6::R6Class(
    public = list(
      x = 1,
      .__mul__ = function(e2) {
        self$x <- self$x * e2
        self$x
      }
    )
  )
  x <- X$new()
  expect_equal(x * 10, 10)
})

test_that("division", {
  X <- R6::R6Class(
    public = list(
      x = 100,
      .__div__ = function(e2) {
        self$x <- self$x / e2
        self$x
      }
    )
  )
  x <- X$new()
  expect_equal(x / 10, 10)
})

test_that("powers", {
  X <- R6::R6Class(
    public = list(
      x = 2,
      .__pow__ = function(e2) {
        self$x <- self$x ^ e2
        self$x
      }
    )
  )
  x <- X$new()
  expect_equal(x ^ 10, 1024)
})

test_that("modular division", {
  X <- R6::R6Class(
    public = list(
      x = 100,
      .__mod__ = function(e2) {
        self$x <- self$x %% e2
        self$x
      }
    )
  )
  x <- X$new()
  expect_equal(x %% 10, 0)
})

test_that("integer division", {
  X <- R6::R6Class(
    public = list(
      x = 100,
      .__intdiv__ = function(e2) {
        self$x <- self$x %/% e2
        self$x
      }
    )
  )
  x <- X$new()
  expect_equal(x %/% 10, 10)
})
