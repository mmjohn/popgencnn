#' Generate multiple ms simulation commands
#'
#' This function generates a shell script for all ms coalescent simulations.
#' @param index simulation number
#' @examples
#' do_sim(1)
#' @export

do_sim <- function(index){
  # picks parameters
  mbp   <- 10^(runif(n = 1,min = -8, max = -6))
  my.ne <- sample(c(1000, 2000, 5000, 10000, 15000, 20000, 50000), 1)
  ms_simulate(
    morgans.per.bp = mbp,
    ne = my.ne,
    filename = 'all_LD_sims.txt'
  )
}
