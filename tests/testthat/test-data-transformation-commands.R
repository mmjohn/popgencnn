context("alignment data transformations")

test_that("sorting commands", {
  m_raw <- matrix(c(0,0,0,1,1,1,0,1,0), ncol = 3, nrow = 3)
  m_sort <- matrix(c(0,0,0,1,1,1,1,0,0), ncol = 3, nrow = 3)

  expect_equal(sort_align(m_raw), m_sort, check.attributes = F)
})

test_that("3D array command", {
  x1 <- matrix(c(1,0,0,1,1,0,0,0), nrow = 2, ncol = 4)
  x2 <- matrix(c(1,1,1,0,1,0,1,1), nrow = 2, ncol = 4)
  x3 <- matrix(c(0,1,1,0,1,0,0,1), nrow = 2, ncol = 4)
  x_list <- list(x1, x2, x3)

  output <- list_to_array(x_list, c(2, 4, 3))
  expect_equal(dim(output), c(2, 4, 3))

})
