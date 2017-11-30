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
#' boxcoxt(1:5, lambda = 0.3)
#'
#' @export
boxcoxt <- function(y,  lambda = 0.1){
  if (any(y<=0))
    stop('All the elements of the input vector should be positive for Box-Cox transformation')
  else{
    if (lambda ==0)
      T_y <-  log(y)
    else if(lambda >= -5 && lambda <= 5)
      T_y <- ((y)^lambda - 1) / lambda
    else{
      warning("The input lambda value is too big or too small")
      T_y <- ((y)^lambda - 1) / lambda
    }
  }
  return (T_y)
}
