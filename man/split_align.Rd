% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/split_align.R
\name{split_align}
\alias{split_align}
\title{Split alignment data with indices from get_split_index}
\usage{
split_align(all_align, set_begin, set_end, max_size, num_chrom)
}
\arguments{
\item{all_align}{3d array of all alignments to subsample}

\item{set_begin}{index of first alignment in set}

\item{set_end}{index of last alignment in set}

\item{max_size}{the maximum number of segregating sites in the data set}

\item{num_chrom}{fixed number of chromosomes in alignment}
}
\description{
This function uses the indexes for training, validation, and testing sets to
}
\examples{
split_align(array(c(1,0,1,1,0,1,0,0,1,0,1), dim = c(2,2,3)), 1, 2, 2, 2)
}
