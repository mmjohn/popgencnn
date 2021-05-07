#' Split alignment data with indices from get_split_index
#'
#' This function uses the indexes for training, validation, and testing sets to
#' @param set_begin
#' @param set_end
#' @param max_size
#' @param num_chrom
#' @examples get_split_index(0.8, 1999)
#' @export

split_align <- function(all_align, set_begin, set_end, max_size, num_chrom){

  # split array
  split_set <- all_align[set_begin:set_end, 1:max_size, 1:num_chrom]

  # return subset
  return(split_set)

}
