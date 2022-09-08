#' Branin
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating branin function at xx
#' @export
#'
#' @examples
#' branin(c(0.5,0.5))
branin <- function(xx)
{
  x1 <- xx[1]
  x2 <- xx[2]
  x1bar <- 15*x1 - 5
  x2bar <- 15 * x2

  term1 <- x2bar - 5.1*x1bar^2/(4*pi^2) + 5*x1bar/pi - 6
  term2 <- (10 - 10/(8*pi)) * cos(x1bar)

  y <- (term1^2 + term2 - 44.81) / 51.95
  return(y)
}
