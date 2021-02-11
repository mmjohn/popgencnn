#include <Rcpp.h>
using namespace Rcpp;

// convert from list of matrices to a 3d array
// old R function - less efficient
// x1_data_padded <- array(unlist(x1_padded), dim = c(50, max_size, num_sims))
//
// consider using a cpp11 function instead of Rcpp
// https://cran.r-project.org/web/packages/cpp11/vignettes/converting.html
// https://github.com/r-lib/cpp11/blob/master/cpp11test/src/sum.cpp

//' Convert list of matrices (alignments) to a 3D array
//'
//' @param input A list of matrices.
//' @param dim A vector of dimensions of 3D array.
//' @export
// [[Rcpp::export]]
NumericVector list_to_array(List input, IntegerVector dim) {
  R_xlen_t n = input.length();  // use R_xlen_t to avoid memory limit
  R_xlen_t m = as<NumericVector>(input[0]).length();
  // calculate dimensions from input
  NumericVector output = NumericVector(m*n);
  NumericVector::iterator outiter = output.begin();
  for(List::iterator initer = input.begin(); initer != input.end(); ++initer) {
    NumericVector v = as<NumericVector>(*initer);
    // check that v length = m
    for(NumericVector::iterator veciter = v.begin(); veciter != v.end(); ++veciter) {
      *outiter = *veciter;
      ++outiter;
      }
    }
  output.attr("dim") = dim;
  return output;
}

