#' Generate single ms simulation command
#'
#' This function generates one ms command
#' @param morgans_per_bp crossover rate per bp per meiosis
#' @param ne effective population size
#' @param filename output file
#' @examples
#' ms_simulate(morgans_per_bp = 2.018353e-08, ne = 1000, filename = 'sim.txt')
#' @export

ms_simulate <- function(morgans_per_bp, ne, filename){
  # converts parameters to hudson style following Flagel et al. (2019)
  # note num_chrom, mu and bp are fixed
  num_chrom <- 50
  mu <- 1.5e-8
  bp <- 20001
  rho <- 4 * ne * morgans_per_bp * (bp - 1)
  theta <- 4 * ne * mu * bp
  k = sprintf(
    "./msdir/ms %s 1 -t %s -r %s %s >> %s",
    num_chrom,
    theta,
    rho,
    bp,
    filename
  )
  return(k)
}
