#' Levy
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating Levy function at xx
#' @export
#'
#' @examples
#' levy(runif(10,-10,10))
levy <- function(xx)
{
  # x_i in [-10,10] for all i=1,....,d
  # gloabl min: f(x)=0 at x = (1,....,1)
  d <- length(xx)
  w <- 1 + (xx - 1)/4

  term1 <- (sin(pi*w[1]))^2
  term3 <- (w[d]-1)^2 * (1+1*(sin(2*pi*w[d]))^2)

  wi <- w[1:(d-1)]
  sum <- sum((wi-1)^2 * (1+10*(sin(pi*wi+1))^2))

  y <- term1 + sum + term3
  return(y)
}
