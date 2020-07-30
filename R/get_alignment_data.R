#' Generate single ms simulation command
#'
#' This function parses input data from alignments and call function to reform them
#' @param all_data explain
#' @examples
#' get_alignment_data(c("1010", "bananas", "0010", "0110"))
#' @export

get_alignment_data <- function(all_data){

  # get relevant line numbers
  x1_linenum <- which(grepl("^(0|1)+(0|1)$", all_data))
  x1_linenum1 <- which(grepl("^(0|1)$", all_data))
  x1_linenum_all <- sort(c(x1_linenum, x1_linenum1),
                         decreasing = F)
  #lines_seg <- which(grepl("^segsites: ", all_data))
  #get_alignment_linenums <- function(num){seq(num+2, num+52)}
  #linenums_align <- unlist(lapply(lines_seg,
  #                                get_alignment_linenums))
  # get relevant data
  alignment_lines <- all_data[x1_linenum_all]
  # split into each simulation
  # num_sims (200 - defined above), chr_per_alignment (50 - constant)
  # split data with alignment line numbers
  alignments <- split(alignment_lines,
                      ceiling(seq_along(alignment_lines)/50))
  # parse each alignment
  x1_data <- lapply(alignments, parse_single_alignment)
  # return data
  return(x1_data)

}
