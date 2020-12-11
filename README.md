
<!-- README.md is generated from README.Rmd. Please edit that file -->

# R6methods

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of `R6methods` is to provide a lightweight package that extends
the S3 support for `R6` class objects. This package defines some basic
S3 methods for common `R` functions (e.g. `str()`) and operators
(e.g. `[`) to make it easy to simply define internal methods for your
`R6` class and have them “just work”.

## Installation

You can install the development version of `R6methods` from
[GitHub](https://github.com/mattwarkentin/R6methods) with:

``` r
remotes::install_github("mattwarkentin/R6methods")
```

## Usage

This package is primarily designed for use by package developers. If you
are developing a package which contains `R6` objects, you can save
yourself extra work defining S3 methods by importing `R6methods`. Since
`R6methods` has no dependencies, it is a lightweight addition for
increasing `R6` support.

The easiest way to benefit from this package is by depending on it by
including it in your packages `DESCRIPTION` file.

    Package: mypackage
    Title: My Package Title
    Version: 0.0.0.9000
    Authors@R: 
        person(given = "Jane",
               family = "Doe",
               role = c("aut", "cre"),
               email = "jane.doe@email.com")
    Description: This package...
    Depends:
      R6methods

When creating your `R6` class generator, simply add one of the special
internal methods and benefit from immediate support for common
operations.

``` r
Foo <- R6::R6Class(
  public = list(
    data = mtcars
    .subset = function(i, j) {
      self$data[i, j]
    }
  )
)

foo <- Foo$new()
foo[1, 2:3]
```

------------------------------------------------------------------------

## Code of Conduct

Please note that the R6methods project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
