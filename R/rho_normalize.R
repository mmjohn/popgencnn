#' Normalize rho values
#'
#' This function takes in a vector of rho values and normalizes it by log transforming and centering on a mean value
#' @param rho_set A vector of rho values used for training, validation, or testing
#' @examples
#' rho_normalize(c(7.23, 55.31, 715.52, 2328.45, 423.55), 4.2)
#' @export

rho_normalize <- function(rho_set, mean_center){

  # NOTE: this function currently is used to center on the mean of training set, but this might be incorrect
  ## find the mean of the log transformed rho values
  #mean_set <- mean(log(rho_set))

  # log transform and mean center rho values
  rho_set_norm <- log(rho_set) - mean_center

  # return normalized data set
  return(rho_set_norm)

}
