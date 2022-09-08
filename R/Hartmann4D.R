#' Hartmann 4D
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating Hartmann4D function at xx
#' @export
#'
#' @examples
#' hart4(c(0.2,0.5,0.3,0.5))
hart4 <- function(xx)
{
  alpha <- c(1.0, 1.2, 3.0, 3.2)
  A <- c(10, 3, 17, 3.5, 1.7, 8,
         0.05, 10, 17, 0.1, 8, 14,
         3, 3.5, 1.7, 10, 17, 8,
         17, 8, 0.05, 10, 0.1, 14)
  A <- matrix(A, 4, 6, byrow=TRUE)
  P <- 10^(-4) * c(1312, 1696, 5569, 124, 8283, 5886,
                   2329, 4135, 8307, 3736, 1004, 9991,
                   2348, 1451, 3522, 2883, 3047, 6650,
                   4047, 8828, 8732, 5743, 1091, 381)
  P <- matrix(P, 4, 6, byrow=TRUE)

  xxmat <- matrix(rep(xx,times=4), 4, 4, byrow=TRUE)
  inner <- rowSums(A[,1:4]*(xxmat-P[,1:4])^2)
  outer <- sum(alpha * exp(-inner))

  y <- (1.1 - outer) / 0.839
  return(y)
}
