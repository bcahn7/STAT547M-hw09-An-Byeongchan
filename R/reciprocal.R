#' Calculate the inverse (reciprocal) of a vector
#'
#' That's it -- this function just makes the inverse of a vector.
#'
#' @param x The vector to be inversed.
#'
#' @return A vector that is the reciprocal of \code{x}.
#'
#' @details
#' This function isn't complicated.
#'
#' And it almost certainly doesn't need two paragraphs in the "Details"
#' section!
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{reciprocal} function is quite simple.
#'      \item There's nothing else to say about \code{reciprocal}.
#' }
#'
#' @examples
#' reciprocal(1:10)
#' reciprocal(-5)
#' @export
reciprocal <- function(x, plot_it = FALSE) pow(x, a=-1, plot_it)
