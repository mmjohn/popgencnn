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

test_that("rho normalization commands", {

  rho_raw <- c(7.23, 55.31, 715.52, 2328.45, 423.55)
  rho_norm <- c(-2.2217610, -0.1870463, 2.3730096, 3.5529581, 1.8486716)

  expect_equal(rho_normalize(rho_raw, 4.2), rho_norm)

  rho_raw2 <- c(715.52, 55.31, 2328.45, 7.23, 423.55)
  rho_norm2 <- c(2.47300955, -0.08704628, 3.65295809, -2.12176096, 1.94867157)

  expect_equal(rho_normalize(rho_raw2, 4.1), rho_norm2)

})
