#' Trid
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating Trid function at xx
#' @export
#'
#' @examples
#' d <- 10
#' trid(runif(d,-d^2,d^2))
trid <- function(xx)
{
  # x_i in [-d^2,d^2] for all i=1,...,d
  # Global Min: f(x) = -d(d+4)(d-1)/6 at x_i = i(d+1-i)
  d <- length(xx)
  xi <- xx[2:d]
  xold <- xx[1:(d-1)]

  sum1 = (xx[1]-1)^2 + sum((xi-1)^2)
  sum2 <- sum(xi*xold)

  y <- sum1 - sum2
  return(y)
}

#' Trid values for minimum
#'
#' @param d numeric value specifying the desired dimension
#'
#' @return The corresponding input values to obtain global mimimum for Trid function at 'd' dimensions
#' @export
#'
#' @examples
#' trid_xi(10)
trid_xi <- function(d){
  i <- 1:d
  return(i*(d+1-i))
}

#' Find Trid Global Minimum for d Dimensions
#'
#' @param d numeric value specifying the desired dimension
#'
#' @return Global minimum for Trid function at 'd' dimensions
#' @export
#'
#' @examples
#' trid_min(10)
trid_min <- function(d){
  return(-d*(d+4)*(d-1)/6)
}
