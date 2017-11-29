<!-- README.md is generated from README.Rmd. Please edit that file -->
powers
======

This is an R package that provides power functions. The goal of powers is to make it easier to calculate power functions.

Installation
------------

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("bcahn7/STAT547M-hw09-An-Byeongchan/powers")
#> Downloading GitHub repo bcahn7/STAT547M-hw09-An-Byeongchan@master
#> from URL https://api.github.com/repos/bcahn7/STAT547M-hw09-An-Byeongchan/zipball/master
#> Installation failed: Does not appear to be an R package (no DESCRIPTION)
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
powers::cube(3)
#> [1] 27
powers::reciprocal(1:5)
#> [1] 1.0000000 0.5000000 0.3333333 0.2500000 0.2000000
```

For Developers
--------------

Use the internal `pow` function as the machinery for the front-end functions such as `square`, `cube`, `four`, and `reciprocal`.

Report my progress
------------------

-   It would be useful to build my own R package to customize for more efficient work.
