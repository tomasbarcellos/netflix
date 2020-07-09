
<!-- README.md is generated from README.Rmd. Please edit that file -->

# netflix

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.org/tomasbarcellos/netflix.svg?branch=master)](https://travis-ci.org/tomasbarcellos/netflix)
<!-- badges: end -->

## Installation

Para instalar:

``` r
# install.packages("devtools")
devtools::install_github("tomasbarcellos/netflix")
```

## Example

O pacote permite ler os dados

``` r
library(netflix)
historico <- ler_netflix("historico.csv")
```

Após isso os dados estão prontos para serem usados.

``` r
head(historico)
#> # A tibble: 6 x 5
#>   data       serie titulo                   temporada      episodio        
#>   <date>     <chr> <chr>                    <chr>          <chr>           
#> 1 2019-12-11 Série A Anatomia de Grey: Tem… " Temporada 3" Um tipo de mila…
#> 2 2018-04-01 Série Dr. House: Temporada 7   " Temporada 7" Unplanned Paren…
#> 3 2018-02-22 Série Friends: Temporada 10    " Temporada 1… Aquele com a mã…
#> 4 2020-02-07 Série Elementary: Temporada 3  " Temporada 3" Debaixo da pele 
#> 5 2016-08-27 Série Gilmore Girls: Tal Mãe,… " Tal Mãe, Ta… Temporada 2: Ti…
#> 6 2017-07-03 Série Hannibal: Temporada 2    " Temporada 2" Mukozuke
```
