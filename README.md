
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

## Supported Methods

<!--html_preserve-->
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#zlhdqqyois .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#zlhdqqyois .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zlhdqqyois .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#zlhdqqyois .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#zlhdqqyois .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zlhdqqyois .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zlhdqqyois .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#zlhdqqyois .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#zlhdqqyois .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#zlhdqqyois .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#zlhdqqyois .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#zlhdqqyois .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#zlhdqqyois .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#zlhdqqyois .gt_from_md > :first-child {
  margin-top: 0;
}

#zlhdqqyois .gt_from_md > :last-child {
  margin-bottom: 0;
}

#zlhdqqyois .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#zlhdqqyois .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#zlhdqqyois .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zlhdqqyois .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#zlhdqqyois .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zlhdqqyois .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#zlhdqqyois .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#zlhdqqyois .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zlhdqqyois .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zlhdqqyois .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#zlhdqqyois .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zlhdqqyois .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#zlhdqqyois .gt_left {
  text-align: left;
}

#zlhdqqyois .gt_center {
  text-align: center;
}

#zlhdqqyois .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#zlhdqqyois .gt_font_normal {
  font-weight: normal;
}

#zlhdqqyois .gt_font_bold {
  font-weight: bold;
}

#zlhdqqyois .gt_font_italic {
  font-style: italic;
}

#zlhdqqyois .gt_super {
  font-size: 65%;
}

#zlhdqqyois .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="zlhdqqyois" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<table class="gt_table" style="table-layout: fixed;; width: 0px">
<colgroup>
<col style="width:200px;"/>
<col style="width:200px;"/>
<col style="width:400px;"/>
</colgroup>
<thead class="gt_col_headings">
<tr>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">
Internal Method
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">
S3 Method
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">
Description
</th>
</tr>
</thead>
<tbody class="gt_table_body">
<tr class="gt_group_heading_row">
<td colspan="3" class="gt_group_heading">
Arithmetic
</td>
</tr>
<tr>
<td class="gt_row gt_left">
.add()
</td>
<td class="gt_row gt_left">
`+`
</td>
<td class="gt_row gt_left">
Adds an object to your R6 instance.
</td>
</tr>
<tr>
<td class="gt_row gt_left">
.sub()
</td>
<td class="gt_row gt_left">
`-`
</td>
<td class="gt_row gt_left">
Adds an object to your R6 instance.
</td>
</tr>
<tr>
<td class="gt_row gt_left">
.mul()
</td>
<td class="gt_row gt_left">
`*`
</td>
<td class="gt_row gt_left">
Adds an object to your R6 instance.
</td>
</tr>
<tr>
<td class="gt_row gt_left">
.div()
</td>
<td class="gt_row gt_left">
`/`
</td>
<td class="gt_row gt_left">
Adds an object to your R6 instance.
</td>
</tr>
<tr>
<td class="gt_row gt_left">
.mod()
</td>
<td class="gt_row gt_left">
`%%`
</td>
<td class="gt_row gt_left">
Modular division
</td>
</tr>
<tr class="gt_group_heading_row">
<td colspan="3" class="gt_group_heading">
Subset
</td>
</tr>
<tr>
<td class="gt_row gt_left">
.subset() or .getitem()
</td>
<td class="gt_row gt_left">
`[`
</td>
<td class="gt_row gt_left">
Extract an element based on an index.
</td>
</tr>
<tr>
<td class="gt_row gt_left">
.subset2() or .getitem2()
</td>
<td class="gt_row gt_left">
`[[`
</td>
<td class="gt_row gt_left">
Extract an element based on an index.
</td>
</tr>
</tbody>
</table>
</div>
<!--/html_preserve-->

------------------------------------------------------------------------

## Code of Conduct

Please note that the R6methods project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
