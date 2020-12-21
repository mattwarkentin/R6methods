test_that("length() works", {
  X <- R6::R6Class(
    public = list(
      .__length__ = function() {
        nrow(mtcars)
      }
    )
  )
  x <- X$new()
  expect_equal(length(x), 32)
})

test_that("names() works", {
  X <- R6::R6Class(
    public = list(
      .__names__ = function() {
        names(mtcars)
      }
    )
  )
  x <- X$new()
  expect_equal(names(x), names(mtcars))
})

test_that("str() works", {
  X <- R6::R6Class(
    public = list(
      .__str__ = function() {
        str(mtcars)
      }
    )
  )
  x <- X$new()
  expect_equal(str(x), str(mtcars))
})
