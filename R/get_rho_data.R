#' Extract rho values from ms simulation data
#'
#' This function finds lines with rho values, extracts, and combines all values into a numeric vector
#' @param all_data explain
#' @examples
#' get_rho_data(c("cat -t 0.2 -r 1.3 20001", "random -t 0.7 -r 3.4 20001"))
#' @export

get_rho_data <- function(all_data) {

  # define pattern
  y_pattern <- "^.*-r"
  # get relevant line numbers
  y_linenum <- which(grepl(y_pattern, all_data))
  # read those lines
  y_lines <- all_data[y_linenum]
  # extract just the theta value
  y_vec_theta <- y_lines %>%
    dplyr::tibble() %>%
    tidyr::extract(., ., "(.* -t) (.*)",
                   into = c("sim", "keep")) %>%
    dplyr::select(keep) %>%
    tidyr::extract(., keep, "(.*) (-r .*)",
                   into = c("theta", "constant")) %>%
    dplyr::pull(theta)
  # extract just the rho value
  y_vec_rho <- y_lines %>%
    dplyr::tibble() %>%
    tidyr::extract(., ., "(.* -r) (.*)",
                   into = c("sim", "keep")) %>%
    dplyr::select(keep) %>%
    tidyr::extract(., keep, "(.*) (20001)",
                   into = c("rho", "constant")) %>%
    dplyr::pull(rho)
  # convert to numeric
  y_data_theta <- as.double(y_vec_theta)
  y_data_rho <- as.double(y_vec_rho)
  # combine as matrix
  y_data <- matrix(c(y_data_theta, y_data_rho), ncol = 2)
  # return
  return(y_data)

}
