test_that("less than", {
  X <- R6::R6Class(
    public = list(
      x = 10,
      .__lt__ = function(e2) {
        self$x < e2
      }
    )
  )
  x <- X$new()
  expect_false(x < 10)
  expect_true(x < 11)
})

test_that("greater than", {
  X <- R6::R6Class(
    public = list(
      x = 10,
      .__gt__ = function(e2) {
        self$x > e2
      }
    )
  )
  x <- X$new()
  expect_false(x > 10)
  expect_true(x > 9)
})

test_that("less than or equal to", {
  X <- R6::R6Class(
    public = list(
      x = 10,
      .__le__ = function(e2) {
        self$x <= e2
      }
    )
  )
  x <- X$new()
  expect_false(x <= 9)
  expect_true(x <= 11)
})

test_that("greater than or equal to", {
  X <- R6::R6Class(
    public = list(
      x = 10,
      .__ge__ = function(e2) {
        self$x >= e2
      }
    )
  )
  x <- X$new()
  expect_false(x >= 11)
  expect_true(x >= 9)
})

test_that("equality", {
  X <- R6::R6Class(
    public = list(
      x = 10,
      .__eq__ = function(e2) {
        self$x == e2
      }
    )
  )
  x <- X$new()
  expect_false(x == 11)
  expect_true(x == 10)
})

test_that("non-equality", {
  X <- R6::R6Class(
    public = list(
      x = 10,
      .__ne__ = function(e2) {
        self$x != e2
      }
    )
  )
  x <- X$new()
  expect_false(x != 10)
  expect_true(x != 9)
})

test_that("all.equal", {
  X <- R6::R6Class(
    public = list(
      x = 10,
      .__ae__ = function(e2) {
        all.equal(self$x, e2)
      }
    )
  )
  x <- X$new()
  expect_equal(all.equal(x, 11), 'Mean relative difference: 0.1')
  expect_true(all.equal(x, 10))
})
