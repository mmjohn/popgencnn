context("ms simulation data parsing commands")

test_that("extract alignment commands", {

  v1 <- parse_single_alignment(c("1010", "0010"))
  v2 <- matrix(c(1,0,0,0,1,1,0,0), ncol = 4, nrow = 2)
  expect_equal(v1, v2, check.attributes = F)

  v3 <- parse_single_alignment(c("1010", "0010", "0110"))
  v4 <- matrix(c(1,0,0,0,0,1,1,1,1,0,0,0), ncol = 4, nrow = 3)
  expect_equal(v3, v4, check.attributes = F)

  # v5 <- get_alignment_data(c("1010", "bananas", "0010"))
  # expect_equal(v2, v5, check.attributes = F)

})

test_that("extract position commands", {

  list1 <- get_pos_data(c("positions: 0.1 0.2 0.3",
                          "random -r 3.4 20001",
                          "positions: 0.7 0.6"))
  list2 <- list(c(0.1, 0.2, 0.3), c(0.7, 0.6))
  expect_equal(list1, list2)

})

test_that("extract rho commands", {

  vec1 <- get_rho_data(c("cat -t 0.2 -r 1.3 20001",
                         "random -t 0.7 -r 3.4 20001"))
  vec2 <- matrix(c(0.2, 0.7, 1.3, 3.4), ncol = 2)
  expect_equal(vec1, vec2)

})

test_that("splitting train/test data commands", {

  expect_equal(get_split_index(0.8, 1999), c(1, 1600, 1601, 1800, 1801, 1999))
  expect_equal(get_split_index(0.92, 156275), c(1, 143773, 143774, 150024, 150025, 156275))

})
