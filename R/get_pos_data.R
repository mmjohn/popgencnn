#' Extract position of variable sites from ms simulation data
#'
#' This function finds lines with variable site position data, extracts it, and combines all values into a matrix
#' @param all_data explain
#' @examples
#' get_pos_data(c("positions: 0.1 0.2 0.3", "random -r 3.4 20001", "positions: 0.7 0.6"))
#' @export

get_pos_data <- function(all_data) {

  # get relevant line numbers
  x2_linenum <- which(grepl("^positions: ", all_data))
  # read those lines
  x2_lines <- all_data[x2_linenum]
  # remove "positions: "
  x2_vec <- x2_lines %>%
    dplyr::tibble() %>%
    tidyr::extract(., ., "(positions): (.*)",
                   into = c("pos", "keep")) %>%
    dplyr::pull(keep)
  # convert to numeric vectors
  x2_list <- strsplit(x2_vec, " ")
  x2_data <- lapply(x2_list, as.numeric)
  # return position data
  return(x2_data)

}
