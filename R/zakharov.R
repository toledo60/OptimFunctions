#' Zakharov
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating Zakharov function at xx
#' @export
#'
#' @examples
#' zakharov(runif(10,-5,10))
zakharov <- function(xx)
{
  # x_i in [-5,10] for all i=1,...,d
  # global min: f(x) = 0 at x_i = 0
  ii <- c(1:length(xx))
  sum1 <- sum(xx^2)
  sum2 <- sum(0.5*ii*xx)

  y <- sum1 + sum2^2 + sum2^4
  return(y)
}
