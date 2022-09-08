#' Egg Holder
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating egg holder function at xx
#' @export
#'
#' @examples
#' egg(c(10,10))
egg <- function(xx)
{
  # dimension:2
  # x_i in [-512,512]
  # global minimum: f(x) = -959.6407 at x = (512,404.2319)
  x1 <- xx[1]
  x2 <- xx[2]

  term1 <- -(x2+47) * sin(sqrt(abs(x2+x1/2+47)))
  term2 <- -x1 * sin(sqrt(abs(x1-(x2+47))))

  y <- term1 + term2
  return(y)
}
