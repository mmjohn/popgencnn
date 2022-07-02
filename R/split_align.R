#' Split alignment data with indices from get_split_index
#'
#' This function uses the indexes for training, validation, and testing sets to
#' @param all_align 3d array of all alignments to subsample
#' @param set_begin index of first alignment in set
#' @param set_end index of last alignment in set
#' @param max_size the maximum number of segregating sites in the data set
#' @param num_chrom fixed number of chromosomes in alignment
#' @examples split_align(array(c(1,0,1,1,0,1,0,0,1,0,1), dim = c(2,2,3)), 1, 2, 2, 2)
#' @export

split_align <- function(all_align, set_begin, set_end, max_size, num_chrom){

  # split array
  split_set <- all_align[set_begin:set_end, 1:max_size, 1:num_chrom]

  # return subset
  return(split_set)

}
