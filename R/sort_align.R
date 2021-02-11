#' Sorts alignment by similarity between rows (chromosomes)
#'
#' This function takes in one alignment, calculates Manhattan distance between all rows, clusters by distance, then returns a sorted alignment
#' @param single_align One unsorted alignment 
#' @examples sort_align(matrix(c(0,0,0,1,1,1,0,1,0), ncol = 3, nrow = 3))
#' @export

sort_align <- function(single_align){
  
  # calculate manhattan distance between all rows
  man_dist <- stats::dist(single_align, method = "manhattan")
  # cluster by pairwise distance
  clust <- stats::hclust(man_dist)
  # get row order by similarity
  similarity <- clust$order
  # reorder rows
  sorted_align <- single_align[similarity, , drop = FALSE]
  # return sorted alignment
  return(sorted_align)
  
}
