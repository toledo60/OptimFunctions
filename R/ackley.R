#' Ackley
#'
#' @param xx numeric vector
#' @param a constant (optional), with default value 20
#' @param b constant (optional), with default value 0.2
#' @param c constant (optional), with default value 2*pi
#'
#' @return value obtained from evaluating ackley function at xx
#' @export
#'
#' @examples ackley(c(1,2))
#' ackley(runif(10,-32,32))
ackley <- function(xx, a=20, b=0.2, c=2*pi)
{
  # The function is usually evaluated on the hypercube x_i in [-32.768, 32.768],
  # for all i = 1, …, d, although it may also be restricted to a smaller domain.

  # its global minimum is f(x*) = 0 at x* = (0_1,....0_d)

  d <- length(xx)

  sum1 <- sum(xx^2)
  sum2 <- sum(cos(c*xx))

  term1 <- -a * exp(-b*sqrt(sum1/d))
  term2 <- -exp(sum2/d)

  y <- term1 + term2 + a + exp(1)
  return(y)
}
