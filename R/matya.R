#' Matya
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating Matya function at xx
#' @export
#'
#' @examples
#' matya(runif(2,-10,10))
matya <- function(xx)
{
  # Dimension: 2
  # x_i in [-10,10] for all i=1,2
  # global min: f(x*) =0 at x* = (0,0)
  x1 <- xx[1]
  x2 <- xx[2]

  term1 <- 0.26 * (x1^2 + x2^2)
  term2 <- -0.48*x1*x2

  y <- term1 + term2
  return(y)
}
