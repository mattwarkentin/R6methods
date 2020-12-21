test_that("iteration works", {
  X <- R6::R6Class(
    public = list(
      data = mtcars,
      .__length__ = function() {
        nrow(self$data)
      },
      .__getitem__ = function(...) {
        self$data[..1, , drop = FALSE]
      }
    )
  )
  x <- X$new()
  gen <- iter(x)
  ii <- gen()
  expect_equal(ii(), mtcars[1, , drop = FALSE])
  expect_equal(coro::collect(ii, 1), list(mtcars[2, , drop = FALSE]))
})

test_that("is.iterable() works", {
  X <- R6::R6Class(
    public = list(
      data = mtcars,
      .__length__ = function() {
        nrow(self$data)
      },
      .__getitem__ = function(...) {
        self$data[..1, , drop = FALSE]
      }
    )
  )
  x <- X$new()
  expect_true(is.iterable(x))
  expect_false(is.iterable(X))
})
