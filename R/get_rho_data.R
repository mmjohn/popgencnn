#' Extract rho values from ms simulation data
#'
#' This function finds lines with rho values, extracts, and combines all values into a numeric vector
#' @param all_data explain
#' @examples
#' get_rho_data(c("cat -r 1.3 20001", "random -r 3.4 20001"))
#' @export

get_rho_data <- function(all_data) {

  # define pattern
  y_pattern <- "^.*-r"
  # get relevant line numbers
  y_linenum <- which(grepl(y_pattern, all_data))
  # read those lines
  y_lines <- all_data[y_linenum]
  # extract just the rho value
  y_vec <- y_lines %>%
    dplyr::tibble() %>%
    tidyr::extract(., ., "(.* -r) (.*)",
                   into = c("sim", "keep")) %>%
    dplyr::select(keep) %>%
    tidyr::extract(., keep, "(.*) (20001)",
                   into = c("rho", "constant")) %>%
    dplyr::pull(rho)
  # convert to numeric
  y_data <- as.double(y_vec)
  # return rho values
  return(y_data)

}
