#' Generate single alignment from strings
#'
#' This function reforms alignments from separate strings to a matrix
#' @param single_alignment explain
#' @examples
#' parse_single_alignment(c("1010", "0010", "0110"))
#' @export

parse_single_alignment <- function(single_alignment){

  # string to vector -> join vectors
  # split on empty string
  list1 <- strsplit(single_alignment, "")
  list2 <- lapply(list1, as.numeric)
  x <- purrr::reduce(list2, rbind)
  return(x)

}
