test_that("as.data.frame() works", {
  X <- R6::R6Class(
    public = list(
      .__data__ = function() {
        mtcars
      }
    )
  )
  x <- X$new()
  expect_equal(as.data.frame(x), mtcars)
})
