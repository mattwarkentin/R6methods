test_that("iteration works", {
  X <- R6::R6Class(
    public = list(
      data = mtcars,
      .__call__ = function() {
        summary(self$data)
      }
    )
  )
  x <- callable(X)
  xfn <- x()
})
