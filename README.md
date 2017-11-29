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

It has additional function to print out a scatter plot! Default value for the argument `plot_it` is `FALSE`.

``` r
## printing out a scatter plot!
powers::square(1:5, plot_it = TRUE)
```

![](README-unnamed-chunk-3-1.png)

    #> [1]  1  4  9 16 25
    powers::reciprocal(1:10, plot_it = TRUE)
    #>  [1] 1.0000000 0.5000000 0.3333333 0.2500000 0.2000000 0.1666667 0.1428571
    #>  [8] 0.1250000 0.1111111 0.1000000

For Developers
--------------

Use the internal `pow` function as the machinery for the front-end functions such as `square`, `cube`, `four`, and `reciprocal`.
