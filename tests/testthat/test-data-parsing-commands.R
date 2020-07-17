context("ms simulation data parsing commands")

test_that("alignment commands", {

  v1 <- parse_single_alignment(c("1010", "0010"))
  v2 <- matrix(c(1,0,0,0,1,1,0,0), ncol = 4, nrow = 2)
  expect_equal(v1, v2, check.attributes = F)

  v3 <- parse_single_alignment(c("1010", "0010", "0110"))
  v4 <- matrix(c(1,0,0,0,0,1,1,1,1,0,0,0), ncol = 4, nrow = 3)
  expect_equal(v3, v4, check.attributes = F)

  # v5 <- get_alignment_data(c("1010", "bananas", "0010"))
  # expect_equal(v2, v5, check.attributes = F)

})

test_that("position commands", {

  list1 <- get_pos_data(c("positions: 0.1 0.2 0.3",
                          "random -r 3.4 20001",
                          "positions: 0.7 0.6"))
  list2 <- list(c(0.1, 0.2, 0.3), c(0.7, 0.6))
  expect_equal(list1, list2)

})

test_that("rho commands", {

  vec1 <- get_rho_data(c("cat -r 1.3 20001",
                         "random -r 3.4 20001"))
  vec2 <- c(1.3, 3.4)
  expect_equal(vec1, vec2)

})
