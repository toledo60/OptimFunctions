#' Hartmann 3D
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating Hartmann3D function at xx
#' @export
#'
#' @examples
#' hart3(c(0.5,0.2,0.3))
hart3 <- function(xx)
{
  # dimension: 3
  # x_i in (0,1) for i=1,2,3
  # global min: f(x*) = -3.86278 at x* = (0.114614,0.555649,0.852547)

  alpha <- c(1.0, 1.2, 3.0, 3.2)

  A <- c(3.0, 10, 30,
         0.1, 10, 35,
         3.0, 10, 30,
         0.1, 10, 35)

  A <- matrix(A, 4, 3, byrow=TRUE)

  P <- 10^(-4) * c(3689, 1170, 2673,
                   4699, 4387, 7470,
                   1091, 8732, 5547,
                   381, 5743, 8828)

  P <- matrix(P, 4, 3, byrow=TRUE)
  xxmat <- matrix(rep(xx,times=4), 4, 3, byrow=TRUE)
  inner <- rowSums(A[,1:3]*(xxmat-P[,1:3])^2)
  outer <- sum(alpha * exp(-inner))

  y <- -outer

  return(y)
}
