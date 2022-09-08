#' Rastrigin
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating Rastrigin function at xx
#' @export
#'
#' @examples
#' rastr(runif(10,-5,5))
rastr <- function(xx)
{
  # x_i in [-5.12,5.12] for i=1,...,d
  # global min: f(x) = 0 at x_i = 0
  d <- length(xx)
  sum <- sum(xx^2 - 10*cos(2*pi*xx))

  y <- 10*d + sum
  return(y)
}
