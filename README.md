
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Installation

You can install the development version from Github:

``` r
if (!require("remotes")) install.packages("remotes")
remotes::install_github("toledo60/OptimFunctions")
```

## Overview

``` r
library(OptimFunctions)
```

This package is for research purposes only, all functions/code were
obtain from [Virtual Library of Simulation
Experiments](https://www.sfu.ca/~ssurjano/optimization.html).

Currently `OptimFunctions` has the following test functions:

| Function  |     Category      | Dimension |
|:---------:|:-----------------:|:---------:|
|  Ackley   | Many-local-minima |     d     |
|   Levy    | Many-local-minima |     d     |
| EggHolder | Many-local-minima |     2     |
| Rastrigin | Many-local-minima |     d     |
| Schwefel  | Many-local-minima |     d     |
|   Trid    |    Bowl-shaped    |     d     |
| Zakharov  |   Plate-shaped    |     d     |
|   Matya   |   Plate-shaped    |     2     |
|  Branin   |       Other       |     2     |
| Hartmann  |       Other       |   3,4,6   |
