% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sort_align.R
\name{sort_align}
\alias{sort_align}
\title{Sorts alignment by similarity between rows (chromosomes)}
\usage{
sort_align(single_align)
}
\arguments{
\item{single_align}{One unsorted alignment}
}
\description{
This function takes in one alignment, calculates Manhattan distance between all rows, clusters by distance, then returns a sorted alignment
}
\examples{
sort_align(matrix(c(0,0,0,1,1,1,0,1,0), ncol = 3, nrow = 3))
}
