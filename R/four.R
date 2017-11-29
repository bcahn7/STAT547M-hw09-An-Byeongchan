#' Calculate input to the fourth power (vector)
#'
#' That's it -- this function just makes a vector to the fourth power.
#'
#' @param x The vector to be multiplied by its cube.
#'
#' @return A vector that is the fourth power of \code{x}.
#'
#' @details
#' This function isn't complicated.
#'
#' And it almost certainly doesn't need two paragraphs in the "Details"
#' section!
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{four} function is quite simple.
#'      \item There's nothing else to say about \code{four}.
#' }
#'
#' @examples
#' four(1:10)
#' four(-5)
#' @export
four <- function(x, plot_it = FALSE) pow(x, a=4, plot_it)
