#' Hartmann 6D
#'
#' @param xx numeric vector
#'
#' @return value obtained from evaluating Hartmann6D function at xx
#' @export
#'
#' @examples
#' hart6(c(0.2,0.5,0.3,0.5,0.8,0.2))
hart6 <- function(xx)
{
  # dimension: 6
  # Global min: f(x*) = -3.32237 at
  # x* = (0.20169,0.150011,0.476874,0.275332,0.311652,0.6573)

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

  xxmat <- matrix(rep(xx,times=4), 4, 6, byrow=TRUE)
  inner <- rowSums(A[,1:6]*(xxmat-P[,1:6])^2)
  outer <- sum(alpha * exp(-inner))

  y <- -(2.58 + outer) / 1.94
  return(y)
}
