#' Generate single ms simulation command
#'
#' This function generates one ms command
#' @param morgans.per.bp explain
#' @param ne explain
#' @param filename explain
#' @examples
#' msSimulate(morgans.per.bp = 2.018353e-08, ne = 1000, filename = 'sim.txt')
#' @export

msSimulate <- function(morgans.per.bp, ne, filename){
  # converts parameters to hudson style
  # note nchrom, mu and bp are fixed
  n.chrom <- 50
  mu <- 1.5e-8
  bp <- 20001
  total.genetic.distance 	<- morgans.per.bp * (bp - 1)
  rho <- 4 * ne * total.genetic.distance
  theta <- 4 * ne * mu * bp
  k = sprintf(
    "./msdir/ms %s 1 -t %s -r %s %s >> %s",
    n.chrom,
    theta,
    rho,
    bp,
    filename
  )
  return(k)
}
