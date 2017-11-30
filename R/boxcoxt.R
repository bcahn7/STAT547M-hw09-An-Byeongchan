#' Calculate the (one-parameter) Box-Cox transformation of a vector (given lambda)
#'
#'
#' @param x The vector to be transformed (Box-Cox transformation).
#'
#' @return A vector that is the Box-Cox transformation of \code{x}.
#'
#' @details
#' This is the one-parameter Box-Cox transformation.
#' This function does not calculate the optimal lambda value.
#' Using boxcox() in the MASS package is recommended for optimal lambda.
#' The default value of lambda is 0.1
#' All the elements of the input vector should be positive for Box-Cox transformation.
#'
#'
#' @examples
#' boxcoxt(1:10)
#'
#' @export
boxcoxt <- function(y,  lambda = 0.1){
  if (any(y<=0))
    stop('All the elements of the input vector should be positive for Box-Cox transformation')
  else{
    if (lambda ==0)
      T_y <-  log(y)
    else
      T_y <- ((y)^lambda - 1) / lambda
  }
  return (T_y)
}
