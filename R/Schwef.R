#' Schwefel
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating Schwefel function at xx
#' @export
#'
#' @examples
#' schwef(runif(10,-400,300))
schwef <- function(xx)
{
  # dimension: d
  # x_i in [-500,500] for all i=1,...,d
  # global min: f(x*) = 0 at x* = (420.9687,...,420.9687)
  d <- length(xx)

  sum <- sum(xx*sin(sqrt(abs(xx))))
  y <- 418.9829*d - sum
  return(y)
}
