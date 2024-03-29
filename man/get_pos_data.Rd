% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_pos_data.R
\name{get_pos_data}
\alias{get_pos_data}
\title{Extract position of variable sites from ms simulation data}
\usage{
get_pos_data(all_data)
}
\arguments{
\item{all_data}{explain}
}
\description{
This function finds lines with variable site position data, extracts it, and combines all values into a matrix
}
\examples{
get_pos_data(c("positions: 0.1 0.2 0.3", "random -r 3.4 20001", "positions: 0.7 0.6"))
}
