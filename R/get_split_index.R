#' Get indexes used to split data
#'
#' This function figures out the indexes for training, validation, and testing sets, and returns them as a vector for use in splitting functions
#' @param percent_train Proportion of data used for training set
#' @param num_sims Total number of simulations used
#' @examples get_split_index(0.8, 1999)
#' @export

get_split_index <- function(percent_train, num_sims){

  # find set bounds
  train_end <- ceiling(num_sims*percent_train)
  val_begin <- train_end+1
  val_end <- val_begin + ceiling(num_sims*((1 - percent_train)/2)) - 1
  test_begin <- val_end+1

  # join and return all values
  output <- c(1, train_end, val_begin, val_end, test_begin, num_sims)
  return(output)

}
