
<!-- README.md is generated from README.Rmd. Please edit that file -->

# popgencnn

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Build
Status](https://travis-ci.com/mmjohn/popgencnn.svg?token=akGYX9ZmHWpGaEi1Ls7b&branch=master)](https://travis-ci.com/mmjohn/popgencnn)
[![codecov](https://codecov.io/gh/mmjohn/popgencnn/branch/master/graph/badge.svg?token=PJJ6IBM5XB)](https://codecov.io/gh/mmjohn/popgencnn)
<!-- badges: end -->

The goal of popgencnn is to support deep learning pipelines for
population genomic inference in R. Current functionality supports the
generation and pre-processing of simulated data sets. Specifically,
coalescent simulations for use in neural networks estimators of
historical population recombination rate.

## Installation

You can install popgencnn from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mmjohn/popgencnn")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(popgencnn)

ms_simulate(
  morgans_per_bp = 2.0e-8, 
  ne = 10000, 
  filename = 'sim.txt'
)
#> [1] "./msdir/ms 50 1 -t 12.0006 -r 16 20001 >> sim.txt"
```
